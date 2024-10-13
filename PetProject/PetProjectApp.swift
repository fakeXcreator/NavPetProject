//
//  PetProjectApp.swift
//  PetProject
//
//  Created by Daniil Kim on 09.10.2024.
//

import SwiftUI

@main
struct PetProjectApp: App {

    @StateObject private var routerManager = Router()

    private let mainPageViewAssembly = MainPageAssembly()

    var body: some Scene {
        WindowGroup {
                MainPageAssembly().build()
                    .environmentObject(routerManager)
        }
    }
}

