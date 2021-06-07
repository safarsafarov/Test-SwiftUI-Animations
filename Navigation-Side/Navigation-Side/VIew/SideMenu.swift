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
            
        })
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
