//
//  ButtonView.swift
//  Fructus
//
//  Created by Anuj Soni on 26/03/22.
//

import SwiftUI

struct ButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    var body: some View {
    
        Button{
            isOnboarding = false
        } label: {
            HStack(spacing:8){
              
                Text("Start")
                
                Image(systemName:"arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(content:{
                Capsule()                   .strokeBorder(Color.white,lineWidth:1.25)
            })
        }
        .accentColor(.white)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}

