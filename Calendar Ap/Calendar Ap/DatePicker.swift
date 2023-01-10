//
//  SwiftUIView.swift
//  Calendar Ap
//
//  Created by Rohit Deshmukh on 1/10/23.
//

import SwiftUI




struct DatePicker: View {
    @Binding var currentDate: Date

    @State var currentMonth: Int = 0
    
    
    var body: some View {
        let days: [String] = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        
        
        VStack (spacing: 30) {
            HStack (spacing: 10){
                Text("January").font(.title.bold())
                Text("2023").font(.title.bold())
                
                Spacer(minLength: 0)
                
                Button {
                    
                } label: {
                    Image(systemName: "calendar")
                        .foregroundColor(Color.red).font(.largeTitle)
                }
                
            }
            
            HStack(spacing: 0){
                ForEach(days, id: \.self){ day in
                    Text(day).font(.callout).fontWeight(.semibold).frame(maxWidth: .infinity)
                }
            }
            
            let columns = Array (repeating: GridItem(.flexible()), count: 7)
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(extractDate()){ value in
                    Text("\(value.day)").font(.title3.bold())
                }
            }
        }.padding()
    }
    
    func extractDate() -> [DateValue]{
        
        let calendar = Calendar.current
        
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return []
        }
        
        return currentMonth.getAllDates().compactMap() { date -> DateValue in
            
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date)
            
            
        }
        
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Date {
    func getAllDates() -> [Date] {
        
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        var range = calendar.range(of: .day, in: .month, for: startDate)!
        range.removeLast()
        
        return range.compactMap { day -> Date in
            
            return calendar.date(byAdding: .day, value: day == 1 ? 0: day, to: self)!
        }
    }
}
