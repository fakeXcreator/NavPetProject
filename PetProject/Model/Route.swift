//
//  Route.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import Foundation
import SwiftUI

enum HomeRoute: Hashable {
    
    case transItem(item: any Transactions)
    case addTransaction(AddTransactionViewModel)
    case settings

    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    static func == (lhs: HomeRoute, rhs: HomeRoute) -> Bool {
        switch (lhs, rhs) {
        case (.transItem(let lhsItem), .transItem(let rhsItem)):
                    return lhsItem.id == rhsItem.id
        case (.addTransaction, .addTransaction),
             (.settings, .settings):
            return true
        default:
            return false
        }
    }
}

extension HomeRoute {
    @ViewBuilder
    var view: some View {
        switch self {
        case .transItem(let item):
            TransactionDetailsView(exp: item as! Expence)
        case .addTransaction(let viewModel):
            AddTransactionView(viewModel: viewModel)
        case .settings:
            SettingsAssembly().build()
        }
    }
}

