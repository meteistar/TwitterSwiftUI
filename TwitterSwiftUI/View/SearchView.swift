//
//  SearchView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 29.05.2024.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    UserCell()
                    HStack {Spacer()}
                }
            }.padding(.leading)
        }.navigationBarTitle("Search")
        
    }
}

#Preview {
    SearchView()
}
