//
//  WorkoutComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 16/08/23.
//

import SwiftUI

struct WorkoutModel: Identifiable{
    var id = UUID()
    var name: String
    var image: String
}

struct WorkoutComponent: View {
    
    let workoutArray = [
        WorkoutModel(name: "30 Days workout", image: "wo1"),
        WorkoutModel(name: "Beginner Workout", image: "wo2")
    ]
    
    var body: some View {
        ScrollView{
            ForEach(workoutArray) { item in
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
                    Button {
                        //code
                    } label: {
                        Text("Detail")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.horizontal,24)
                            .padding(.vertical, 8)
                            .background(.black)
                            .cornerRadius(20)
                    }

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