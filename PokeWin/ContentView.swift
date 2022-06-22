//
//  ContentView.swift
//  PokeWin
//
//  Created by caramel melmel on 21/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0

    var body: some View {
        VStack {
            // Bulbasaur
            Image("bulbasaur").resizable().aspectRatio(contentMode: .fit).padding(18.0)
            // counter display
            Text("Counter value: \(self.counter)")
                .font(.headline)
                .foregroundColor(.blue)
                .padding(14.0)

            // button
            HStack {
                Button("Caught My Pokemon", action: {
                    self.counter += 1
                })
                .padding(10.0).overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 2)
                )

            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
