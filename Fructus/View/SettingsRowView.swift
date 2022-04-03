//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Anuj Soni on 03/04/22.
//

import SwiftUI

struct SettingsRowView: View {
    var name:String
    var content:String? = nil
    var linklabel:String? = nil
    var linkdestination:String? = nil
    
    var body: some View {
        
        
        VStack{
        
        Divider().padding(.vertical,4)
        
        HStack{
        Text(name).foregroundColor(Color.gray)
        Spacer()
        if let contentvalue = content {
        Text(contentvalue)
        }
        else if let x = linklabel,let y = linkdestination{
        Link(destination: URL(string:"https://\(y)")!)
        {
        Text(x)
        }
        Image(systemName:"arrow.up.right.square")
                .foregroundColor(.pink)
        }
        else{
        EmptyView()
        }
        }
        }
}
}

    
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {

            SettingsRowView(name: "Developer", content: nil,linklabel:"Wikipedia",linkdestination:"en.wikipedia.org/wiki/Main_Page")
                .padding()
                .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)

    }
}
