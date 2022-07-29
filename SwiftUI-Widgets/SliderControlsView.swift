import SwiftUI

struct SliderControlsView: View {
    
    @State private var value1: Double = 0.0
    @State private var age: Double = 0
    @State private var image: String = "hand.thumbsup"
    
    var body: some View {
        
        VStack(){
            
            Text("Basic Slider").bold().foregroundColor(.red)
            Slider(value: $value1, in: -10...10, step: 0.5).padding(12)
            Text("Result: \(String(format: "%.2f",value1))").padding(.bottom,60)
            
            Text("Slider with labels").bold().foregroundColor(.blue)
            Slider(
                value: $age,
                in: 0...100,
                step: 1,
                onEditingChanged: { isVisual in if isVisual{ image = "questionmark" }else { image = "hand.thumbsup" } },
                minimumValueLabel: Text("👶"),
                maximumValueLabel: Text("👨‍🦳"),
                label: {Text("Age")}).padding(10)
            HStack(spacing:12){
                Text("Result: \(Int(age))")
                Image(systemName: image)
            }
        }.navigationTitle("Sliders")
    }
}
