//
//  ContentView.swift
//  Counter Step
//
//  Created by victor barreto on 01/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    var body: some View {
        VStack(spacing: 40) {
            Text("\(counter)")
                .font(.system(size: 200, weight: .bold))
                .lineLimit(1)
                .minimumScaleFactor(0.3)
            
            HStack(spacing: 40) {
                
                Button("-") {
                    counter -= 1
                }
                .font(.system(size: 80))
                
                Button("+") {
                    counter += 1
                }
                .font(.system(size: 80))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
