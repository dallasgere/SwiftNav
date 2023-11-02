//
//  ContentView.swift
//  SwiftNav
//
//  Created by Dallas Gere on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("go home") {
                Home()
            }
        }
    }
}

#Preview {
    ContentView()
}
