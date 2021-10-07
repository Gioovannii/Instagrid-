//
//  GridLayoutView.swift
//  Instagrid
//
//  Created by Giovanni Gaffé on 2021/10/5.
//

import SwiftUI

struct GridLayoutView: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: [UIImage?]
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { print("Top Left tapped")
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                })
                    {
                    HStack(spacing: 10) {
                        if selectedImage != nil {
                            Image(uiImage: selectedImage[0] ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image(uiImage: Constant.imagePicture)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .opacity(hideButtonTL ? 0 : 1)
                }
                
                
                
                Button(action: { print("Top Right tapped")
                    hideButtonTR.toggle()
                }) {
                    HStack(spacing: 10) {
                        Image(uiImage: Constant.imagePicture)
                            .resizable()
                            .frame(width: 120, height: 120, alignment: .center)
                    }
                    .opacity(hideButtonTR ? 0 : 1)
                }
            }
            
            
            HStack {
                Button(action: { print("Bottom left tapped")
                    hideButtonBL.toggle()
                }) {
                    HStack(spacing: 10) {
                        Image(uiImage: Constant.imagePicture)
                            .resizable()
                            .frame(width: 120, height: 120, alignment: .center)
                    }
                    .opacity(hideButtonBL ? 0 : 1)
                }
                
                Button(action: { print("Bottom right tapped")
                    hideButtonBR.toggle()
                }) {
                    HStack(spacing: 10) {
                        Image(uiImage: Constant.imagePicture)
                            .resizable()
                            .frame(width: 120, height: 120, alignment: .center)
                    }
                    .opacity(hideButtonBR ? 0 : 1)
                }
            }
            
        }
        .padding()
        .background(Color.green)
        .border(Color.white, width: 10)
        .cornerRadius(20)
        .padding(50)
    }
}

struct GridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        GridLayoutView()
    }
}
