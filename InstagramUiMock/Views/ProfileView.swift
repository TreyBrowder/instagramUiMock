//
//  ProfileView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                //HStack: profile pic with number of post/followers/following
                ProfileHeaderView()
                Spacer()
                
                //Vstack: name and bio
                
                //HStack: edit profile and share profile
                
                //HStack - Scroll View: Highlight Stories
                
                //gridview: post
                
            }
            .navigationBarTitle("iOS_SwiftUi3", displayMode: .inline)
        }
    }
}

struct ProfileHeaderView: View{
    
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 150),
                 spacing: 0,
                 alignment: .center)
    ]
    
    var body: some View {
        //avatar image counts
        VStack {
            HStack {
                Image("person3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90, alignment: .center)
                    .cornerRadius(50)
                VStack {
                    ProfileHeaderCountView()
                        .padding(.leading,30)
                }
            }
            //Profile name and bio
            ProfileNameBioView()
            
            //Edit profile button
            ProfileEditButtonsView()
            
            LazyVGrid(columns: []) {
                //placholder text view
                ForEach(0...90, id: \.self) { num in
                    let imageName = "post\(Int.random(in: 1...8))"
                }
            }
        }
    }
}
    
struct ProfileHeaderCountView: View{
    var body: some View {
        HStack {
            //post followers and following
            Button {
                //no operation - UI only
            } label: {
                Text("3\nPosts")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(.trailing,10)
                
            Button {
                //no operation - UI only
            } label: {
                Text("32\nFollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(.trailing,10)
                
            Button {
                //no operation - UI only
            } label: {
                Text("1789\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
                .padding(.trailing,10)
                
        }
    }
}
    
struct ProfileNameBioView: View {
    var body: some View {
        HStack{
            Text("John Appleseed")
                .multilineTextAlignment(.leading)
                .padding(.leading,20)
            Spacer()
        }
            
        HStack{
            Text("SwiftUI | Developer | Hacker | Gym Life")
                .multilineTextAlignment(.leading)
                .padding(.leading,20)
            Spacer()
        }
    }
}
    
struct ProfileEditButtonsView: View {
    var body: some View {
        HStack {
            Button {
                //no action yet
            } label: {
                Text("Edit Profile")
                    .foregroundColor(Color(.label))
                    .frame(width: 170, height: 40, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
            }
                
            Button {
                //no action here - UI focus only
            } label: {
                Text("Share Profile")
                    .foregroundColor(Color(.label))
                    .frame(width: 170, height: 40, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
            }
        }
    }
}
    
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}

