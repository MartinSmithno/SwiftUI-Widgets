//
//  ContentView.swift
//  SwiftUI-Widgets
//
//  Created by Martin Smith on 25/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button(action: {
            print("Clicked")
        }, label:{
            Text("Click here!")
        })
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
