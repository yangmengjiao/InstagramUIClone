//
//  PostsView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        ForEach((1...5), id: \.self) { num in
            PostView(userName: "User\(num)", imageName: "Image\(num)")
        }
    }
}

struct PostView: View {
    var userName: String
    var imageName: String
    var body: some View {
        VStack {
            PostHeaderView(userName: userName)
            
            // Image
            Image(imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .frame(width: 350, height: 350, alignment: .center)
                .cornerRadius(5)
                .padding()
            
            // Action buttons
            PostActionButtons()
            
            //Like count
            HStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color.red)
                    .padding(2)
                
                Text("32 Likes")
                    .bold()
                    .foregroundColor(Color(.link))
                
                Spacer()
            }
            .padding(.top, 10)
        
            
            // Caption
            HStack {
                // Date
                Text("I wish we have a wonderful 2023, everyone are happy and healthy, #Happy new year")
                    .font(.headline)
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }

            
            
            // Comments
            HStack {
                // Date
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }
           
        }
        .padding()
        
    }
}

struct PostActionButtons: View { //action buttons
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)
            
            Button {
                
            } label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)
            
            Button {
                
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)
            
            Spacer()

        }
    }
}

struct PostHeaderView: View {
    var userName: String
    var body: some View {
        HStack {
            Image(userName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            Text("name")
            
            Spacer()
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
