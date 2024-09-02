//
//  ConversationsView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 31.08.2024.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {
                    
                })
            
            ScrollView {
                VStack {
                    ForEach(0..<9) { _ in
                        NavigationLink(
                            destination:
                                ChatView(),
                            label: {
                                ConversationCell()
                            })
                    }
                }.padding()
                
            }
            
            Button(action: { self.isShowingNewMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                    NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
            })
        }
    }
}

#Preview {
    ConversationsView()
}
