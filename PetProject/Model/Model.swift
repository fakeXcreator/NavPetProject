//
//  Model.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import Foundation
// Protocol was added for ( struct  Income: Transactions )

protocol Transactions: Identifiable, Hashable {
    var id: UUID {get}
    var type: String {get}
    var stringAmount: String {get}
    var descriptions: String? {get}
}

struct Expence: Transactions{
    let id = UUID()
    let type: String
    let stringAmount: String
    let descriptions: String?

}

var expense: [Expence] = [
    Expence(
        type: "Food",
        stringAmount: "20.4",
        descriptions: "Ну типа еда, хз"
    ),
    Expence(
        type: "Car",
        stringAmount: "560",
        descriptions: "Stage 1"
    ),
    Expence(
        type: "Me",
        stringAmount: "52",
        descriptions: nil
    )

]
