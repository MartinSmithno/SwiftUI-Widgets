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
                
                NavigationLink("Toggle", destination: ToggleView()).foregroundColor(.gray)
                NavigationLink("Picker", destination: PickerControlsView()).foregroundColor(.red)
                NavigationLink("Stepper Control", destination: StepperControlsView()).foregroundColor(.orange)
                NavigationLink("Slider Control", destination: SliderControlsView()).foregroundColor(.yellow)
                NavigationLink("Date & Time Picker", destination: DateAndTimePickerView()).foregroundColor(.green)
                
            }.navigationTitle("SwiftUI Widgets")
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
