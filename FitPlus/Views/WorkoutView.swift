//
//  WorkoutView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct WorkoutView: View {
    
    @State var searchValue: String = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("this is workout")
            }
            .searchable(text: $searchValue)
            .padding()
            .navigationTitle("Workout")
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
