//
//  AddTransactionView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

// TODO: create TextFileds

import SwiftUI

struct AddTransactionView: View {
    @EnvironmentObject var router: Router
    @StateObject var viewModel: AddTransactionViewModel

    var body: some View {
            VStack(spacing: 10) {
                TextFieldView(dependency: .init(placeholder: "Enter Category"), text: $viewModel.type)
                TextFieldView(dependency: .init(placeholder: "Enter Amount"), text: $viewModel.stringAmount)
                    .keyboardType(.decimalPad)
                TextFieldView(dependency: .init(placeholder: "Enter Description"), text: $viewModel.description)
                
                ButtonView(title: "Add", action: {
                    viewModel.addTransaction()
                    router.reset()
                })
                .padding(.top)
            }
        }
    }


#Preview {
    AddTransactionView(viewModel: AddTransactionViewModel())
        .environmentObject(Router())
}

