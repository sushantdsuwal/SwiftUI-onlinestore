//
//  SearchHeader.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 04/03/2024.
//

import SwiftUI

struct SearchHeader: View {
    @Binding var searchProductText: String;
    
    var body: some View {
        HStack{
            ZStack (alignment: .leading) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 20)
                        .foregroundColor(Color.blue)
                    TextField("Search Product", text: $searchProductText)
                        .padding(.horizontal, 10)
                        .autocapitalization(.none)
                        .foregroundColor(.primary)
                }
            }
            .padding(15)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.purple, lineWidth: 1)
            )
            
            Image(systemName: "heart")
                .frame(width: 30)
                .font(.system(size: 22))
                .foregroundColor(Color.gray)
            Image(systemName: "bell")
                .frame(width: 30)
                .font(.system(size: 22))
                .foregroundColor(Color.gray)
        }
        
    }
    
}
#Preview {
    SearchHeader(searchProductText: .constant("Search Product"))
        .padding(.all)
}
