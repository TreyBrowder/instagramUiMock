//
//  PostActionsButtonsView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/2/24.
//

import SwiftUI

struct PostActionsButtonsView: View {
    var body: some View {
        
        
        HStack {
            // action buttons - like, comment, message
            
            Button (action: {
                //Like
            }, label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color(.label))
                
            })
            .padding(.trailing,10)
            
            Button (action: {
                //comment
            }, label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color(.label))
                
            })
            .padding(.trailing,10)
            
            Button (action: {
                //message
            }, label: {
                Image(systemName: "paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color(.label))
                
            })
            .padding(.trailing,10)
            
            Spacer()
            
        }
    }
}

struct PostActionsButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PostActionsButtonsView()
            .preferredColorScheme(.dark)
    }
}
