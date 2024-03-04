//
//  HomeScreen.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchProductText: String = ""
    
    var body: some View {
        SearchHeader(searchProductText: $searchProductText)
            .padding([.leading, .trailing], 20)
        Divider()
            .padding([.top, .bottom], 20)
        
        PromotionCarouselView()
        
        CategoryView(fakeCategories: CategoryViewModel().categories)

        Spacer()
    }
}



#Preview {
    HomeScreen()
}
