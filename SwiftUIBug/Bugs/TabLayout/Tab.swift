//
//  Tab1.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

struct Tab: View {
    
    var title: String
    
    var body: some View {
        Text(title).onAppear {
            print(self.title)
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab(title: "defult")
    }
}
