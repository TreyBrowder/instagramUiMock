//
//  ProfilePostView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/3/24.
//

import SwiftUI

struct ProfilePostView: View {
    
    var columns: [GridItem] = [
        GridItem(.fixed(130)),
        GridItem(.fixed(130)),
        GridItem(.fixed(130))
    ]
    
    var body: some View {
        //HStack - Scroll View: Highlight Stories
        LazyVGrid(columns: columns, spacing: 1,content: {
            ForEach(0...90, id: \.self) { num in
                let imageName = "post\(Int.random(in: 1...8))"
                
                NavigationLink(
                    destination: {
                        PostView(userImageName: "person3", imageName: imageName)
                            .navigationBarTitle("Photo", displayMode: .inline)
                    }, label: {
                        Image(imageName)
                            .resizable()
                            .frame(width: 135, height: 135, alignment: .center)
                            .aspectRatio(contentMode: .fill)
                    })
            }
        })
    }
}

struct ProfilePostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePostView()
    }
}
