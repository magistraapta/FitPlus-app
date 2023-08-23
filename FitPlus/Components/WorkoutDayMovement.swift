//
//  WorkoutDayMovement.swift
//  FitPlus
//
//  Created by magistra aptam on 23/08/23.
//

import SwiftUI

struct WorkoutDayMovement: View {
    @StateObject var workoutVM = WorkoutViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Day 1")
                .bold()

            ForEach(workoutVM.movements){ item in
                WorkoutMovementCompoent(movementImage: item.image, movementTitle: item.name, movementReps: item.reps)
            }
            Spacer()
            
            NavigationLink {
                StartWorkoutView()
            } label: {
                Text("Start")
                    .foregroundColor(.white)
                    .frame(width: 361, height: 40)
                    .background(.black)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
        
    }
}

struct WorkoutDayMovement_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDayMovement()
    }
}
