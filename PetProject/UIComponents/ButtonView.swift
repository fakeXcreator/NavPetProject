//
//  ButtonView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 23))
                .frame(maxWidth: .infinity, minHeight: 42)
                .background(Color(.black))
                .cornerRadius(12)
                .padding(.horizontal, 32)
                .shadow(color: .black, radius: 1, x: 0, y: 1.5)
        }
    }
}


#Preview {
    ButtonView(title: "Add Transaction") { print("Sign Up button clicked") }
}
