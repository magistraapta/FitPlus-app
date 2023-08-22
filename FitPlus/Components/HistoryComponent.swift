//
//  HistoryComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct HistoryComponent: View {
    
    @State var workoutName: String
    @State var workoutDuration: String
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("HISTORY")
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.57, green: 0.66, blue: 0.71))
            
            HStack(spacing: 16){
                Image("wo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 8){
                    Text("\(workoutName)")
                        .font(.title2).bold()
                    Text("\(workoutDuration)")
                }
                Spacer()
            }
        }
        .frame(width: 361)
        .padding()
    }
}

struct HistoryComponent_Previews: PreviewProvider {
    static var previews: some View {
        HistoryComponent(workoutName: "Morning Workout", workoutDuration: "20 min")
    }
}
