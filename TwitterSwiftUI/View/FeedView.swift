//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 29.05.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                VStack {
                    ForEach(0..<9) { _ in
                        TweetCell()
                    }
                }.padding()
                
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("Tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}

#Preview {
    FeedView()
}
