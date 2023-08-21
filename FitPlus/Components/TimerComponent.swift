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
                
            }
            
        }
        .frame(width: 350)
    }
}



struct TimerComponent_Previews: PreviewProvider {
    static var previews: some View {
        TimerComponent()
    }
}
