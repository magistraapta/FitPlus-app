//
//  PageViewModel.swift
//  FitPlus
//
//  Created by magistra aptam on 18/08/23.
//

import Foundation

class PageViewModel: ObservableObject {
    @Published var selectedIndex = 0
    @Published var isMyPlanView = false
    @Published var isWorkoutDone = false
}
