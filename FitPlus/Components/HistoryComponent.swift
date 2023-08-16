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
            
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(height: 110)
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.96, green: 0.97, blue: 0.97))
                
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
                }
                .padding()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                .inset(by: 0.5)
                .stroke(Color(red: 0.57, green: 0.66, blue: 0.71), lineWidth: 1)
            )
        }
        .padding()
    }
}

struct HistoryComponent_Previews: PreviewProvider {
    static var previews: some View {
        HistoryComponent(workoutName: "Morning Workout", workoutDuration: "20 min")
    }
}
