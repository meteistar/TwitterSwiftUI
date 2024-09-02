//
//  MessageView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 2.09.2024.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    
    var body: some View {
        HStack{
            if message.isCurrentUser {
                Spacer()
                
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }else {
                HStack(alignment: .bottom){
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                    
                }.padding(.horizontal)
                Spacer()
            }
        }
    }
}
#Preview {
    MessageView(message: MOCK_MESSAGES[0])
}
