//
//  Home.swift
//  Navigation-Side
//
//  Created by codestorm on 2021/6/17.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    // Hiding Tab bar..
    init(selectedTab: Binding<String>){
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        // Tab View With Tabs...
        TabView(selection: $selectedTab){
            HomePage()
                .tag("Home")
            History()
                .tag("History")
            Settings()
                .tag("Settings")
            Help()
                .tag("Help")
            Notification()
                .tag("Notifications")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct HomePage: View {
    var body: some View {
        navigationView{
            VStack(alignment: .leading, spacing: 20){
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Jenna Ezarik")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("iJustine's Sister, Youtuber, Techie....")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
            }
            .navigationTitle("Home")
        }
    }
}


struct History: View {
    var body: some View {
        NavigationView {
            Text("History")
                .font(.targeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    var body: some View {
        navigationView{
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}
