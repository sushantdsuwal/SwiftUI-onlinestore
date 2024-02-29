//
//  PrimaryButton.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(4)
        }
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
    }
}


#Preview {
    PrimaryButton(title: "Primary Button", action: {})
        .padding(.all)
}
