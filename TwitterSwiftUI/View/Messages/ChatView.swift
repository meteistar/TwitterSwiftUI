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
                    ForEach(0..<15) {_ in
                        HStack{
                            Spacer()
                            
                            Text("Test message text")
                                .padding()
                                .background(Color.blue)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .foregroundColor(.white)
                                .padding(.horizontal)
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
