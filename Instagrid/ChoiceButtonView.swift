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
            Button(action: { print("Layout 1") }) {
                VStack {
                    Image(uiImage: Constant.layout1)

                }
                .foregroundColor(.black)
            }
            
            Button(action: { print("Layout 2") }) {
                VStack {
                    Image(uiImage: Constant.layout2)
                    
                }
                .foregroundColor(.black)
            }
            
            Button(action: { print("Layout 3") }) {
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
