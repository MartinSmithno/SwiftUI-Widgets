//
//  ContentView.swift
//  SwiftUI-Widgets
//
//  Created by Martin Smith on 25/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var textInTextField: String = ""
    @State private var isEditable: Bool = false
    var body: some View {
        
        //Text
        Text("Lorem Ipsum")
            .font(.title)
            .foregroundColor(.orange)
            .background(.gray)
        
        //Button
        Button(action: {
            print("Clicked")
        }, label:{
            Text("Click here!").font(.title2).foregroundColor(.green)
        }).buttonStyle(.bordered)
        
        //TextField
        TextField("roundedBorderStyle", text: $textInTextField).padding().textFieldStyle(.roundedBorder)
        TextField("plainStyle", text: $textInTextField).padding().textFieldStyle(.plain)
        HStack(spacing: 0){
            SecureField("secureField AutomaticStyle", text: $textInTextField).padding().textFieldStyle(.automatic)
            Button(action: {
                print("Clicked")
            }, label:{
                Text("Enter").font(.body).foregroundColor(.green).frame(maxWidth: .infinity, maxHeight: .infinity)
            }).buttonStyle(.borderedProminent)
        }.frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
        
        
        //Toggle
        Toggle(isOn: $isEditable, label: <#T##() -> _#>)
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
