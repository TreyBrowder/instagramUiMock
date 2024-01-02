//
//  CameraView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    @State var image: Image? = nil
    @State var isUsingCamera = false
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                    
                    //button for photo library
                    Button {
                        self.isUsingCamera = false
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Photo Library")
                    }
                    .padding()
                    
                    //button for camera
                    Button {
                        self.isUsingCamera = true
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Take photo")
                    }
                    .padding()
                   
                    if(isShowingPicker) {
                        CaptureView(isShown: $isShowingPicker, image: $image, useCamera: $isUsingCamera)
                    }
                }
            }
            .navigationTitle("camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
            .preferredColorScheme(.dark)
    }
}
