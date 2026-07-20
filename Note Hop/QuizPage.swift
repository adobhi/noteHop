import SwiftUI

// 1. Define the Question Model
struct Question: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String // The name of the image asset in Xcode
    let options: [String]
    let correctOptionIndex: Int // 0-indexed representation of the correct choice
}

struct QuizPage: View {
    
    
    // 3. Quiz State Variables
    @State private var currentQuestionIndex = 0
    @State private var selectedOptionIndex: Int? = nil
    @State private var hasSubmitted = false
    @State private var score = 0
    @State private var quizComplete = false
    
    @State var questionBank: [Question]
    
    var body: some View {
        ZCornerBackground {
            if quizComplete {
                // Score Summary Page
                VStack(spacing: 24) {
                    Text("Quiz Complete! 🎉")
                        .cuteFont(50)
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                    
                    Text("You scored \(score) out of \(questionBank.count)")
                        .cuteFont(30)
                        .font(.title2)
                        .foregroundColor(.secondary)
                    
                    Button(action: restartQuiz) {
                        Text("Try Again")
                            .cuteFont(30)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("lightColor"))
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 40)
                }
                .padding()
            } else {
                // Active Quiz Page
                let currentQuestion = questionBank[currentQuestionIndex]
                
                VStack(spacing: 20) {
                    // Header / Progress Tracker
                    HStack {
                        Text("Musical Notation")
                            .cuteFont(25)
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Q: \(currentQuestionIndex + 1)/\(questionBank.count)")
                            .cuteFont(25)
                            .font(.headline)
                            //.bold()
                    }
                    .padding(.horizontal)
                    
                    // Question Title
                    Text(currentQuestion.title)
                        .cuteFont(30)
                        .font(.title2)
                        //.bold()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    // --- Image Section ---
                    // This dynamically loads the note image based on the question asset name
                    
                    Image(currentQuestion.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .background(Color(.systemGray6))
                        .cornerRadius(16)
                        .shadow(radius: 2)
                        .padding(.horizontal)
                    
                    // Options List
                    VStack(spacing: 12) {
                        ForEach(0..<currentQuestion.options.count, id: \.self) { index in
                            Button(action: {
                                if !hasSubmitted { selectedOptionIndex = index }
                            }) {
                                HStack {
                                    Text(currentQuestion.options[index])
                                        .cuteFont(20)
                                        .font(.body)
                                        //.bold()
                                    Spacer()
                                    
                                    // Visual feedback markers
                                    if hasSubmitted {
                                        if index == currentQuestion.correctOptionIndex {
                                            Image(systemName: "checkmark.circle.fill").foregroundColor(Color("heavyAqua"))
                                        } else if selectedOptionIndex == index {
                                            Image(systemName: "xmark.circle.fill").foregroundColor(.red)
                                        }
                                    } else if selectedOptionIndex == index {
                                        Image(systemName: "circle.fill").foregroundColor((Color("heavyAqua")))
                                    } else {
                                        Image(systemName: "circle").foregroundColor(.secondary)
                                    }
                                }
                                .padding()
                                .background(optionBackgroundColor(for: index, currentQuestion: currentQuestion))
                                .foregroundColor(.primary)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(optionBorderColor(for: index), lineWidth: 2)
                                )
                            }
                            .disabled(hasSubmitted)
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    // Action Button (Check Answer -> Continue)
                    Button(action: {
                        if !hasSubmitted {
                            checkAnswer(currentQuestion: currentQuestion)
                        } else {
                            advanceQuestion()
                        }
                    }) {
                        Text(hasSubmitted ? "Continue" : "Check Answer")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(selectedOptionIndex == nil ? Color.gray : Color("heavyAqua"))
                            .cornerRadius(14)
                    }
                    .disabled(selectedOptionIndex == nil)
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
        }
        .onAppear {
            questionBank.shuffle()
        }
    }
    
    // MARK: - Helper Logic Methods
    
    private func checkAnswer(currentQuestion: Question) {
        if selectedOptionIndex == currentQuestion.correctOptionIndex {
            score += 1
        }
        hasSubmitted = true
    }
    
    private func advanceQuestion() {
        if currentQuestionIndex + 1 < questionBank.count {
            currentQuestionIndex += 1
            // Reset question states for the next page
            selectedOptionIndex = nil
            hasSubmitted = false
        } else {
            quizComplete = true
        }
    }
    
    private func restartQuiz() {
        currentQuestionIndex = 0
        selectedOptionIndex = nil
        hasSubmitted = false
        score = 0
        quizComplete = false
        questionBank.shuffle() // Keeps it fresh every retry!
    }
    
    // MARK: - Styling Helpers
    
    private func optionBackgroundColor(for index: Int, currentQuestion: Question) -> Color {
        if hasSubmitted {
            if index == currentQuestion.correctOptionIndex {
                return Color.green.opacity(0.15)
            } else if selectedOptionIndex == index {
                return Color.red.opacity(0.15)
            }
        } else if selectedOptionIndex == index {
            return Color("lightAqua").opacity(0.1)
        }
        return Color(.systemBackground)
    }
    
    private func optionBorderColor(for index: Int) -> Color {
        if selectedOptionIndex == index && !hasSubmitted {
            return Color("heavyAqua")
        }
        return Color(.systemGray4)
    }
}

// A simple container wrapper for layout consistency
struct ZCornerBackground<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) { self.content = content() }
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            content
        }
    }
}

#Preview {
    QuizPage(questionBank: QuestionBanks.bassQuestionsFGA)
}
