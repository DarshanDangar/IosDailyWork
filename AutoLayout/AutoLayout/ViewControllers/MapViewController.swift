//
//  MapViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 07/06/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var mapView: MKMapView!
    
    // MARK: Variables
    var locationManager = CLLocationManager()
    var initialLocation = [CLLocation(latitude: 22.018097, longitude: 71.057747), CLLocation(latitude: 22.006092, longitude: 71.048646), CLLocation(latitude: 22.047601, longitude: 71.025311)]
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapAndClLocation()
    }
    
    // MARK: setup MapView And ClLocation
    private func setupMapAndClLocation() {
        checkLocationService()
        setRegion()
        setBoundary()
        setAnotation()
        mapView.delegate = self
        toolbar.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
    }
    
    // MARK: Action Methods
    @IBAction func onTapRoute(_ sender: Any) {
        showRouteOnMap(pickupCoordinate: initialLocation[0].coordinate, destinationCoordinate: initialLocation[1].coordinate)
        toolbar.isHidden = true
    }
    
    // MARK: check Location Service isEnable
    private func checkLocationService() {
        if CLLocationManager.locationServicesEnabled() {
            checkPermisioonAuth()
        }
    }
    
    // MARK: check Permission
    private func checkPermisioonAuth() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            mapView.showsUserLocation = true
            locationManager.startUpdatingLocation()
            break
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            locationManager.startUpdatingLocation()
            break
        case .denied:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            mapView.showsUserLocation = true
            break
        default:
            break
        }
    }
    
    // MARK: Set Region
    private func setRegion() {
        let region = MKCoordinateRegion(center: initialLocation[0].coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
    // MARK: Set Boundary
    private func setBoundary() {
        let region = MKCoordinateRegion(center: initialLocation[0].coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        mapView.setCameraZoomRange(MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 20000), animated: true)
    }
    
    // MARK: Set Anotation
    private func setAnotation() {
        let anotation = MKPointAnnotation()
        anotation.title = "Farm House"
        anotation.coordinate = CLLocationCoordinate2D(latitude: initialLocation[0].coordinate.latitude, longitude: initialLocation[0].coordinate.longitude)
        mapView.addAnnotation(anotation)
        let anotation2 = MKPointAnnotation()
        anotation2.title = "Home"
        anotation2.coordinate = CLLocationCoordinate2D(latitude: initialLocation[1].coordinate.latitude, longitude: initialLocation[1].coordinate.longitude)
        mapView.addAnnotation(anotation2)
    }
    
    // MARK: Update Location
    private func updateLoc(location: [CLLocation]) {
        let anotation = MKPointAnnotation()
        anotation.title = "Ahir Farm"
        anotation.coordinate = CLLocationCoordinate2D(latitude: location[0].coordinate.latitude, longitude: location[0].coordinate.longitude)
        mapView.addAnnotation(anotation)
    }
    
    // MARK: Root of Initial and Destination point
    private func showRouteOnMap(pickupCoordinate: CLLocationCoordinate2D, destinationCoordinate: CLLocationCoordinate2D) {
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: pickupCoordinate, addressDictionary: nil))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: destinationCoordinate, addressDictionary: nil))
        request.requestsAlternateRoutes = true
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        
        directions.calculate { [unowned self] response, error in
            guard let unwrappedResponse = response else { return }
            
            //for getting just one route
            if let route = unwrappedResponse.routes.first {
                
                //show on map
                self.mapView.addOverlay(route.polyline)
                //set the map area to show the route
                self.mapView.setVisibleMapRect(route.polyline.boundingMapRect, edgePadding: UIEdgeInsets.init(top: 20.0, left: 10.0, bottom: 50.0, right: 10.0), animated: true)
            }
        }
    }
    
}

// MARK: MapView Delegates
extension MapViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 5.0
        return renderer
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        print("didAdd")
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("didSelect: MKAnnotationView")
    }
    
    func mapView(_ mapView: MKMapView, didDeselect annotation: MKAnnotation) {
        print("didDeSelect: MKAnnotationView")
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        print("didUpdate: userLocation")
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationView.DragState, fromOldState oldState: MKAnnotationView.DragState) {
        print("didChange : fromOldState")
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        print("mapViewDidFinishLoadingMap")
    }
    
    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        print("mapViewDidChangeVisibleRegion")
    }
    
    func mapView(_ mapView: MKMapView, didSelect annotation: MKAnnotation) {
        print("didSelect: Select when touch")
    }
    
}

// MARK: ClLocation manager Delegates
extension MapViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        print("Location Updated")
        updateLoc(location: locations)
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        print("didVisit")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("didExitRegion")
    }
    
}

// MARK: ToolBar Delegates
extension MapViewController: UIToolbarDelegate {}
