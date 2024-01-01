//
//  StoriesView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/1/24.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StoriesViews: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0...50, id: \.self) { num in
                    StoryView(imageName: "foo")
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
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.gray)
            .cornerRadius(45)
            .padding(3)
    }
}
