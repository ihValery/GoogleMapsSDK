//
//  GoogleMapsView.swift
//  GoogleMapsSDK
//
//  Created by Валерий Игнатьев on 20.10.2021.
//

import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: 53.85807006, longitude: 27.46903896, zoom: 14.0)
//        let mapID = GMSMapID(identifier: "340338807043cb43")
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
//        let mapView = GMSMapView.init(frame: CGRect.zero, mapID: mapID, camera: camera)

        do {
            if let styleURL = Bundle.main.url(forResource: "mapStyleNight", withExtension: "json") {
                mapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
            } else {
                NSLog("Файл mapStyleNight.json не найден")
            }
        } catch {
            NSLog("Не удалось загрузить один или несколько стилей карты. \(error)")
        }
        
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
    }
}
