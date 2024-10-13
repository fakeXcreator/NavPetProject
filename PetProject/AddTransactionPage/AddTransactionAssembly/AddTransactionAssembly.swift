//
//  AddTransactionAssembly.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import Foundation
import SwiftUI

final class AddTransactionAssembly {
    func build() -> AddTransactionView {
        let viewModel = AddTransactionViewModel()
        return AddTransactionView(viewModel: viewModel)
    }
}
