//
//  TweetCell.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 29.05.2024.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top){
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                
                VStack(alignment: .leading,spacing: 4) {
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        
                        Text("@batman •")
                            .foregroundColor(.gray)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    
                    Text("It's not who I am underneath, but what I do that defines me")
                    
                }
            }
            .padding(.bottom)
              .padding(.trailing)
            
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
            }
            .padding(.horizontal)
            .foregroundColor(.gray)
           
            Divider()
        }
        .padding(.leading, -16)
    }
}

#Preview {
    TweetCell()
}
