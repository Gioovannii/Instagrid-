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
                
                Button(action: { print("action done !") }) {
                    VStack {
                        
                        Image(systemName: "arrow.up.square.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("Swipe up to share")
                            
                    }
                    .foregroundColor(.white)
                   
                }
                GridLayoutView()

                GridLayoutView()
                ChoiceButtonView()
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
