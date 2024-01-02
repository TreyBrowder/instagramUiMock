//
//  PostView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack{
            HStack {
                
                //user profile picture and username
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color.blue)
                
                //will be passing an actual username
                Text("Kanye_West3")
                    .foregroundColor(Color.blue)
                    .bold()
                
                Spacer()
            }
            .padding(.leading, 30)
            
            //placeholder image for individual posts
            Image("Foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            PostActionsButtonsView()
                .padding(.leading, 10)
            
            HStack {
                // like count
                Image(systemName: "heart")
                Text("32 Likes")
                Spacer()
            }
            .padding(.leading,10)
            
            // comments
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .preferredColorScheme(.dark)
    }
}
