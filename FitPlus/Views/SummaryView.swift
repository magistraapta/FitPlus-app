//
//  SummaryView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading,spacing: 24){
                
                VStack(alignment: .leading, spacing: 16){
                    SummaryStatsComponent(statTitle: "TOTAL WORK HOURS", statNumber: "2 hr 10 min")
                    
                    SummaryStatsComponent(statTitle: "CALORIES", statNumber: "150 Cal")
                    
                    SummaryStatsComponent(statTitle: "TODAY WORK HOURS", statNumber: "10 min")
                    
                    SummaryStatsComponent(statTitle: "STREAKS", statNumber: "3 days 🔥")
                }
                .padding(.top)
                .padding(.horizontal)
                
                HistoryComponent(workoutName: "Morning Workout", workoutDuration: "20 min")
                Spacer()
                .navigationTitle("Summary")
            }
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
