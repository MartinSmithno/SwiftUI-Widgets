import SwiftUI

struct ToggleView: View {
    
    @State private var textIsVisible: Bool = false
    @State private var appleIsVisible: Bool = false
    @State private var textOnButton: String = "Show/Hide Text"
    @State private var text: String = "If you click on the button, text will be disappear"
    
    var body: some View {
        
        VStack() {
            
            Toggle(isOn: $textIsVisible){
                Text(textOnButton)
            }.toggleStyle(.button)
            
            if textIsVisible {
                Text(text).foregroundColor(.orange).padding(.bottom, 30)
            }
            
            Toggle(isOn: $appleIsVisible){
                Text("Show 🍏").foregroundColor(.yellow).bold()
            }.toggleStyle(.switch).padding(16)
            
            if appleIsVisible {
                Text("🍏 is here!").foregroundColor(.green)
            }
        }.navigationTitle("Toggles")
    }
}
