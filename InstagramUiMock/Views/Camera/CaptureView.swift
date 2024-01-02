//
//  CaptureView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import Foundation
import SwiftUI

struct CaptureView: UIViewControllerRepresentable {
    //UIImagePickerController is a component of UIKit that allows the use of photo library and camera
    typealias UIViewControllerType = UIImagePickerController
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var useCamera: Bool
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, useCamera: Binding<Bool>){
        _isShown = isShown
        _image = image
        _useCamera = useCamera
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = useCamera ? .camera : .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        //do nothing
    }
    
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
      
    init(isShown: Binding<Bool>, image: Binding<Image?>){
        _isShown = isShown
        _image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //user canceled
        isShown = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        
        image = Image(uiImage: uiImage)
        isShown = false
    }
}
