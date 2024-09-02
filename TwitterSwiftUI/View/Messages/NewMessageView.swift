//
//  NewMessageView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 2.09.2024.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack {Spacer()}
                    
                    Button(action: {
                        self.show.toggle()
                        self.startChat.toggle()
                    }, label: {
                        UserCell()
                    })
                }
            }.padding(.leading)
        }.navigationBarTitle("Search")
        
    }
}

#Preview {
    NewMessageView(show: .constant(true), startChat: .constant(true))
}
