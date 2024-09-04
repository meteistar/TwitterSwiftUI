//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 4.09.2024.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
            }
            
            ForEach(0..<9) {
                tweet in
                TweetCell()
            }
            .padding()
            .navigationTitle("batman")
        }
    }
}

#Preview {
    UserProfileView()
}
