//
//  ContentView.swift
//  Instagrid
//
//  Created by Giovanni Gaffé on 2021/10/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.red], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                Text("Instagrid")
                    .padding()
                    .font(.largeTitle)
                    .font(Font.custom("ThirstySoftRegular", size: 37))
                
                
                VStack {
                    HStack {
                        Button(action: { print("Edit button was tapped") }) {
                            HStack(spacing: 10) {
                                Image(uiImage: Constant.imagePicture)
                                    .resizable()
                                    .frame(width: 120, height: 120, alignment: .center)
                            }
                        }
                        
                        Button(action: { print("Edit button was tapped") }) {
                            HStack(spacing: 10) {
                                Image(uiImage: Constant.imagePicture)
                                    .resizable()
                                    .frame(width: 120, height: 120, alignment: .center)
                            }
                        }
                    }
                    
                    HStack {
                        Button(action: { print("Edit button was tapped") }) {
                            HStack(spacing: 10) {
                                Image(uiImage: Constant.imagePicture)
                                    .resizable()
                                    .frame(width: 120, height: 120, alignment: .center)
                            }
                        }
                        
                        Button(action: { print("Edit button was tapped") }) {
                            HStack(spacing: 10) {
                                Image(uiImage: Constant.imagePicture)
                                    .resizable()
                                    .frame(width: 120, height: 120, alignment: .center)
                            }
                        }
                    }
                    
                }
                .padding()
                .background(Color.green)
                .border(Color.white, width: 10)
                .cornerRadius(20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
