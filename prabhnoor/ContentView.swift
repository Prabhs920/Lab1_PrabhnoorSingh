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
