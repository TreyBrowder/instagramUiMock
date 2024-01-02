//
//  ExploreView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct ExploreView: View {
    @State var text = ""
    
    var imageName = (1...8).map({ "post\($0)" })
    var personNum = (1...8).map({"person\($0)"})
    
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search...", text: $text)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(15)
                    .padding()
                
                
                ScrollView {
                    LazyVGrid(columns: columns, content: {
                        ForEach(0...500, id: \.self) { num in
                            let name = imageName.randomElement() ?? "image1"
                            let personNum = personNum.randomElement() ?? "person1"
                            NavigationLink {
                                PostView(userImageName: personNum, imageName: name)
                            } label: {
                                Image(name)
                                    .resizable()
                                    .frame(width: 180, height: 180, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(Color.red)
                            }

                        }
                    })
                }
            }
            .navigationTitle("Explore")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
            .preferredColorScheme(.dark)
    }
}
