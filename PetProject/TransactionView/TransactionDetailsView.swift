//
//  TransactionDetailsView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct TransactionDetailsView: View {
    @EnvironmentObject private var router: Router

    let exp: Expence
    
    var body: some View {
        List{
            
            Section("Details") {
                LabeledContent("Category", value: exp.type)
                LabeledContent {
                    Text("\(exp.stringAmount) $")
                } label: {
                    Text("Price")
                }
            }
            
            Section("Description") {
                Text(exp.descriptions ?? "none")
            }
        }
        .navigationTitle("Expence")
    }
}

#Preview {
    TransactionDetailsView(exp: expense[0])
        .environmentObject(Router())
}
