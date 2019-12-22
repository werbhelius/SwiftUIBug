//
//  List+Button.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

struct List_Button: View {
    
    var body: some View {
        List {
            
            Text("List 一个 Cell 如果存在多个 Button，会触发所有 Button 的点击事件")
            
            HStack{
                Button(action: {
                    print("Button 1")
                }, label: {
                    Text("Button 1")
                        .padding(6)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(6)
                })
                
                Button(action: {
                    print("Button 2")
                }, label: {
                    Text("Button 2")
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Color.black)
                        .cornerRadius(6)
                })
            }
            
            Text("解决方案: 使用 onTapGesture 替代 Button")
            
            HStack{
                Text("Button 3")
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(6)
                    .onTapGesture {
                        print("Button 3")
                    }
                
                Text("Button 4")
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(6)
                    .onTapGesture {
                        print("Button 4")
                    }
            }
        }
    }
}

struct List_Button_Previews: PreviewProvider {
    static var previews: some View {
        List_Button()
    }
}
