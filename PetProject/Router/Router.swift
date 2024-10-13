//
//  Router.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    
    @Published var routes = [HomeRoute]()
    
    func push(to screen: HomeRoute) {
        routes.append(screen)
    }
    
    func goBack() {
        _ = routes.popLast()
    }
    
    func reset() {
        routes = []
    }
}
