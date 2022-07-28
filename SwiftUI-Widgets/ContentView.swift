//
//  ContentView.swift
//  SwiftUI-Widgets
//
//  Created by Martin Smith on 25/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
    
        NavigationView {
            VStack (spacing:30) {
                
                NavigationLink("Picker", destination: PickerControlsView()).foregroundColor(.red)
                NavigationLink("Stepper", destination: StepperControlsView()).foregroundColor(.orange)
                NavigationLink("Picker", destination: PickerControlsView()).foregroundColor(.yellow)
                NavigationLink("Picker", destination: PickerControlsView()).foregroundColor(.green)
                
            }.navigationTitle("SwiftUI Widgets")
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
