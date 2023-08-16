//
//  MyPlansView.swift
//  FitPlus
//
//  Created by magistra aptam on 15/08/23.
//

import SwiftUI

struct MyPlansView: View {
    var body: some View {
        NavigationStack{
            
            VStack(spacing: 16){
                HStack{
                    Text("Your Plans")
                        .font(.title2).bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                
                Spacer()
                
                VStack(spacing: 8){
                    Image(systemName: "person.fill.questionmark")
                        .resizable()
                        .frame(width: 48, height: 43)
                        .foregroundColor(.secondary)
                    
                    VStack (spacing: 24){
                        Text("You don’t have any plans yet, discover plans now!")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondary)
                                                
                    }
                    Spacer()
                }
            }
            .navigationTitle("Plans")
        }
        

    }
}

struct MyPlansView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlansView()
    }
}
