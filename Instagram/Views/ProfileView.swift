//
//  ProfileView.swift
//  Instagram
//
//  Created by mengjiao yang on 1/1/23.
//

import SwiftUI

struct ProfileView: View {
    var columns = [
        GridItem(.flexible(), spacing: 0, alignment: .center),
        GridItem(.flexible(), spacing: 0, alignment: .center),
        GridItem(.flexible(), spacing: 0, alignment: .center)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("User1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80, alignment: .center)
                        .cornerRadius(40)
                        .padding(16)
                    CountView()
                }
                
                HStack {
                    Text("Wel. Wl.fdfodfdfldfdk")
                        .padding(.leading, 40)
                    Spacer()
                }
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach((1...50), id: \.self) { num in
                            Image("Image1")
                                .resizable()
                                .frame(width: 120, height: 120, alignment: .center)
                        }
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CountView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("3")
                    Text("Posts")
                }
                
                VStack {
                    Text("12k")
                    Text("Follower")
                }
                
                VStack {
                    Text("300")
                    Text("Following")
                }
            }
            .padding(20)
            
            Button("Edit Profile") {
                //
            }
           
            .frame(width: 200, height: 40, alignment: .center)
            .background(Color.secondary)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
