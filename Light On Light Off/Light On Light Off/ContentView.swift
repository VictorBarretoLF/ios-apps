//
//  ContentView.swift
//  Light On Light Off
//
//  Created by victor barreto on 03/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isLightOn: Bool = true
    @State private var lightString: String = "On"
    var body: some View {
        ZStack {
            (isLightOn ? Color.white : Color.black)
                .ignoresSafeArea()
            
            VStack {
                Text(isLightOn ? "Light On 💡" : "Light Off 🌙")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(isLightOn ? .black : .white)
                
                Button {
                    isLightOn.toggle()
                } label: {
                    Text(isLightOn ? "Turn Light Off" : "Turn Light On")
                        .font(.title2)
                        .padding()
                        .frame(width: 220)
                        .background(isLightOn ? Color.black : Color.white)
                        .foregroundColor(isLightOn ? .white : .black)
                        .cornerRadius(12)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
