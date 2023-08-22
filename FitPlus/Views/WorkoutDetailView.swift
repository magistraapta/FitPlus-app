//
//  WorkoutDetailView.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    @State var workoutTitle: String
    @State var workoutImage: String
    @State var workoutDescription: String
    @State var workoutDuratuion: Int
    @State var openSheet: Bool = false
    @StateObject var workoutVM = WorkoutViewModel()
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Image("\(workoutImage)")
                    .resizable()
                    .frame(width: 400,height: 300)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 8){
                    Text("\(workoutTitle)")
                        .font(.title).bold()
                    
                    Text("\(workoutDescription)")

                    
                    Text("Duration: \(workoutDuratuion) min")
                }
                .padding()
                
            }
            
            Spacer()
            
            List{
                ForEach(workoutVM.movements){ item in
                    WorkoutMovementCompoent(movementImage: item.image, movementTitle: item.name, movementReps: item.reps)
                }
                .padding()
            }
            .listStyle(.plain)
            Button {
                openSheet.toggle()
            } label: {
                ZStack{
                    Rectangle()
                        .background(.black)
                        .frame(width: 361, height: 42)
                        .cornerRadius(10)
                    Text("Next")
                        .foregroundColor(.white)
                }
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $openSheet) {
                ScheduleView( openSheet: $openSheet)
                    .presentationDetents([.medium])
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea(edges: .top)
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workoutTitle: "Beginner", workoutImage: "wo1", workoutDescription: "test", workoutDuratuion: 15)
    }
}
