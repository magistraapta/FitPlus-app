//
//  CalendarItem.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct CalendarItemModel: Identifiable{
    var id = UUID()
    var date: Int
    var day: String
}

class CalendarItemViewModel: ObservableObject {
    @Published var arrayWeek: [CalendarItemModel] = []
    
    
    init(){
        getData()
    }
    
    func getData(){
        let day1 = CalendarItemModel(date: 7, day: "Mon")
        let day2 = CalendarItemModel(date: 8, day: "Tue")
        let day3 = CalendarItemModel(date: 9, day: "Wed")
        let day4 = CalendarItemModel(date: 10, day: "Thu")
        let day5 = CalendarItemModel(date: 11, day: "Fri")
        let day6 = CalendarItemModel(date: 12, day: "Sat")
        let day7 = CalendarItemModel(date: 13, day: "Sun")
        
        
        arrayWeek.append(day1)
        arrayWeek.append(day2)
        arrayWeek.append(day3)
        arrayWeek.append(day4)
        arrayWeek.append(day5)
        arrayWeek.append(day6)
        arrayWeek.append(day7)
    }
}

struct CalendarItem: View {
    
    @State var selectedItem: Bool = true
    @State var date: Int
    @State var day: String
    
    var body: some View {
        VStack(spacing: 8){
            Text("\(date)")
            Text("\(day)")
                .padding(.horizontal)
        }
        .foregroundColor(selectedItem ? .white : .secondary)
        .padding(.vertical, 16)
        .frame(maxWidth: 80)
        .background(selectedItem ? .black : .clear)
        .cornerRadius(10)
        
    }
}

struct CalendarItem_Previews: PreviewProvider {
    static var previews: some View {
        CalendarItem(date: 7, day: "Wed")
    }
}
