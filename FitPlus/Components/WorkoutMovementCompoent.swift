//
//  WorkoutMovementCompoent.swift
//  FitPlus
//
//  Created by magistra aptam on 19/08/23.
//

import SwiftUI

struct WorkoutMovementCompoent: View {
    var body: some View {
        HStack{
            Image("deadlift")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            VStack(alignment: .leading, spacing: 8){
                Text("Deadlift")
                    .bold()
                Text("10 x 2 reps")
            }
            Spacer()
        }
    }
}

struct WorkoutMovementCompoent_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutMovementCompoent()
    }
}
