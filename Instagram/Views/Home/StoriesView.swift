//
//  StoriesView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct StoriesView: View {
    var data = (1 ... 5).map { "User\($0)" }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id: \.self) { userName in
                    StoryView(userName: userName)
                }
            }
        }
    }
}

struct StoryView: View {
    var userName: String
    var body: some View {
        Image(userName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90, height: 90, alignment: .center)
            .cornerRadius(45)
            .padding(3)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
