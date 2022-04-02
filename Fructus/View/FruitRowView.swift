//
//  FruitRowView.swift
//  Fructus
//
//  Created by Anuj Soni on 27/03/22.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit : Fruit
    
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color:Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient:Gradient(colors:fruit.gradientColors), startPoint:.top, endPoint:.bottom))
                .cornerRadius(8)
            
            

            VStack(alignment:.leading, spacing:5){

            Text(fruit.title)
            .font(.title2)
            .fontWeight(.bold)

            Text(fruit.headline)
            .font(.caption)
            .foregroundColor(.secondary)

            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit:fruitsdata[0])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
