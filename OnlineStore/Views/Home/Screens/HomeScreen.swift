//
//  HomeScreen.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI


struct Category:Identifiable {
    let name: String
    let id: Int
    let iconName: String
}

struct HomeScreen: View {
    @State private var searchProductText: String = ""
    
    let fakeCategories: [Category] = [
        Category(name: "Men's Clothing", id: 0, iconName: "figure.hiking"),
        Category(name: "Women's Clothing", id: 1, iconName: "person.fill"),
        Category(name: "Electronics Gagets", id: 2, iconName: "tv.fill"),
        Category(name: "Home & Kitchen", id: 3, iconName: "house.fill"),
        Category(name: "Beauty & Health", id: 4, iconName: "heart.fill"),
        Category(name: "Sports & Outdoors", id: 5, iconName: "sportscourt.fill"),
        Category(name: "Toys & Games", id: 6, iconName: "gamecontroller.fill"),
        Category(name: "Books Library", id: 7, iconName: "book.fill")
    ]
    
    var body: some View {
        SearchHeader(searchProductText: $searchProductText)
            .padding([.leading, .trailing], 20)
        Divider()
            .padding([.top, .bottom], 20)
        
        PromotionCarouselView()
        
        CategoryView(fakeCategories: fakeCategories)
        
        Spacer()
    }
}



#Preview {
    HomeScreen()
}
