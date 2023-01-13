//
//  CaptureView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/13/23.
//

import Foundation
import SwiftUI

struct CaptureView: UIViewControllerRepresentable {
    @Binding var isShow: Bool
    @Binding var image: Image?
    @Binding var isUseCamera: Bool
    
    typealias UIViewControllerType = UIImagePickerController
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShow: $isShow, image: $image)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = isUseCamera ? .camera : .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        //do nothing
    }
    
   
    
    
}


class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @Binding var isShow: Bool
    @Binding var image: Image?
    
    init(isShow: Binding<Bool>, image: Binding<Image?>) {
        _isShow = isShow
        _image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShow = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
        isShow = false
        
        let image = Image(uiImage: uiImage)
        
        self.image = image
    }
}
