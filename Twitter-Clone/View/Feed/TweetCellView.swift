//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Bilal Dallali on 17/09/2023.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 20) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10) {
                    Text("Cem")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    + Text("@cem_salta")
                        .foregroundColor(.gray)
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global)
                                .width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                }
            }
            
            HStack(spacing: 50) {
                Button {
                    //
                } label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                .foregroundColor(.gray)
                
                Button {
                    //
                } label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                
                Button {
                    //
                } label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                .foregroundColor(.gray)
                
                Button {
                    //
                } label: {
                    Image("upload")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                .foregroundColor(.gray)



            }
            .padding(.top, 4)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}

var sampleText = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea ratione iure impedit beatae eveniet architecto, ipsam quibusdam voluptates. Fugit ab velit quaerat. Eaque natus autem possimus. Consequuntur, voluptates voluptatibus? Cum alias minima voluptatem cumque voluptas ad nobis eaque aspernatur qui! Culpa eum ea illum excepturi!"
