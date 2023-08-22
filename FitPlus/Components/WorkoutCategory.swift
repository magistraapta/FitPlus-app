//
//  WorkoutCategory.swift
//  FitPlus
//
//  Created by magistra aptam on 16/08/23.
//

import SwiftUI

struct WorkoutCategory: View {
    
    var body: some View {
        HStack{
            CategoryItem(isSelected: true, title: "For you")
            CategoryItem(isSelected: false, title: "Beginner")
            CategoryItem(isSelected: false, title: "Expert")
        }
    }
}

extension WorkoutCategory{
    struct CategoryItem: View{
        @State var isSelected: Bool
        @State var title: String
        var body: some View{
            Text("\(title)")
                .foregroundColor(isSelected ? .white : .black)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isSelected ? .black : .white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.09, green: 0.11, blue: 0.13), lineWidth: 1)
                )
                .onTapGesture {
                    isSelected.toggle()
                }
        }
    }
    
}

struct WorkoutCategory_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCategory()
    }
}
