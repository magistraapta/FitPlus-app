//
//  CalendarWeek.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct CalendarWeek: View {
    
    @StateObject var weekViewModel = CalendarItemViewModel()
    
    var body: some View {
        HStack(spacing: 10){
            ForEach(weekViewModel.arrayWeek){item in
                CalendarItem(date: item.date, day: item.day)
            }
        }
    }
}

struct CalendarWeek_Previews: PreviewProvider {
    static var previews: some View {
        CalendarWeek()
    }
}
