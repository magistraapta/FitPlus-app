//
//  WorkoutDay.swift
//  FitPlus
//
//  Created by magistra aptam on 23/08/23.
//

import SwiftUI

struct WorkoutDay: View {
    @StateObject var workoutVM = WorkoutViewModel()
    @State var day: String
    var body: some View {
        ScrollView{
            
            ForEach(1...10, id: \.self){ i in
                VStack(alignment: .leading){
                    Text("Day \(i)")
                        .bold()
 
                    ForEach(workoutVM.movements){ item in
                        WorkoutMovementCompoent(movementImage: item.image, movementTitle: item.name, movementReps: item.reps)
                    }
                }
                .padding(.horizontal)
            }
            
            
        }
        
    }
}

struct WorkoutDay_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDay(day: "1")
    }
}
