//
//  HomeView.swift
//  PlaceSound
//
//  Created by 박성민, 박정선 on 2022/11/29.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    @Published var location: CLLocationCoordinate2D?

    override init() {
        super.init()
        manager.delegate = self
    }

    func requestLocation() {
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager,
                         didFailWithError error: Error) { }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
}

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}

struct HomeView: View {
    // modal sheet를 보여줄지를 결정하는 상태 프로퍼티
    @StateObject var locationManager = LocationManager()
    @State private var showingAddMarker = false
    @State private var searchText = ""
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.729675,
                                       longitude: -73.996925),
        span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
    @State var tracking: MapUserTrackingMode = .follow
    let annotations = [
        City(name: "NYU1", coordinate: CLLocationCoordinate2D(latitude: 40.729675, longitude: -73.996925)),
        City(name: "NYU2", coordinate: CLLocationCoordinate2D(latitude: 40.72900, longitude: -73.997000)),
        City(name: "NYU3", coordinate: CLLocationCoordinate2D(latitude: 40.729300, longitude: -73.996000))
    ]
    
    var body: some View {
        //        VStack {
        NavigationStack {
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true,
                    userTrackingMode: $tracking, annotationItems: annotations) { item in
                    //                MapMarker(coordinate: $0.coordinate, tint: .purple)
                    // Custom mapmarker 사용을 위하여 MapMarker를 MapAnnotation으로 대체
                    MapAnnotation(coordinate: item.coordinate,  content: {
                        PlaceAnnotationView(title: item.name)
                    })
                }
                    .gesture(DragGesture())
                    .onLongPressGesture {
                        // 길게 누르는 제스쳐를 했을 때 모달 시트가 보이도록 toggle
                        showingAddMarker.toggle()
                    }
                    .sheet(isPresented: $showingAddMarker, content: {
                        AddPlaceSound()
                            .presentationDetents([.fraction(0.5), .fraction(1)])
                    })
                    .ignoresSafeArea()
//                            Text("")
//                                .searchable(text: $searchText, prompt: "Search Place Sound") 
                
                if let location = locationManager.location {
                    Text("Your location: \(location.latitude), \(location.longitude)")
                }
                
                LocationButton {
                    locationManager.requestLocation()
                }
                .frame(height: 10)
                .labelStyle(.iconOnly)
                .tint(.placeSoundPurple)
                .foregroundColor(.white)
                .offset(x: 150, y: 270)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
