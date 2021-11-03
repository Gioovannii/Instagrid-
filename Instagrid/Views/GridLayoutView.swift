//
//  GridLayoutView.swift
//  Instagrid
//
//  Created by Giovanni Gaffé on 2021/10/5.
//

import SwiftUI

struct GridLayoutView: View {
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var isImagePickerDisplay = false
    @State private var selectedImage: UIImage?
    
    
    
    var body: some View {
        //        Image(uiImage: selectedImage ?? Constant.imagePicture)
        
        VStack {
            HStack {
                Button(action: { print("Top Left tapped")
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }) {
                    HStack(spacing: 10) {
                        if selectedImage != nil {
                            Image(uiImage: selectedImage ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image(uiImage: Constant.imagePicture)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                
                Button(action: { print("Top Right tapped")
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }) {
                    HStack(spacing: 10) {
                        if selectedImage != nil {
                            Image(uiImage: selectedImage ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image(uiImage: Constant.imagePicture)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
            }
            
            
            VStack {
                
            }
            
            
        }
        .sheet(isPresented: $isImagePickerDisplay) {
            ImagePickerView(selectedImage: $selectedImage, sourceType: .camera)
            ImagePickerView(selectedImage: $selectedImage, sourceType: .photoLibrary)
        }
    }
}
    
struct GridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        GridLayoutView()
    }
}
