//
//  MonthlyCalendarView.swift
//  CustomCalendar
//
//  Created by Marina Martin on 30/04/24.
//

import SwiftUI

struct MonthlyCalendarView: View {
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    //let days = 1..<32
    @State private var date = Date.now
    @State private var days: [Date] = []
    
    var body: some View {
        VStack{
            LazyVGrid(columns: columns) {
//                for(date.firstWeekDay, id: \.self){ day in
//                    Text("")
//                }
                for i in 0..<date.firstWeekday {
                    Text("")
                }
                
                ForEach(days, id: \.self){ day in
                    Text(day.formatted(.dateTime.day()))
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 40)
                        .background(
                            Circle()
                                .foregroundStyle(
                                    .gray.opacity(0.3)
                                )
                                
                        )
                }
            }.padding()
                .onAppear{
                    days = date.calendarDisplay
                }
                .onChange(of: date){
                    days = date.calendarDisplay
                }
        }
    }
}

#Preview {
    MonthlyCalendarView()
}
