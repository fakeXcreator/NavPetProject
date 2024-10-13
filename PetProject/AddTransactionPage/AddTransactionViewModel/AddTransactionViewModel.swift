//
//  AddTransactionViewModel.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import Foundation
import SwiftUI

final class AddTransactionViewModel: ObservableObject {
    @Published var type: String = ""
    @Published var stringAmount: String = ""
    @Published var description: String = ""
}

// MARK: - Methods

extension AddTransactionViewModel {
    func addTransaction() {
        let newExpense = Expence(
            type: type,
            stringAmount: stringAmount,
            descriptions: description.isEmpty ? nil : description
        )
        expense.append(newExpense)
        
        clearInputFields()
    }
    
    private func clearInputFields() {
            type = ""
            stringAmount = ""
            description = ""
        }
}
