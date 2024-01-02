//
//  PostView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import SwiftUI

struct PostView: View {
    
    let userImageName: String
    let imageName: String
    
    var body: some View {
        VStack{
            PostHeaderView(userImageName: userImageName)
            .padding(.leading, 10)
            
            //placeholder image for individual posts
            Image(imageName)
                .resizable()
                .frame(width: 430, height: 430, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            PostActionsButtonsView()
                .padding(.leading, 10)
            
            HStack {
                // like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color.red)
                
                Text("32 Likes")
                    .foregroundColor(Color(.link))
                Spacer()
            }
            .padding(.leading,10)
            
            //caption
            Text("PlaceHolder text for Caption! #SwiftUi #iOS #iPhone #ExplorePage")
                .padding(.trailing,50)
            
            // comments
            
            //Date
            HStack {
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }
            .padding(.leading, 6)
            
                
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(userImageName: "person1", imageName: "post1")
            .preferredColorScheme(.dark)
    }
}
