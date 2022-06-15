//
//  LandmarkList.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-15.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavouritesOnly = false
    @State private var path: [Landmark] = []
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter({ (!showFavouritesOnly || $0.isFavorite) })
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Toggle("Favourites Only", isOn: $showFavouritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(value: landmark) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .navigationDestination(for: Landmark.self) { landmark in
                LandmarkDetail(landmark: landmark)
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
