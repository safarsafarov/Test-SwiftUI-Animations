import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selectedTab = title}
        }, label: {
            HStack(spacing: 15)
            Image(systemName: image)
            
            
            
        })
    }
}
