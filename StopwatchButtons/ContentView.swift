//
//  ContentView.swift
//  StopwatchButtons
//
//  Created by Chris Eidhof on 14.11.19.
//  Copyright © 2019 Chris Eidhof. All rights reserved.
//

import SwiftUI

struct CircleStyle: ButtonStyle {
    func makeBody(configuration: ButtonStyleConfiguration) -> some View {
        Circle()
            .fill()
            .overlay(
                Circle()
                    .fill(Color.white)
                    .opacity(configuration.isPressed ? 0.3 : 0)
            )
            .overlay(
                Circle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(.white)
                    .padding(4)
            )
            .overlay(
                configuration.label
                    .foregroundColor(.white)
            )
    }
}

struct ContentView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Text("Stop")
            }
            .foregroundColor(.red)
            .frame(width: 75, height: 75)
            Spacer()
            Button(action: {}) {
                Text("Start")
            }
            .foregroundColor(.green)
            .frame(width: 75, height: 75)
        }
        .padding()
        .buttonStyle(CircleStyle())

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
