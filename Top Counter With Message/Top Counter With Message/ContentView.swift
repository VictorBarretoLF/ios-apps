//
//  ContentView.swift
//  Top Counter With Message
//
//  Created by victor barreto on 02/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var message = "Start tapping 👇"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Taps: \(counter)")
                .font(.largeTitle)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.3)
            
            Text(message)
                .font(.title2)
            
            Button("Tap Me") {
                incrementCounter()
            }
            .padding()
            .font(.title3)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
    
    private func incrementCounter() {
        counter += 1
        updateMessage()
    }
    
    private func updateMessage() {
        if counter < 5 {
            message = "Keep going!"
        } else if counter < 10 {
            message = "Nice!"
        } else if counter < 25 {
            message = "You're warming up 🔥"
        } else if counter < 50 {
            message = "Good rhythm!"
        } else if counter < 100 {
            message = "Impressive 💪"
        } else if counter < 200 {
            message = "You're on fire 🔥🔥"
        } else if counter < 300 {
            message = "Unstoppable!"
        } else if counter < 400 {
            message = "This is dedication 😤"
        } else if counter < 500 {
            message = "Halfway to greatness!"
        } else if counter < 700 {
            message = "Legendary effort 🏆"
        } else if counter < 900 {
            message = "Almost mythical ✨"
        } else if counter < 1000 {
            message = "So close... 👀"
        } else if counter < 10_000 {
            message = "1,000 TAPS! YOU ARE A MACHINE 🤖🚀"
        } else {
            message = "10,000 TAPS!!! ABSOLUTE LEGEND 👑🔥"
        }
    }

}

#Preview {
    ContentView()
}
