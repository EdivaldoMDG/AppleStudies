//
//  ContentView.swift
//  Landmarks
//
//  Created by Edivaldo Goncalves on 3/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
