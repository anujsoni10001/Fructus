//
//  OnboardingView.swift
//  Fructus
//
//  Created by Anuj Soni on 27/03/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
        ForEach(fruitsdata[0...5]){ item in
        FruitCardView(fruit: item)
        }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
