//
//  CalendarBasics.swift
//  CustomCalendar
//
//  Created by Laura C. Balbachan dos Santos on 30/04/24.
//

import SwiftUI

struct CalendarBasics: View {
    // Não consegui fazer ele ser semanal 👍
    let days = 1..<31
    let daysOfWeek: [String] = ["S", "T", "Q", "Q", "S", "S", "D"]
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        // Dias da Semana
        HStack {
            ForEach(daysOfWeek.indices, id: \.self) { index in
                Text(daysOfWeek[index])
                    .frame(maxWidth: .infinity)
            }
        }
        
        // Dias do mês em uma semana
        LazyVGrid(columns: columns) {
            ForEach(days, id: \.self) { day in
                Text("\(day)")
            }
        }
    }
}

#Preview {
    CalendarBasics()
}
