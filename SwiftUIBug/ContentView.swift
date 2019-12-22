//
//  ContentView.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TabLayout(), label: {
                    card(title: "1. TabView 状态保存 bugs", desc: "当切换 TabView 的时候，Tab 不会保持当前状态，会重新渲染")
                })
            }
            .padding(.top, 25)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle("SwiftUIBug")
        }
    }
    
    private func card(title: String, desc: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
            Text(desc)
                .fixedSize(horizontal: false, vertical: true)
                .font(Font.system(size: 15))
                .foregroundColor(Color.black.opacity(0.3))
            Divider()
        }
        .padding(16)
        .frame(width: UIScreen.main.bounds.width, height: 44)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
