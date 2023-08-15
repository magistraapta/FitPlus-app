//
//  SummaryStatsComponent.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct SummaryStatsComponent: View {
    
    @State var statTitle: String
    @State var statNumber: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("\(statTitle)")
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.57, green: 0.66, blue: 0.71))
            
            Text("\(statNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

struct SummaryStatsComponent_Previews: PreviewProvider {
    static var previews: some View {
        SummaryStatsComponent(statTitle: "TODAY WORK HOURS", statNumber: "10 min")
    }
}
