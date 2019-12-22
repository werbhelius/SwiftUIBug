//
//  ViewExt.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

extension View {
    
    func toAnyView() -> AnyView {
        return AnyView(self)
    }
    
}
