//
//  ModelData.swift
//  Landmarks
//
//  Created by Edivaldo Goncalves on 3/5/21.
//

import Foundation
import Combine
 
final class ModelData: ObservableObject{
   @Published  var landmarks : [Landmark] = load("landmarkData.json")

}

//This file allow us to load to fetch data from the JSON data  with a given name from the apps main bundle


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}
