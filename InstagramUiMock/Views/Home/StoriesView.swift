//
//  StoriesView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/1/24.
//

import SwiftUI

struct StoriesViews: View {
    
    let data = (1...8).map({"person\($0)"})
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id: \.self) { imageName in
                    StoryView(imageName: imageName)
                }
            }
        }
    }
}

struct StoryView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.gray)
            .cornerRadius(45)
            .padding(3)
    }
}

struct StoriesViews_Previews: PreviewProvider {
    static var previews: some View {
        StoriesViews()
            .preferredColorScheme(.dark)
    }
}
