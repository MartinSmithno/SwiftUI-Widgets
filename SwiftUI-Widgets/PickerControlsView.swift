import SwiftUI

struct PickerControlsView: View {
    
    @State private var selection1: Int = 0
    @State private var selection2: String = ""
    @State private var selection3: String = ""
    
    var body: some View {
        
        VStack(){
            
            Text("Segmented Control").bold().foregroundColor(.red)
            Picker("Choose", selection: $selection1){
                Text("Quarter").tag(15)
                Text("Half").tag(30)
                Text("Three Quarter").tag(45)
                Text("One").tag(60)
            }.pickerStyle(.segmented)
            Text("Result: \(selection1)").padding(.bottom, 40)
            
            Text("Wheel Control").bold().foregroundColor(.red)
            Picker("Choose", selection: $selection2){
                Text("Bicycle").tag("Bianchi")
                Text("Car").tag("Volvo")
                Text("Truck").tag("Scania")
            }.pickerStyle(.wheel)
            Text("Result: \(selection2)").padding(.bottom, 40)
            
            Text("Menu Control").bold().foregroundColor(.red)
            Picker("Choose", selection: $selection3){
                Text("January").tag("January")
                Text("February").tag("February")
                Text("March").tag("March")
            }.pickerStyle(.menu)
            Text("Result: \(selection3)").padding(.bottom, 40)
            
        }.navigationTitle("Pickers")
    }
}
