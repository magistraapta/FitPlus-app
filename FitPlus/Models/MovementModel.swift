//
//  MovementModel.swift
//  FitPlus
//
//  Created by magistra aptam on 22/08/23.
//

import Foundation

struct MovementModel: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    var reps: String
}
