//
//  FitPlusApp.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

@main
struct FitPlusApp: App {
    @StateObject var pageVM = PageViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(pageVM)
        }
    }
}
