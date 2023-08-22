//
//  StartWorkoutView.swift
//  FitPlus
//
//  Created by magistra aptam on 20/08/23.
//

import SwiftUI

struct StartWorkoutView: View {
    var body: some View {
        VStack{
            Image("deadlift")
                .resizable()
                .scaledToFit()
                .frame(width: 361)
            Spacer()
            CountdownView()
            Spacer()
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

extension StartWorkoutView{
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

struct StartWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        StartWorkoutView()
    }
}
