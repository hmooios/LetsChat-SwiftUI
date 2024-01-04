//
//  MessageView.swift
//  Let's Chat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 04/01/2024.
//

import SwiftUI

struct MessageView: View {
    @StateObject var messageViewModel = MessageViewModel()
    var body: some View {
        Text("\(messageViewModel.user?.email ?? "")")
    }
    
    
}

#Preview {
    MessageView()
}
