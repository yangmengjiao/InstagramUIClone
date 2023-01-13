//
//  NotificationView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            List((1...30), id: \.self) { num in
                if num % 2 == 0 {
                    NotificationFollowView()
                } else {
                    NotificationFLikeView()
                }
                
            }
            .navigationTitle("")
        }
    }
}

struct NotificationFLikeView: View {
    var body: some View {
        HStack {
            Image("User\(Int.random(in: (1...5)))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(25)
            VStack {
                Text("hfifidfiaflljfldfjdsfj")
                Text("tatesgsfds")
            }
            
            Spacer()
            
            Image("Image\(Int.random(in: (1...5)))")
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
        }
    }
}

struct NotificationFollowView: View {
    var body: some View {
        HStack {
            Image("User\(Int.random(in: (1...5)))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(25)
            VStack {
                Text("hfifidfiaflljfldfjdsfj")
                Text("tatesgsfds")
            }
            
            Spacer()
            
            Button("Follow") {
                //todo
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
