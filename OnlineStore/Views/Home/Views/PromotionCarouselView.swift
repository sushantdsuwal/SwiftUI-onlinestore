//
//  PromotionCarouselView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 04/03/2024.
//

import SwiftUI

struct PromotionCarouselView: View {
    var body: some View {
        VStack {
            Image(.promotion)
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Text("Super Flash Sale 50% off")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.white)
                        .padding([.trailing], 20)
                )
        }
    }
}

#Preview {
    PromotionCarouselView()
}
