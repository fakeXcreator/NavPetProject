//
//  TransactionItemView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct TransactionItemView: View {
    
    let item: any Transactions
    
    var body: some View {
        LabeledContent {
            Text("\(item.stringAmount) $")
        } label: {
            Text("\(item.type)")
        }
    }
}

#Preview {
    TransactionItemView(item: expense[0])
}
