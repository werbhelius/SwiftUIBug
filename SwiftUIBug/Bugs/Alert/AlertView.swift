//
//  AlertView.swift
//  SwiftUIBug
//
//  Created by wanbo on 2019/12/22.
//  Copyright © 2019 wanbo. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    
    var body: some View {
        VStack(spacing: 16) {
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("添加在同一个 view 上，alert 只会弹出最后一个")
                
                Button(action: {
                    self.showAlert1.toggle()
                }, label: {
                    Text("Alert 1")
                        .padding(6)
                        .background(Color.black)
                        .cornerRadius(6)
                })
                
                Button(action: {
                    self.showAlert2.toggle()
                }, label: {
                    Text("Alert 2")
                        .padding(6)
                        .background(Color.black)
                        .cornerRadius(6)
                })
            }.alert(isPresented: $showAlert1) {
                Alert(title: Text("Alert 1"))
            }
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Alert 2"))
            }
            .padding(.horizontal, 16)
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("解决方案是把 alert 添加在触发 alert 的 view 上面")
                
                Button(action: {
                    self.showAlert3.toggle()
                }, label: {
                    Text("Alert 3")
                        .padding(6)
                        .background(Color.black)
                        .cornerRadius(6)
                })
                .alert(isPresented: $showAlert3) {
                    Alert(title: Text("Alert 3"))
                }
                
                Button(action: {
                    self.showAlert4.toggle()
                }, label: {
                    Text("Alert 4")
                        .padding(6)
                        .background(Color.black)
                        .cornerRadius(6)
                })
                .alert(isPresented: $showAlert4) {
                    Alert(title: Text("Alert 4"))
                }
            }
            
            .padding(.horizontal, 16)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
