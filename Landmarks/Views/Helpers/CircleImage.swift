//
//  CircleImage.swift
//  Landmarks
//
//  Created by Edivaldo Goncalves on 3/5/21.
//

import SwiftUI

struct CircleImage: View {
  
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray,lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
