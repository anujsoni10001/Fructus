//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Anuj Soni on 02/04/22.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - properties
    
    var titlename : String
    var imageName: String
    
    
    var body: some View {
        HStack{
        Text(titlename.uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: imageName)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(titlename:"anuj", imageName: "info.circle").padding()
    }
}
