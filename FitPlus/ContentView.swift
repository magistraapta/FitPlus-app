//
//  ContentView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var tabIndex: PageViewModel
    
    var body: some View {
        TabView(selection: $tabIndex.selectedIndex){
            MyPlansView()
                .tag(0)
                .tabItem{
                    Image(systemName: "house")
                    Text("My Plans")
                }
            
            WorkoutView()
                .tag(1)
                .tabItem{
                    Image(systemName: "figure.run")
                    Text("Workout")
                }
            
            SummaryView()
                .tag(2)
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("Summary")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(PageViewModel())
    }
}
