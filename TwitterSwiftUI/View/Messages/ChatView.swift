//
//  ChatView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 31.08.2024.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(MOCK_MESSAGES) {message in
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
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    
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
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

#Preview {
    ChatView()
}
