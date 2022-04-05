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
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
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
        GroupBox(label:
        SettingsLabelView(titlename: "CUSTOMIZATION", imageName: "paintbrush")
        ){
        Divider().padding(.vertical,4)
            
                   
        Text("If you wish, you can restart the application Dy togale the switch in this box. That wav it starts the onboardina process and vou will see the welcome screen again.")
        .padding(.vertical,8)
        .frame(minHeight:60)
        .layoutPriority(1)
        .font(.footnote)
        .multilineTextAlignment(.leading)
        

        Toggle(isOn:$isOnboarding) {
        
        if isOnboarding {
        Text("restarted".uppercased())
        .fontWeight(.bold)
        .foregroundColor(.green)
        }
        else{
        Text("restart".uppercased())
        .fontWeight(.bold)
        .foregroundColor(.secondary)
        }
        
        }
        .padding()
        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style:.continuous)))
//        .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 8, style:.continuous)))
            
        }
            
            
        // MARK: - Section 3
        GroupBox(label:
                SettingsLabelView(titlename: "application", imageName: "apps.iphone")
        ){
        SettingsRowView(name: "Developer", content: "Anuj Soni",linklabel:nil,linkdestination:nil)
        SettingsRowView(name: "Designer", content: "Asdulla Behlim",linklabel:nil,linkdestination:nil)
        SettingsRowView(name: "Compatibility", content: "iOS 14",linklabel:nil,linkdestination:nil)
        SettingsRowView(name: "Website", content: nil,linklabel:"Wikipedia",linkdestination:"en.wikipedia.org/wiki/Main_Page")
        SettingsRowView(name: "Twitter", content: nil,linklabel:"@anujsoni10001",linkdestination:"twitter.com/anujsoni10001")
        SettingsRowView(name: "SwiftUI", content: "2.0",linklabel:nil,linkdestination:nil)
        SettingsRowView(name: "Version", content: "1.1.0",linklabel:nil,linkdestination:nil)
        }
            
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
