//
//  TabLayout.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

struct TabLayout: View {
    
    @State var selected = 0
    
    var body: some View {
        TabView(selection: $selected){
            Tab(title: "Tab 1")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Tab 1")
                }
                .tag(0)
            Tab(title: "Tab 2")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Tab 2")
                }
                .tag(1)
            Tab(title: "Tab 3")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Tab 3")
                }
                .tag(2)
        }
    }
}

struct TabLayout_Previews: PreviewProvider {
    static var previews: some View {
        TabLayout()
    }
}
