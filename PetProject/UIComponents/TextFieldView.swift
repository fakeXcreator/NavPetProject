//
//  TextFieldView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct TextFieldModel {
    var placeholder: String
}


struct TextFieldView: View {
    let dependency: TextFieldModel
    @Binding var text: String
    
    var body: some View {
        TextField(dependency.placeholder, text: $text)
        .modifier(TextFieldModifier())
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .padding(.leading, 15)
            .frame(maxWidth: .infinity, minHeight: 41)
            .background(Color(.secondarySystemBackground))
            .cornerRadius (10)
            .padding(.horizontal, 32)
    }

}
#Preview {
    @State var text = ""
    return TextFieldView(dependency: .init(placeholder: "Something"), text: $text)
}
