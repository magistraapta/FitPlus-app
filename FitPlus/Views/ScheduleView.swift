//
//  ScheduleView.swift
//  FitPlus
//
//  Created by magistra aptam on 18/08/23.
//

import SwiftUI



struct ScheduleView: View {
    @EnvironmentObject var pageVM : PageViewModel
    @Binding var openSheet:Bool
    let day = [
        "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack (alignment: .leading, spacing: 16){
                    Spacer()
                    Text("Select your schedule")
                        .font(.title2).bold()
                    HStack{
                        ForEach(day, id: \.self){ item in
                            DayItem(day: item)
                        }
                    }
                    Spacer()

                }
                            
                Spacer()
                
                Button {
                    openSheet = false
                    pageVM.selectedIndex = 0
                } label: {
                    Text("Save")
                        .frame(width: 361, height: 40)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(10)
                }
            }
        }

    }
}

extension ScheduleView{
    struct DayItem: View{
        @State var isSelected: Bool = false
        @State var day: String
        var body: some View{
            ZStack{
                Rectangle()
                    .scaledToFit()
                    .frame(width: 48)
                    .cornerRadius(10)
                    .foregroundColor(isSelected ? .black : .gray)
                    
                Text("\(day)")
                    .foregroundColor(.white)
                
            }
            .onTapGesture {
                isSelected.toggle()
            }
            
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(openSheet: .constant(false))
    }
}
