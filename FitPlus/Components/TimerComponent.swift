//
//  TimerComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 20/08/23.
//

import SwiftUI

struct TimerComponent: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.green, lineWidth: 20)
            VStack(spacing: 24){
                Text("20:00:11")
                    .font(Font.custom("SF Pro", size: 48))
                    .bold()
                HStack(spacing: 32){
                    WorkoutButtonIcon(iconName: "chevron.backward.square.fill", iconSize: 40)
                    NavigationLink {
                        FinishWorkoutView()
                    } label: {
                        WorkoutButtonIcon(iconName: "pause.circle.fill", iconSize: 60)
                    }

                    
                    WorkoutButtonIcon(iconName: "chevron.forward.square.fill", iconSize: 40)
                }
            }
            
        }
        .frame(width: 350)
    }
}

extension TimerComponent{
    struct WorkoutButtonIcon: View{
        @State var iconName: String
        @State var iconSize: CGFloat
        var body: some View{
            Image(systemName: "\(iconName)")
                .resizable()
                .scaledToFit()
                .frame(width: iconSize)
        }
    }
}

struct TimerComponent_Previews: PreviewProvider {
    static var previews: some View {
        TimerComponent()
    }
}
