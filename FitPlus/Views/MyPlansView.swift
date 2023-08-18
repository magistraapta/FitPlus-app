//
//  MyPlansView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI
import Foundation

struct MyPlansView: View {
   
    @StateObject var calendarVM = CalendarWeekViewModel()
    var userWorkout = [
        WorkoutModel(name: "Beginner Workout", description: "this beginner workout is perfect for start your workout as a beginner", image: "wo1", duration: 15)
    
    ]
    
    var body: some View {
        NavigationStack{
            
            VStack(spacing: 16){
                
                CalendarComponent()
                                
                HStack{
                    Text("Your Plans")
                        .font(.title).bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                
                

                
                PlansComponent()
                Spacer()
//
                
            }
            .navigationTitle("Today")
        }
        

    }
}

extension MyPlansView{
    struct PlansComponent: View {
        
        var body: some View{
            ZStack(alignment: .bottomLeading){
                Image("wo1")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 361,height: 150)
                    .overlay{
                        Rectangle()
                            .opacity(0.2)
                    }
                Text("Beginner workout")
                    .font(.title2)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
            }
        }
    }
}

struct MyPlansView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlansView()
    }
}
