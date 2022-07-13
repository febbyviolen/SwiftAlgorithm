import Foundation

/*
 
 */

var sample = "let's reverse this sentence"

func reverseWordInSentence(sentence: String) -> String {
    let newSentence = sample
        .components(separatedBy: " ")
        .map { $0.reversed() }
        .joined(separator: " ")
    
    return String(newSentence)
}

print(reverseWordInSentence(sentence: sample))
//s'tel esrever siht ecnetnes
