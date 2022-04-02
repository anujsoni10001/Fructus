//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Anuj Soni on 28/03/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(content:{
        HStack{
        Text("Content Source")
        Spacer()
        Link(destination: URL(string:"https://en.wikipedia.org/wiki/Main_Page")!)
        {
        Text("Wikipedia")
        }
        Image(systemName:"arrow.up.right.square")
        }
        .font(.footnote)
        })
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            //.padding()
    }
}
