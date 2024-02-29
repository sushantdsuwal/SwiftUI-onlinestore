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
    var isValid: Bool?
    
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
                .stroke(borderColor, lineWidth: 1) 
        )
    }
    
    private var borderColor: Color {
        if let isValid = isValid {
            return isValid ? Color.black : Color.red
        } else {
            return Color.black
        }
    }
}

#Preview {
    IconTextField(iconName: "envelope", text: .constant(""), placeholder: "Email", isValid: true)
        .padding(.all)
}
