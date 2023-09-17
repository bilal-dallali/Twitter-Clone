//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by Bilal Dallali on 16/09/2023.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: "Hi Tim", tweetImage: "post")
                Divider()
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
