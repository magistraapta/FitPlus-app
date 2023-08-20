//
//  CalendarWeekViewModel.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import Foundation

class CalendarWeekViewModel: ObservableObject {
    
    @Published var currentWeek: [Date] = []
    
    @Published var currentDay: Date = Date()
    init(){
        fetchWeek()
    }
    
    func fetchWeek(){
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {return}
        
        (0...6).forEach { day in
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstWeekDay){
                currentWeek.append(weekday)
            }
        }
    }
    
    func extractDate(date: Date, format:String) -> String{
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    func isToday(date: Date) -> Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(currentDay, inSameDayAs: date)
    }
}
