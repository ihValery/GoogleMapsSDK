//
//  ContentView.swift
//  GoogleMapsSDK
//
//  Created by Валерий Игнатьев on 20.10.2021.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    var body: some View {
        VStack {
            GoogleMapsView()
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
