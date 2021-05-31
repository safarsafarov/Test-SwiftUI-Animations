//
//  ContentView.swift
//  Waterfall-swiftui
//
//  Created by codestorm on 2021/6/1.
//

import SwiftUI
import WaterfallGrid


struct ContentView: View {
    let cols: Int = 6
    let spacing: CGFloat = 10
    let imgsize = CGSize(width: 150, height: 150)
        
    var body: some View {
        let gridItems = Array(repeating: GridItem(.fixed(imgsize.width), spacing: spacing), count: cols)

        ScrollView(.vertical) {
            LazyVGrid(columns: gridItems, spacing: spacing) {
                ForEach(0..<200) { idx in
                    Image("image\(idx % 5)")
                        .resizable()
                        .frame(width: imgsize.width, height: imgsize.height)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
