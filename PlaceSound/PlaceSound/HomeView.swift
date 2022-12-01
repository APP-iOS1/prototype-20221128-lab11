//
//  HomeView.swift
//  PlaceSound
//
//  Created by 박성민, 박정선 on 2022/11/29.
//

import SwiftUI
import MapKit

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
    @State private var showingAddMarker = false
    
    @State private var searchText = ""
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.5665,
                                       longitude: 126.9780),
        span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
    
    // 주소를 haymarket으로
    let annotations = [
        City(name: "Seoul", coordinate: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780)),
        City(name: "Seoul2", coordinate: CLLocationCoordinate2D(latitude: 37.5669, longitude: 126.9788)),
        City(name: "Seoul3", coordinate: CLLocationCoordinate2D(latitude: 37.5660, longitude: 126.9760)),
    ]
    
    var body: some View {

        //        NavigationStack {
//        ZStack {
            Map(coordinateRegion: $region, annotationItems: annotations) { item in
//                MapMarker(coordinate: $0.coordinate, tint: .purple)
                // Custom mapmarker 사용을 위하여 MapMarker를 MapAnnotation으로 대체
                MapAnnotation(coordinate: item.coordinate, content: {
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
//            Text("")
//                .searchable(text: $searchText, prompt: "Search Place Sound")
//        }

        //        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
