//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Anuj Soni on 28/03/22.
//

import SwiftUI

struct FruitHeaderView: View {
    
    @State var isAnimatingImage : Bool = false
    var fruit:Fruit
    
    var body: some View {
        ZStack{
        
        LinearGradient(gradient:Gradient(colors:fruit.gradientColors), startPoint:.topLeading, endPoint:.bottomTrailing)
        
        //Color.clear
        
        // MARK: - FRUIT IMAGE
        Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color:Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        //.padding(.vertical,20)
        }//ZStack
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment:.center)
//        .background(LinearGradient(gradient:Gradient(colors:fruit.gradientColors), startPoint:.topLeading, endPoint:.bottomTrailing))
//        .border(Color.red, width: 5)
        .onAppear(){
        withAnimation(.easeOut(duration:0.5)){
        isAnimatingImage = true
        }
        }
        .frame(height:440)
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsdata[0])
           .previewLayout(.fixed(width: 375, height: 440))
    }
}
