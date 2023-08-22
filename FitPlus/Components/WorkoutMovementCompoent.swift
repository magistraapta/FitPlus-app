//
//  WorkoutMovementCompoent.swift
//  FitPlus
//
//  Created by magistra aptam on 19/08/23.
//

import SwiftUI

struct WorkoutMovementCompoent: View {
    @State var movementImage: String
    @State var movementTitle: String
    @State var movementReps: String
    var body: some View {
        HStack(spacing: 12){
            Image("\(movementImage)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 80)
                .clipped()
            VStack(alignment: .leading, spacing: 8){
                Text("\(movementTitle)")
                    .bold()
                Text("\(movementReps)")
            }
            Spacer()
        }
    }
}

struct WorkoutMovementCompoent_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutMovementCompoent(movementImage: "movement2", movementTitle: "Push up", movementReps: "10 x 2")
    }
}
