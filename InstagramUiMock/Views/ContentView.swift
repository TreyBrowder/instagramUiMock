//
//  ContentView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                    Text("Explore")
                }
            
            CameraView()
                .tabItem {
                    Image(systemName: "plus.rectangle")
                        .environment(\.symbolVariants, .none)
                    
                    Text("Camera")
                }
            
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                        .environment(\.symbolVariants, .none)
                        
                    
                    Text("Activity")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .environment(\.symbolVariants, .none)
                    
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
