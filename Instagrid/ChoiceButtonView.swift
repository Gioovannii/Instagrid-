//
//  ChoiceButtonView.swift
//  Instagrid
//
//  Created by Giovanni Gaffé on 2021/10/4.
//

import SwiftUI

struct ChoiceButtonView: View {
    var body: some View {
        HStack {
            Button(action: { print("action done !") }) {
                VStack {
                    Image(uiImage: Constant.layout1)
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                .foregroundColor(.black)
            }
            
            Button(action: { print("action done !") }) {
                VStack {
                    Image(uiImage: Constant.layout2)
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                .foregroundColor(.black)
            }
            
            Button(action: { print("action done !") }) {
                VStack {
                    Image(uiImage: Constant.layout3)
                        .resizable()
                        .frame(width: 30, height: 30)
                    
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
