//
//  WorkoutMovementViews.swift
//  FitPlus
//
//  Created by magistra aptam on 19/08/23.
//

import SwiftUI

struct WorkoutMovementViews: View {
    @StateObject var movementVM = WorkoutViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            Spacer()
            List{
                ForEach(movementVM.movements){item in
                    WorkoutMovementCompoent(movementImage: item.image, movementTitle: item.name, movementReps: item.reps)
                }
            }
            .listStyle(.plain)
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

        .navigationTitle("Beginner Workout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct WorkoutMovementViews_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutMovementViews()
    }
}
