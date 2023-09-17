//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Bilal Dallali on 17/09/2023.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    //
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Button {
                    //
                } label: {
                    Text("Tweet")
                        .padding()
                }
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
