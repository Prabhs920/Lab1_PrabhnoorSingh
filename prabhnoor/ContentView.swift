//
//  ContentView.swift
//  prabhnoor
//
//  Created by Prabhnoor Singh 2025-02-13.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Int.random(in: 1...100)
    @State private var isCorrect: Bool? = nil
    @State private var correctAnswers = 0
    @State private var wrongAnswers = 0
    @State private var attempts = 0
    @State private var showResult = false

    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.6), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                // Title Label
                Text("Prime Number Game")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                // Displaying the number
                Text("\(number)")
                    .font(.system(size: 100, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                // Instruction Text
                Text("Is this number Prime?")
                    .font(.title3)
                    .foregroundColor(.white)
                    .opacity(0.8)
                
                HStack(spacing: 20) {
                    // Prime Button
                    Button(action: {
                        checkAnswer(isPrime: true)
                    }) {
                        Text("Prime")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    }
                    
                    // Not Prime Button
                    Button(action: {
                        checkAnswer(isPrime: false)
                    }) {
                        Text("Not Prime")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    }
                }
                .padding(.horizontal, 30)
                
                // Result Image
                if let result = isCorrect {
                    Image(systemName: result ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .foregroundColor(result ? .green : .red)
                        .shadow(radius: 10)
                        .padding()
                }
                
                Spacer()
            }
        }
        .alert("Game Summary", isPresented: $showResult) {
            Button("OK", action: resetGame)
        } message: {
            Text("Correct: \(correctAnswers)\nWrong: \(wrongAnswers)")
        }
    }

    // Prime Number Check
    func isPrime(_ num: Int) -> Bool {
        guard num > 1 else { return false }
        for i in 2..<num where num % i == 0 {
            return false
        }
        return true
    }
    
    // Check User's Answer
    func checkAnswer(isPrime: Bool) {
        if isPrime == true {
            correctAnswers += 1
            isCorrect = true
        } else {
            wrongAnswers += 1
            isCorrect = false
        }
        
        attempts += 1
        if attempts % 10 == 0 {
            showResult = true
        } else {
            nextRound()
        }
    }
    
    // Start a New Round
    func nextRound() {
        number = Int.random(in: 1...100)
        isCorrect = nil
    }
    
    // Reset the Game
    func resetGame() {
        correctAnswers = 0
        wrongAnswers = 0
        attempts = 0
        nextRound()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
