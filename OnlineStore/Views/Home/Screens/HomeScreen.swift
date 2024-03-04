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
            .padding([.leading, .trailing,.bottom], 20)
        Divider()
        
        
        
        Spacer()
    }
}



#Preview {
    HomeScreen()
}
