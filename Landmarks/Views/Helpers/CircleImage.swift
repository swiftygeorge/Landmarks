//
//  CircleImage.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-15.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
