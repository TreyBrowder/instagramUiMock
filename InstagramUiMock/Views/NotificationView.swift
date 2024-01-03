//
//  NotificationView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            VStack{
                List(0...70, id: \.self) { num in
                    if(num % 2 == 0) {
                        NotificationFollowView()
                    }else {
                        NotificationLikeView()
                    }
                }
            }
            .navigationTitle("Notifications")
        }
    }
}


struct NotificationLikeView: View {
    var body: some View {
        HStack {
            //user image
            let userImageName = "person\(Int.random(in: 1...8))"
            Image("person\(Int.random(in: 1...8))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(20)
            
            //Text date
            VStack(alignment: .leading){
                Text("Tim Cook Liked your post. ")
                Text("\(Int.random(in: 2...59)) mins ago ")
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            
            Spacer()
            
            //Post
            //generate a random number corresponding to the post number
            let imageName = "post\(Int.random(in: 1...8))"
            let image = Image(imageName)
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30, alignment: .trailing)
            
            NavigationLink(
                destination: PostView(userImageName: userImageName, imageName: imageName),
                label: {
                    Spacer()
                    image
                    
                }
            )
            .frame(width: 30, height: 30, alignment: .center)
        }
    }
}
    
    struct NotificationFollowView: View {
        var body: some View {
            HStack {
                //user image
                Image("person\(Int.random(in: 1...8))")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(20)
                
                //Text date
                VStack(alignment: .leading){
                    Text("John started following you. ")
                    Text("\(Int.random(in: 2...59)) mins ago ")
                        .foregroundColor(Color(.secondaryLabel))
                }
                
                Spacer()
                //follow button
                Button {
                    //do nothing only focusing on the Ui
                } label: {
                    Text("Follow")
                        .frame(width: 80, height: 30, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(.link))
                        .cornerRadius(8)
                }
                
            }
        }
    }

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
            .preferredColorScheme(.dark)
    }
}
