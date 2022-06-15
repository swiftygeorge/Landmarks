//
//  LandmarkList.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationStack {
            List(landmarks) { landmark in
                NavigationLink(value: landmark) {
                    LandmarkRow(landmark: landmark)
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
    }
}
