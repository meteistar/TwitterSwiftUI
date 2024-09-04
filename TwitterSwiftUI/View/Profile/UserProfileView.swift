//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 4.09.2024.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
            }
            
            .navigationTitle("batman")
        }
    }
}

#Preview {
    UserProfileView()
}
