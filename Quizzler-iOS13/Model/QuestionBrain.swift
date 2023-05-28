//
//  QuestionBrain.swift
//  Quizzler-iOS13
//
//  Created by Yasin Ağbulut on 26.05.2023.

//

import Foundation
struct QuestionBrain {
    let quiz = [
        Quesiton(q: "aa genotipli bir birey Aa genotipli başka bir birey ile evlenirse Aa fenotipte çocuğu olma ihtimali 1/4'tür.", a: "True"),
        Quesiton(q: "A fenotipte biri aa genotipte biri ile evlenirse doğacak çocuğu kesinlikle A fenotipte olur.", a: "True"),
        Quesiton(q: "X geni ile taşınan bir hastalığa sahip bireyin doğacak çocuklarının tamamı bu hastalığı taşır.", a: "True"),
        Quesiton(q: "Y geni ile taşınan tüm hastalıklar erkek çocuklarında kesinlikle görülür.", a: "True")
    ]
    
    var questionNumber = 0
    
    mutating func checkAnswer(_ userAnswer : String)-> Bool{
        
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
            
        }
        else {
            score -= 1
            return false
            
        }
        
    }
    
    func getQuestionText()-> String {
        return quiz[questionNumber].text
    }
    
    func getProgress()-> Float {
        let progress = Float(questionNumber+1) / Float(quiz.count)
        return progress
        
    }
    mutating func nextQuestion() {
        
        
        if questionNumber < 3  {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    var score = 0
   
    func getscore() -> Int {
        return score
    }
        
    
}
