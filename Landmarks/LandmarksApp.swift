//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-15.
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
