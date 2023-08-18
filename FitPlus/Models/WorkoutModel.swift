//
//  WorkoutModel.swift
//  FitPlus
//
//  Created by magistra aptam on 17/08/23.
//

import Foundation

struct WorkoutModel: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var duration: Int
}
