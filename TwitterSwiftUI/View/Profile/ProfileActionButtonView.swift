//
//  ProfileActionButtonView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 4.09.2024.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(40 / 2)
            })
        } else {
            HStack {
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(40 / 2)
                })
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(40 / 2)
                })
            }
        }

        
    }
}

#Preview {
    ProfileActionButtonView(isCurrentUser: false)
}
