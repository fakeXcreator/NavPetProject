//
//  MainPageView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct MainPageView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        NavigationStack(path: $router.routes) {
            VStack {
                ButtonView(title: "Add Transaction",
                           action: {
                    router.push(to: .addTransaction(AddTransactionViewModel()))
                })
                .padding(.top)
                
                ListView
                    .padding(.top)
            }
            .navigationTitle("Transactions")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button(action: {
                        router.push(to: .settings)
                    }) {
                        Image(systemName: "gear")
                    }
                }
            }
            .navigationDestination(for: HomeRoute.self) { route in
                route.view
            }
        }
    }
}


extension MainPageView {
    var ListView: some View {
        List {
            Section("Expenses") {
                ForEach(expense) { exp in
                    
                    NavigationLink(value: HomeRoute.transItem(item: exp)) {
                        TransactionItemView(item: exp)
                    }
                }
            }
        }
    }
}

#Preview {
    MainPageView()
        .environmentObject(Router())
}
