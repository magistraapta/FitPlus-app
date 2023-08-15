//
//  ContentView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MyPlansView()
                .tabItem{
                    Image(systemName: "house")
                    Text("My Plans")
                }
            
            WorkoutView()
                .tabItem{
                    Image(systemName: "figure.run")
                    Text("Workout")
                }
            
            SummaryView()
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("Summary")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
