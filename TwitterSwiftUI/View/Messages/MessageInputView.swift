//
//  MessageInputView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 31.08.2024.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack{
            TextField("message", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
        }
    }
}

#Preview {
    MessageInputView(messageText: .constant("Message.."))
}
