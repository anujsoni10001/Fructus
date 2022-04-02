//
//  NutrientsView.swift
//  Fructus
//
//  Created by Anuj Soni on 30/03/22.
//

import SwiftUI

struct NutrientsView: View {
    
    var fruit:Fruit

    let nutrients : [String] = ["Energy","Sugar","Fat","Protein","Minerals","Vitamins"]
    
    var body: some View {
       GroupBox{
        DisclosureGroup("Nutritional value per 100gm"){
            ForEach(0..<nutrients.count,id:\.self){item in
                
                //Horizontal Divider
                //Outside HStack
                Divider().padding(.vertical,2)
                
                HStack{
                //Vertical Divider
                //Inside HStack
                //Divider().padding(.vertical,2)
                    
                //Grouped Views are single container
                //of view where you can apply
                //properties to each individual
                //elements
                    
                Group{
                Image(systemName: "info.circle")
                Text("\(nutrients[item])")
                }
                .foregroundColor(fruit.gradientColors[1])
                .font(.body.bold())
                    
                Spacer(minLength:25)
                    
                Text("\(fruit.nutrition[item])")
                        .multilineTextAlignment(.trailing)
                }
                //alternative
                //.padding(.vertical,2)
            }
        }
    }
}
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsdata[0])
            .previewLayout(.sizeThatFits)
    }
}
