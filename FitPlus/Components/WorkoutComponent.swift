//
//  WorkoutComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 16/08/23.
//

import SwiftUI



struct WorkoutComponent: View {
    
    @StateObject var workoutVm = WorkoutViewModel()
    
    var body: some View {
        
        ScrollView{
            ForEach(workoutVm.workoutArray) { item in
                WorkoutCards(workoutTitle: item.name, workoutImage: item.image)
                
            }
        }
    }
}

extension WorkoutComponent{
    struct WorkoutCards: View{
        @State var workoutTitle: String
        @State var workoutImage: String
        var body: some View{
            ZStack(alignment: .bottomLeading){
                Image("\(workoutImage)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 361)
                    .cornerRadius(15)
                    .overlay{
                        Rectangle()
                            .opacity(0.2)
                            .cornerRadius(15)
                    }
                
                VStack(alignment: .leading){
                    Text("\(workoutTitle)")
                        .font(.title).bold()
                        .foregroundColor(.white)
                   

                }
                .padding()
                
            }
        }
    }
}

struct WorkoutComponent_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutComponent()
    }
}
