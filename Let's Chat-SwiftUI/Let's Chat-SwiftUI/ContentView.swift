//
//  ContentView.swift
//  Let's Chat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Let's Chat")
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Register")
                }
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Login")
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
