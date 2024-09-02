//
//  ConversationCell.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 31.08.2024.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack{
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
                    Text("Longer messages text to see what happens when I do this")
                        .font(.system(size: 14))
                }
                .foregroundColor(.black)
                .padding(.trailing)
            }
            Divider()
        }
    }
}

#Preview {
    ConversationCell()
}
