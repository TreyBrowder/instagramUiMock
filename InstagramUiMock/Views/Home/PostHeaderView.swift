//
//  PostHeaderView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import SwiftUI

struct PostHeaderView: View {
    
    let userImageName: String
    
    var body: some View {
        HStack {
            
            //user profile picture and username
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(20)
            
            //will be passing an actual username
            Text("Kanye_West3")
                .foregroundColor(Color.blue)
                .bold()
            
            Spacer()
        }
    }
}

struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostHeaderView(userImageName: "person1")
            .preferredColorScheme(.dark)
    }
}
