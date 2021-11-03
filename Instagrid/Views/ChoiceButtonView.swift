//
//  ChoiceButtonView.swift
//  Instagrid
//
//  Created by Giovanni Gaffé on 2021/10/4.
//

import SwiftUI

struct ChoiceButtonView: View {
    @State private var layout1 = false
    @State private var layout2 = false
    @State private var layout3 = false

    var body: some View {
        HStack {
            Button(action: {
                print("Layout 1")
                layout1.toggle()
            }) {
                VStack {
                    Image(uiImage: Constant.layout1)

                }
                .foregroundColor(.black)
            }
            
            Button(action: {
                print("Layout 2")
                layout2.toggle()
            }) {
                VStack {
                    Image(uiImage: Constant.layout2)
                    
                }
                .foregroundColor(.black)
            }
            
            Button(action: {
                print("Layout 3")
                layout2.toggle()
            }) {
                VStack {
                    Image(uiImage: Constant.layout3)
                        
                    
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct ChoiceButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceButtonView()
    }
}
