//
//  DateFormater.swift
//  CustomCalendar
//
//  Created by Marina Martin on 30/04/24.
//

import Foundation

extension Date{
    var startofMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
        //Devolve o primeiro dia de cada mês
    }
    
    var endOfMonth: Date{
        let lastDay = Calendar.current.dateInterval(of: .month, for: self)!.end
        return Calendar.current.date(byAdding: .day, value: -1, to: lastDay)!
        //Devolve o último dia de cada mês
    }
    
//    var startOfPreviousMonth: Date{
//        let daiInPreviousMonth = Calendar.current.date(byAdding: .month, value: -1, to: self)!
//        return daiInPreviousMonth.startofMonth
//        //Devolve o primeiro dia do último mês
//    }
    
    var numberOfDaysInMonth: Int{
        Calendar.current.component(.day, from: endOfMonth)
        //Devolve número de dias de um mês, a partir do número que existe em endOfMonth
    }
    
    var firstWeekDay: Int{
        //número do dia da semana que o mês inicia
        return Calendar.current.component(.weekday, from: startofMonth)
    }
    
    var calendarDisplay: [Date]{
        var days: [Date] = []
        for daySet in 0..<numberOfDaysInMonth{
            let newDay = Calendar.current.date(byAdding: .day, value: daySet, to: startofMonth)
            days.append(newDay!)
        }
        
        return days
    }
}
