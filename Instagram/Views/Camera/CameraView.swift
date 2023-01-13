//
//  CameraView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct CameraView: View {
    @State var image: Image? = nil
    @State var isShowingPicker = false
    @State var isUseCamera = false
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400, alignment: .center)
                    
                    
                    Button("Photo Library") {
                        self.isUseCamera = false
                        self.isShowingPicker.toggle()
                    }
                    .padding(10)
                    
                    Button("Take Photo") {
                        self.isUseCamera = true
                        self.isShowingPicker.toggle()
                    }
                    .padding(10)
                    
                }
                
                if isShowingPicker {
                    CaptureView(isShow: $isShowingPicker, image: $image, isUseCamera: $isUseCamera)
                }
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
