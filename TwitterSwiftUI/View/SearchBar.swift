//
//  SearchBar.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 29.05.2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Searchin...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 10)
        
        
    }
}

#Preview {
    SearchBar(text: .constant("Search..."))
}
