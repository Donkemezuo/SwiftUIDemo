//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Donkemezuo Raymond Tariladou on 9/25/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import SwiftUI

struct ContentView: View { // This Content View describes a single View in our app
    var body: some View { // This describes all the contents in our layout
        VStack { // Embedding all tree views in our content view
            MapView().frame(height: 300).edgesIgnoringSafeArea(.all)
            // We are adding our mapview to our Vertical Stack
            // This gives our MapView an horizontal height
            CircleImage()
                // We are adding our circular imageView
            // Offsetting it by -130 --- this will push up our circular image up by 130
                .offset(y: -130)
                .padding(.bottom, -120)
        // This inner VStack is adding the textViews
        VStack(alignment: .leading){ // This is a vertical stack view which holds all other views within it's scope
            
        Text("Hello World").font(.title) // This is a textView
                //TextField("This is a textField")
            HStack { // This is an horizontal stack view which holds all the views within it's scope
                Text("Joshua Tree National Park").font(.custom("HelveticaNeue-Bold", size: 14)).foregroundColor(.red)
                Spacer() // This will create spacing between text1 and text2
                Text("San Francisco, California").font(.custom("HelveticaNeue-Bold", size: 14)).foregroundColor(.white)
            }
            
            
                        
        }.padding()

            // This spacer is for the root VStack which holds our mapview, circular imageView and textViews
            Spacer()
    }
        
        .background(Color.gray.opacity(0.8))
    }
}

struct ContentView_Previews: PreviewProvider { // The preview provide protocol. This is merely to provide the preview on the right hand side
    static var previews: some View {
        ContentView()
        
    }
}
