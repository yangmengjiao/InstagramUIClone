//
//  HomeFeedView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    StoriesView()
                    PostsView()
                }
            }
            .padding()
            .navigationTitle("Instagram")
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
