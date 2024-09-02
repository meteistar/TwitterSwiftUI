//
//  ChatBubble.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 1.09.2024.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft: .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
    
}

#Preview {
    ChatBubble(isFromCurrentUser: false)
}
