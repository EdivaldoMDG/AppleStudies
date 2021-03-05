//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Edivaldo Goncalves on 3/4/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
