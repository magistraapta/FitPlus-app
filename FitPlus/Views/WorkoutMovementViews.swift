//
//  WorkoutMovementViews.swift
//  FitPlus
//
//  Created by magistra aptam on 19/08/23.
//

import SwiftUI

struct WorkoutMovementViews: View {
    
    var body: some View {
        VStack{
            Spacer()
            List{
                ForEach(1...7, id: \.self){item in
                    WorkoutMovementCompoent()
                }
            }
            .listStyle(.plain)
            Spacer()
            Button {
                //code
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
