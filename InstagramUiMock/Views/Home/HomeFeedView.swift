//
//  HomeFeedView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    StoriesViews()
                    
                    ForEach(0...115, id: \.self) { num in
                        
                        PostView()
                            .padding(.bottom, 20)
                        
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

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
            .padding()
            
            //placeholder image for individual posts
            Image("Foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color.gray)
                .cornerRadius(10)
            
            HStack {
                // action buttons - like, comment, message
            }
            
            HStack {
                // like count
            }
            
            // comments
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
            .preferredColorScheme(.dark)
    }
}
