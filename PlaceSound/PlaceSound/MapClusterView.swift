//
//  MapClusterView.swift
//  PlaceSound
//
//  Created by TEDDY on 12/2/22.
//

// This is a reference that shows how to cluster map markers. 

//import SwiftUI
//import MapKit
//
//struct MapView: UIViewRepresentable {
//
//
//var forDisplay = data
//@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.64422936785126, longitude: 142.39329541313924),
//    span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 2)
//)
//
//
//class Coordinator: NSObject, MKMapViewDelegate {
//
//    var parent: MapView
//
//    init(_ parent: MapView) {
//        self.parent = parent
//    }
//
///// showing annotation on the map
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        guard let annotation = annotation as? LandmarkAnnotation else { return nil }
//        return AnnotationView(annotation: annotation, reuseIdentifier: AnnotationView.ReuseID)
//    }
//
//}
//
//
//
//func makeCoordinator() -> Coordinator {
//    MapView.Coordinator(self)
//}
//
//
//func makeUIView(context: Context) -> MKMapView {
//    ///  creating a map
//    let view = MKMapView()
//    /// connecting delegate with the map
//    view.delegate = context.coordinator
//    view.setRegion(region, animated: false)
//    view.mapType = .standard
//
//    for points in forDisplay {
//        let annotation = LandmarkAnnotation(coordinate: points.coordinate)
//        view.addAnnotation(annotation)
//    }
//
//
//    return view
//
//}
//
//func updateUIView(_ uiView: MKMapView, context: Context) {
//
//}
//}
//
//struct SampleData: Identifiable {
//var id = UUID()
//var latitude: Double
//var longitude: Double
//var coordinate: CLLocationCoordinate2D {
//CLLocationCoordinate2D(
//    latitude: latitude,
//    longitude: longitude)
// }
//}
//
//var data = [
//SampleData(latitude: 43.70564024126748, longitude: 142.37968945214223),
//SampleData(latitude: 43.81257464206404, longitude: 142.82112322464369),
//SampleData(latitude: 43.38416585162576, longitude: 141.7252598737476),
//SampleData(latitude: 45.29168643283501, longitude: 141.95286751470724),
//SampleData(latitude: 45.49261392585982, longitude: 141.9343973160499),
//SampleData(latitude: 44.69825427301145, longitude: 141.91227845284203)
//]
//
//
//class LandmarkAnnotation: NSObject, MKAnnotation {
//let coordinate: CLLocationCoordinate2D
//init(
//     coordinate: CLLocationCoordinate2D
//) {
//    self.coordinate = coordinate
//    super.init()
//}
//}
//
//
///// here posible to customize annotation view
//let clusterID = "clustering"
//
//class AnnotationView: MKMarkerAnnotationView {
//
//static let ReuseID = "cultureAnnotation"
//
///// setting the key for clustering annotations
//override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
//    super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
//    clusteringIdentifier = clusterID
//}
//
//
//required init?(coder aDecoder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//}
//
//override func prepareForDisplay() {
//    super.prepareForDisplay()
//    displayPriority = .defaultLow
// }
//}
//
//struct MapClusterView: View {
//
//
//var body: some View {
//HomeView()
//    .edgesIgnoringSafeArea(.all)
// }
//}
//struct MapClusterView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapClusterView()
//    }
//}
