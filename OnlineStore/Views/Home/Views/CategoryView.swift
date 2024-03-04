//
//  CategoryView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 04/03/2024.
//

import SwiftUI

struct CategoryView: View {
    let fakeCategories: [Category]
    
    var body: some View {
        VStack {
            HStack {
                Text("Category")
                Spacer()
                Text("More Category")
                    .foregroundColor(.blue)
            }
            .bold()
            .padding()
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(fakeCategories) { category in
                        VStack(alignment: .center) {
                            
                            Image(systemName: category.iconName)
                                .foregroundColor(.blue)
                                .padding()
                                .font(.system(size: 22))
                                .overlay(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            Text(category.name)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .frame(width: 90)
                        
                    }
                }
            }
            .frame(height: 120)
        }
        
    }
}

#Preview {
    CategoryView(fakeCategories: [
        Category(name: "Men's Clothing", id: 0, iconName: "figure.hiking"),
        Category(name: "Women's Clothing", id: 1, iconName: "person.fill"),
        Category(name: "Electronics Gagets", id: 2, iconName: "tv.fill"),
        Category(name: "Home & Kitchen", id: 3, iconName: "house.fill"),
    ])
}
