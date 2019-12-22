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
                    card(title: "1. TabView 状态保存 bug", desc: "当切换 TabView 的时候，Tab 不会保持当前状态，会重新渲染")
                })
                NavigationLink(destination: AlertView(), label: {
                    card(title: "2. Alert 弹出 bug", desc: "在同一个 View 上不能添加多个 alert ，当有多个的时候只会有一个 alert 生效")
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
        .padding(.horizontal, 16)
        .padding(.top, 10)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
