//
//  ExploreView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText = ""
    var columns = [
        GridItem(.flexible(), spacing: 50, alignment: .center),
        GridItem(.flexible(), spacing: 50, alignment: .center)
    ]
    
    var imageNames = (1...5).map{ "Image\($0)" }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search...", text: $searchText)
                    .padding(10)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach((1...50), id: \.self) { num in
                            let name = imageNames.randomElement() ?? "Image1"
                            NavigationLink {
                                PostView(userName: "User1", imageName: name)
                            } label: {
                                Image(name)
                                    .resizable()
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(.red)
                            }

                        }
                        .padding(20)
                        
                    }
                }

                
                   
            }
            .navigationTitle("Explore")
        }
    }
}

struct SearchView: View {
    var body: some View {
        ScrollView {
            
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
   
    static var previews: some View {
        ExploreView()
    }
}
