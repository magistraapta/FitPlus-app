//
//  WorkoutViewModel.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import Foundation

class WorkoutViewModel: ObservableObject{
    @Published var workoutArray: [WorkoutModel] = []
    @Published var movements: [MovementModel] = []
    
    init(){
        getData()
        getMovement()
    }
    
    func getMovement(){
        let mov1 = MovementModel(name: "Push up", image: "movement1", reps: "10 x 2")
        let mov2 = MovementModel(name: "Sit up", image: "movement2", reps: "10 x 2")
        let mov3 = MovementModel(name: "Plank", image: "movement3", reps: "1 min")
        let mov4 = MovementModel(name: "Bench Press", image: "movement4", reps: "10 x 2")
        
        movements.append(mov1)
        movements.append(mov2)
        movements.append(mov3)
        movements.append(mov4)
    }
    
    func getData(){
        let wo1 = WorkoutModel(name: "Beginner Workout", description: "this beginner workout is perfect for start your workout as a beginner", image: "wo1", duration: 15)
        let wo2 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo2", duration: 15)
        let wo3 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo3", duration: 15)
        let wo4 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo4", duration: 15)
        let wo5 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo5", duration: 15)
        let wo6 = WorkoutModel(name: "30 Days Workout", description: "try workout with dicipline with 30 days workout program", image: "wo6", duration: 15)
        
        workoutArray.append(wo1)
        workoutArray.append(wo2)
        workoutArray.append(wo3)
        workoutArray.append(wo4)
        workoutArray.append(wo5)
        workoutArray.append(wo6)
    }
}
