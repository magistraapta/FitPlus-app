//
//  WorkoutModel.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import Foundation

struct WorkoutModel: Identifiable {
    var id = UUID()
    var name: String
    var detail: String
    var image: String
    var duration: Int
}
