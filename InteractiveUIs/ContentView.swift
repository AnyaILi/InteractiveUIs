//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var TextTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(TextTitle)
                .font(.title)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                TextTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
