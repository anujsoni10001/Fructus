//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Anuj Soni on 28/03/22.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit:Fruit
    
    var body: some View {
      NavigationView{
       ScrollView(.vertical,showsIndicators:false){
        
        
        VStack(alignment:.center, spacing:20){
        
        // MARK: - header
            FruitHeaderView(fruit:fruit)
            
        VStack(alignment:.leading, spacing:20){
        
        // MARK: - title
            Text(fruit.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(fruit.gradientColors[1])
        // MARK: - headline
            Text(fruit.headline)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
        // MARK: - nutrients
            NutrientsView(fruit:fruit)
            
        // MARK: - subheadline
            Text("Learn more about \(fruit.title)".uppercased())
                .fontWeight(.bold)
                .foregroundColor(fruit.gradientColors[1])
            
        // MARK: - description
            Text(fruit.description)
                .multilineTextAlignment(.leading)

        // MARK: - link
            SourceLinkView()
              .padding(.top,10)
              .padding(.bottom,40)
        }
        .padding(.horizontal,20)
        .frame(maxWidth:640,alignment:.center)
        }
          
     }//scroll
       .edgesIgnoringSafeArea(.vertical)
       .navigationTitle(fruit.title)
       .navigationBarTitleDisplayMode(.inline)
       .navigationBarHidden(true)
      }//navigation
    
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsdata[0])
            .preferredColorScheme(.dark)
    }
}
