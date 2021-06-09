//
//  SideMenu.swift
//  Navigation-Side
//
//  Created by codestorm on 2021/6/17.
//

import SwiftUI

struct SideMenu: View {
    @Binding var selectedTab: String
    @Namespace var animation
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                //Padding top for Top Close Button...
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Jenna Ezarik")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            VStack(alignment: .leading, spacing: 10) {
                TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                TabButton(image: "gearshape.fill", title: "Notification", selectedTab: $selectedTab, animation: animation)
                TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
            }
            .padding(.leading, -15)
            .padding(.top,50)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 6, content: {
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading, -15)
                Text("App version 1")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            })
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}


struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
