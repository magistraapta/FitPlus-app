//
//  CalendarComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import SwiftUI

struct CalendarComponent: View {
    
    @StateObject var calendarVM = CalendarWeekViewModel()
    @EnvironmentObject var controller: PageViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            Text(Date().formatted(date: .abbreviated, time: .omitted))
                .font(.title2).bold()
                .foregroundColor(.secondary)
            HStack{
                ForEach(calendarVM.currentWeek, id: \.self){ day in
                    VStack(spacing: 10){
                        Text(calendarVM.extractDate(date: day, format: "dd"))
                            .bold()
                        Text(calendarVM.extractDate(date: day, format: "EEE"))
                        
                        
                        Circle()
                            .fill(controller.isWorkoutDone ? .green : .red)
                            .frame(width: 8)
                            .opacity(calendarVM.isToday(date: day) ? 1 : 0)
                    }
                    .foregroundColor(calendarVM.isToday(date: day) ? .white : .black)
                    .frame(width: 45, height: 90)
                    .background{
                        ZStack{
                            if calendarVM.isToday(date: day){
                                Capsule()
                                    .fill(.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct CalendarComponent_Previews: PreviewProvider {
    static var previews: some View {
        CalendarComponent().environmentObject(PageViewModel())
    }
}
