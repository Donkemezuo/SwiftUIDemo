//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Donkemezuo Raymond Tariladou on 9/25/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
              // This is the method we will put the code to update the UIKit view
          
          let coordinates = CLLocationCoordinate2D(latitude: 33.8734, longitude: -115.9010)
          let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
          let region = MKCoordinateRegion(center: coordinates, span: span)
          
          uiView.setRegion(region, animated: true)
    }
    // In order to combine SwiftUI with UIKit view, we conform to the UIViewRepresentable protocol instead of just the View protocol
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }

    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
