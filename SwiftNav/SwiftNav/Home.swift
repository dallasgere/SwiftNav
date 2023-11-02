//
//  Home.swift
//  SwiftNav
//
//  Created by Dallas Gere on 11/1/23.
//

import SwiftUI

struct Home: View {
    private var bgColors: [Color] = [ .indigo, .yellow, .green, .orange, .brown ]
    @State private var path: [Color] = []
 
    var body: some View {
        NavigationStack(path: $path) {
            List(bgColors, id: \.self) { bgColor in
 
                NavigationLink(value: bgColor) {
                    Text(bgColor.description)
                }
            }
            .listStyle(.plain)
            .navigationDestination(for: Color.self) { color in
                VStack {
                    Text("\(path.count), \(path.description)")
                        .font(.headline)
                    HStack {
                        ForEach(path, id: \.self) { color in
                            color
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                    List(bgColors, id: \.self) { bgColor in
                        NavigationLink(value: bgColor) {
                            Text(bgColor.description)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Color")
        }
    }
}

#Preview {
    Home()
}
