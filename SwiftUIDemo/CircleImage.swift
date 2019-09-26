//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Donkemezuo Raymond Tariladou on 9/25/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 2))// this creates a circle imageView with a border width of 2 and border color of gray
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
