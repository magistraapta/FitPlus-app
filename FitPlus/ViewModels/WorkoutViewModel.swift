//
//  WorkoutViewModel.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import Foundation

class WorkoutViewModel: ObservableObject{
    @Published var workoutArray: [WorkoutModel] = []
    
    init(){
        getData()
    }
    
    func getData(){
        let wo1 = WorkoutModel(name: "Beginner Workout", description: "this beginner workout is perfect for start your workout as a beginner", image: "wo1", duration: 15)
        let wo2 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo2", duration: 15)
        
        workoutArray.append(wo1)
        workoutArray.append(wo2)
    }
}
