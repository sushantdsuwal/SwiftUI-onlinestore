//
//  Category.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 04/03/2024.
//

import Foundation


struct Category:Identifiable {
    let name: String
    let id: Int
    let iconName: String
}


class CategoryViewModel: ObservableObject {
    @Published var categories = [Category]()
    
    init() {
        fetchCategories()
    }
    
 
    func fetchCategories() {
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
        categories = fakeCategories;
    }
    
}
