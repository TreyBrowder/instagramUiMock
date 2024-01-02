//
//  PostHeaderView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import SwiftUI

struct PostHeaderView: View {
    var body: some View {
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
    }
}

struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostHeaderView()
            .preferredColorScheme(.dark)
    }
}
