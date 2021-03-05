//
//  Landmark.swift
//  Landmarks
//
//  Created by Edivaldo Goncalves on 3/5/21.
//

import Foundation
import SwiftUI
import CoreLocation

// This model will allow us to pass data to the fiels specified bellow

struct Landmark : Hashable, Codable, Identifiable {
   
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    //It allow us to pass images that comes from the data the imagename read the name from the images and displayed
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //compute the locationCoordinate property that allows us interact with the mapKit
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    //Coordinates property structure using nested Coordinates that reflects the data from the JSON
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
        
    }
    
}
