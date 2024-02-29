//
//  TextInput.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct IconTextField: View {
    var iconName: String
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image(systemName: iconName)
                    .frame(width: 20)
                
                TextField(placeholder, text: $text)
                    .padding(.horizontal, 10)
                    .autocapitalization(.none)
                    .foregroundColor(.primary)
            }
        }
        .padding(15)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.black, lineWidth: 1)
        )
    }
}


#Preview {
    IconTextField(iconName: "envelope", text: .constant(""), placeholder: "Email")
        .padding(.all)
}
