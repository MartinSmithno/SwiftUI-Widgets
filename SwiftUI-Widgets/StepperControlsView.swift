import SwiftUI

struct StepperControlsView: View {
    
    @State private var value1: Int = 0
    @State private var value2: Int = 0
    @State private var value3: Int = 0
    
    var body: some View {
        
        VStack() {
            
            Stepper("Decrement & Increment", value: $value1, in: 0...10)
            Text("Result: \(value1)").padding(.bottom, 40)
            
            Stepper("Decrement & Increment without range", onIncrement: { self.value2 += 2 }, onDecrement: { self.value2 -= 1 }).foregroundColor(.blue).font(.footnote)
            Text("Result: \(value2)").padding(.bottom, 40)
            
            Stepper("Decrement & Increment with step&range", value: $value3, in: -10...11, step: 2).foregroundColor(.green).font(.system(size: 14, weight: .bold, design: .rounded))
            Text("Result: \(value3)").padding(.bottom, 40)
            
        }.navigationTitle("Stepper")
    }
}
