//
//  Mapview.swift
//  Landmarks
//
//  Created by George Mapaya on 2022-06-15.
//

import MapKit
import SwiftUI

struct Mapview: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        Mapview(coordinate: landmarks[0].locationCoordinate)
    }
}
