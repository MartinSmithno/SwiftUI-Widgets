import SwiftUI

struct DateAndTimePickerView: View {
    @State private var date = Date()
    @State private var time = Date()
    @State private var wheelDateIsVisible: Bool = false
    @State private var graphicalDateIsVisible: Bool = false
    @State private var compactDateIsVisible: Bool = false
    @State private var dateChoosen: String = ""
    @State private var timeChoosen: String = ""
    
    var body: some View {
        
        VStack(){
            
            Text("Date and Time Picker").bold().foregroundColor(.red)
            HStack(spacing:0){
                Text("Date :").foregroundColor(.green)
                TextField("Click here...",text: $dateChoosen).textFieldStyle(.roundedBorder)
                Text("Time :").foregroundColor(.blue)
                TextField("Click here...",text: $timeChoosen).textFieldStyle(.plain)
            }.padding(12)
            
            HStack{
                Button("Wheel", action : {
                    wheelDateIsVisible = true
                }).buttonStyle(.bordered)
                
                Button("Graphical", action : {
                     graphicalDateIsVisible = true
                }).buttonStyle(.borderedProminent)
                
                Button("Compact", action : {
                    compactDateIsVisible = true
                }).buttonStyle(.borderless)
                Button("Closen DatePicker", action : {
                    wheelDateIsVisible = false
                    graphicalDateIsVisible = false
                    compactDateIsVisible = false
                }).buttonStyle(.plain)
            }
            
            if wheelDateIsVisible {
                DatePicker("Choose a date", selection: $date, displayedComponents: .date).datePickerStyle(.wheel)
                DatePicker("Choose a time", selection: $time, displayedComponents: .hourAndMinute).datePickerStyle(.wheel)
            }
            if graphicalDateIsVisible {
                DatePicker("Choose a date", selection: $date, displayedComponents: .date).datePickerStyle(.graphical)
                DatePicker("Choose a time", selection: $time, displayedComponents: .hourAndMinute).datePickerStyle(.graphical)
                Text("TimePicker does not have a graphical style!").foregroundColor(.red).italic()
            }
            if compactDateIsVisible {
                DatePicker("Choose a date", selection: $date, displayedComponents: .date).datePickerStyle(.compact)
                DatePicker("Choose a time", selection: $time, displayedComponents: .hourAndMinute).datePickerStyle(.compact)
            }
            
            Button("Approve Date", action: {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM/dd/yyyy"
                self.dateChoosen = dateFormatter.string(from: self.date)
                
                let timeFormatter = DateFormatter()
                timeFormatter.dateFormat = "hh:mm"
                self.timeChoosen = timeFormatter.string(from: self.time)

                    wheelDateIsVisible = false
                    graphicalDateIsVisible = false
                    compactDateIsVisible = false
            }).buttonStyle(.borderedProminent)
        }.navigationTitle("Date & Time Pickers")
    }
}
