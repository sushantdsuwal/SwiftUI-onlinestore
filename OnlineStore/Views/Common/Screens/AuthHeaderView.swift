//
//  AuthHeaderView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct AuthHeaderView: View {
    let title: String;
    let subTitle: String;
    
    var body: some View {
        VStack {
            Image(.logo)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(title)
                .padding([.bottom, .top], 5)
            Text(subTitle).fontWeight(.light)
        }
    }
}

#Preview {
    AuthHeaderView(
        title: "Welcome to Online Store",
        subTitle: "Sign in to continue"
    )
}
