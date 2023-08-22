//
//  MyPlansView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI
import Foundation

struct MyPlansView: View {
    @EnvironmentObject var pageVM : PageViewModel
    @StateObject var calendarVM = CalendarWeekViewModel()
    var userWorkout = [
        WorkoutModel(name: "Beginner Workout", description: "this beginner workout is perfect for start your workout as a beginner", image: "wo1", duration: 15)
    
    ]
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 16){
                
                CalendarComponent()
                                
                HStack{
                    Text("Your Plans")
                        .font(.title).bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                PlansComponent()
                VStack{
                    Text("Need a new plan? Find now!.")
                        .foregroundColor(.secondary)
                    Button {
                        pageVM.selectedIndex = 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24)
                    }
                    .foregroundColor(.secondary)
                    .buttonStyle(.plain)
                }
                

                Spacer()
            }
            .navigationTitle("Today")
        }
        
        
        

    }
}

extension MyPlansView{
    struct PlansComponent: View {
        @EnvironmentObject var pageVM : PageViewModel
        var body: some View{
//            NavigationStack{
            VStack{
                Button{
                    print("Cek")
                    pageVM.isMyPlanView = true
                }label: {
                    ZStack(alignment: .bottomLeading){
                        Image("wo1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 361,height: 150)
                            .overlay{
                                Rectangle()
                                    .opacity(0.2)
                            }
                            .clipped()
                            .cornerRadius(10)
                        Text("Beginner workout")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                    }
                }
                
                NavigationLink(destination: WorkoutMovementViews(), isActive: $pageVM.isMyPlanView){
                    EmptyView()
                }
            }
                
                
//                NavigationLink {
//                    WorkoutMovementViews()
//                } label: {
//                    ZStack(alignment: .bottomLeading){
//                        Image("wo1")
//                            .resizable()
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .frame(width: 361,height: 150)
//                            .overlay{
//                                Rectangle()
//                                    .opacity(0.2)
//                            }
//                        Text("Beginner workout")
//                            .font(.title2)
//                            .foregroundColor(.white)
//                            .bold()
//                            .padding()
//                    }
//                }
//            }
            .buttonStyle(.plain)
        }
    }
}

struct MyPlansView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlansView().environmentObject(PageViewModel())
    }
}
