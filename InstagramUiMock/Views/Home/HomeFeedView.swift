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
                    
                    ForEach(1...8, id: \.self) { num in
                        
                        PostView(userImageName: "person\(num)", imageName: "post\(num)")
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
