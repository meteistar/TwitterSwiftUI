//
//  UserCell.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 29.05.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(.infinity)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    UserCell()
}
