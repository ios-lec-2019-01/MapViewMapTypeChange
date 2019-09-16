//
//  ViewController.swift
//  MapView01
//
//  Created by 김종현 on 15/09/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // standard, satellite, hybird
        mapView.mapType = MKMapType.satellite
        
        // DIT  35.166060, 129.072522
        let location = CLLocationCoordinate2D(latitude:
            35.166060, longitude: 129.072522)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
//        let region = MKCoordinateRegion(center: location, latitudinalMeters: 300, longitudinalMeters: 300)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "동의과학대학교"
        annotation.subtitle = "DIT"
        mapView.addAnnotation(annotation)
    }

    @IBAction func standardMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelliteMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    @IBAction func hybridMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
}

