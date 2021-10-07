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
                }
                .sheet(isPresented: $isImagePickerDisplay) {
                    ImagePickerView(selectedImage: $selectedImage[0], sourceType: .camera)
                    ImagePickerView(selectedImage: $selectedImage[0], sourceType: .photoLibrary)
                }
                
                
                Button(action: { print("Top Right tapped")
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
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
        GridLayoutView(selectedImage: [Image(uiImage: Constant.imagePicture)])
    }
}
