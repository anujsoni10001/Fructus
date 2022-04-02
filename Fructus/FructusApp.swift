//
//  FructusApp.swift
//  Fructus
//
//  Created by Anuj Soni on 26/03/22.
//

import SwiftUI

@main
struct FructusApp: App {

    @AppStorage("isOnboarding") var isOnboarding:Bool = true

    var body: some Scene {
        WindowGroup {
        if isOnboarding{
        OnboardingView()
        }else{
        ContentView()
        }
        }
    }
}
