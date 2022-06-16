//
//  CategoryRow.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-16.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink(value: landmark) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
                .navigationDestination(for: Landmark.self) { landmark in
                    LandmarkDetail(landmark: landmark)
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
    }
}
