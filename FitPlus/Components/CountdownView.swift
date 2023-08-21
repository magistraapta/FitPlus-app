//
//  CountdownView.swift
//  FitPlus
//
//  Created by magistra aptam on 20/08/23.
//

import SwiftUI


let timer = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

struct Clock: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        VStack {
            Text(counterToMinutes())
                .font(.custom("SF Pro", size: 60))
                .fontWeight(.black)
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
    
    func counterToMinutes() -> String {
        let currentTime = countTo - counter
        let seconds = currentTime % 60
        let minutes = Int(currentTime / 60)
        
        return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
    }
    
}

extension Clock{
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

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 361, height: 361)
            .overlay(
                Circle().stroke(Color.secondary, lineWidth: 15)
        )
    }
}

struct ProgressBar: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 361, height: 361)
            .overlay(
                Circle().trim(from:0, to: progress())
                    .stroke(
                        style: StrokeStyle(
                            lineWidth: 15,
                            lineCap: .round,
                            lineJoin:.round
                        )
                )
                    .foregroundColor(
                        (completed() ? Color.green : Color.orange)
                ).animation(
                    .easeInOut(duration: 0.2)
                )
        )
            .rotationEffect(.degrees(270))
    }
    
    func completed() -> Bool {
        return progress() == 1
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}

struct CountdownView: View {
    @State var counter: Int = 0
    var countTo: Int = 60
    
    var body: some View {
        VStack{
            ZStack{
                ProgressTrack()
                ProgressBar(counter: counter, countTo: countTo)
                Clock(counter: counter, countTo: countTo)
            }
        }.onReceive(timer) { time in
            if (self.counter < self.countTo) {
                self.counter += 1
            }
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
    }
}
