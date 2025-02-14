//  ContentView.swift
//  prabhnoor
//
//  Created by Prabhnoor Singh 2025-02-13.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
struct ContentView: View {
    @State private var number = Int.random(in: 1...100)
    @State private var isCorrect: Bool? = nil
    @State private var correctAnswers = 0
    @State private var wrongAnswers = 0
    @State private var attempts = 0
    @State private var showResult = false

    var body: some View {
        Text("Hello, World!")
    }
}
var body: some View {
    ZStack {
        // Background Gradient
        LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.6), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        Text("Hello, World!")
    }
}
var body: some View {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.6), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)

        VStack(spacing: 40) {
            // Title Label
            Text("Prime Number Game")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .shadow(radius: 5)
        }
    }
}
