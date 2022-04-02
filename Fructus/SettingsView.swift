//
//  SettingsView.swift
//  Fructus
//
//  Created by Anuj Soni on 02/04/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - property
   @Environment(\.presentationMode) var presentationMode
        
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators:false){
        VStack(spacing:20){
        // MARK: - Section 1
        GroupBox(label:
            SettingsLabelView(titlename: "fructus", imageName: "info.circle")
        ){
        Divider().padding(.vertical,4)
            
        HStack(alignment:.center,spacing:10){
        Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width:80, height: 80)
        .cornerRadius(9)
               
        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
        }
        }
        
        // MARK: - Section 2
      
        // MARK: - Section 3
        }
        .padding()
        
        .navigationTitle(Text("Settings"))
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(trailing:Button{
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName:"xmark")
        })

        }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
