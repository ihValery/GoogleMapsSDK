//
//  AppDelegate.swift
//  GoogleMapsSDK
//
//  Created by Валерий Игнатьев on 20.10.2021.
//

import UIKit
import GoogleMaps
import GooglePlaces

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey(APIkey)
        GMSPlacesClient.provideAPIKey(APIkey)
        return true
    }
}
