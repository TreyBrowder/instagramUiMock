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
                        .padding(.leading,20)
                        .padding()
                    
                    ForEach(0...115, id: \.self) { num in
                        
                        PostView()
                            .padding(.leading,30)
                            .padding(.bottom, 20)
                        
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
            .preferredColorScheme(.dark)
    }
}
