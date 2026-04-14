//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Marwan Mekhamer on 09/04/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var cantries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var showingTitle = ""
    
    @State private var score = 0
    @State private var askques = 0
    
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Spacer()

            VStack {
                Spacer()
                
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                VStack(spacing: 15) {
                    
                    VStack {
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(cantries[correctAnswer])
                            .font(.largeTitle.weight(.bold))
                    }

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                            
                        } label: {
                            Image(cantries[number])
                            
                        }
                        
                    }
                    
                }
                
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(.regularMaterial)
                .cornerRadius(20)
                
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                    .alert(showingTitle, isPresented: $showingScore) {
                        Button("Continue", action: askQuestions)
                    } message: {
                        Text("Your score is \(score)")
                    }
            }
            .padding()
            
            
        }
    }
    
    func flagTapped(_ number: Int) {
        if correctAnswer == number {
            showingTitle = "Correct! 🥇"
            score += 1
        } else {
            showingTitle = "Wrong!, That's the flag of \(cantries[number])"
        }
        
        askques += 1
        showingScore = true
    }
    
    func askQuestions() {
        
        if askques >= cantries.count {
            showingTitle = "Game Complete! 🏆"
            showingScore = true
            score = 0
            askques = 0
            cantries.shuffle()
            correctAnswer = Int.random(in: 0..<3)
        }
        
        
        cantries.shuffle()
        correctAnswer = Int.random(in: 0..<3)
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
