//
//  FinishWorkoutView.swift
//  FitPlus
//
//  Created by magistra aptam on 20/08/23.
//

import SwiftUI

struct FinishWorkoutView: View {
    @EnvironmentObject var pageVM: PageViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            Text("You did a great job today!")
                .font(.largeTitle)
                .bold()
                
            VStack(alignment: .leading,spacing: 16){
                Text("Here is your today stats")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                SummaryStatsComponent(statTitle: "TOTAL WORKOUT HOURS", statNumber: "20 min")
                SummaryStatsComponent(statTitle: "BURNED CALORIES", statNumber: "150 cal")
                SummaryStatsComponent(statTitle: "STREAKS", statNumber: "3 days 🔥")
            }
            Spacer()
            
//            if isPresented{
                Button {
                    print(pageVM.isMyPlanView)
                    pageVM.isMyPlanView = false
                    print(pageVM.isMyPlanView)
                    pageVM.objectWillChange.send()
                    pageVM.isWorkoutDone = true
//                    dismiss()
                } label: {
                    Text("Done")
                        .frame(width: 361, height: 40)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(10)
                }
//            }
            

        }
        .navigationBarBackButtonHidden(true)
    }
}

struct FinishWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        FinishWorkoutView()
    }
}
