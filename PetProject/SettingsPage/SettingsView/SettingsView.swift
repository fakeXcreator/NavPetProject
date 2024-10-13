//
//  SettingsView.swift
//  PetProject
//
//  Created by Daniil Kim on 10.10.2024.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        Text("Here will be settings >:p")
    }
}

#Preview {
    SettingsView()
        .environmentObject(Router())
}
