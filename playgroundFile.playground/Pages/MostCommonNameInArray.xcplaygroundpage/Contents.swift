import UIKit

/*
 Finding the most common name in an array
 */

func mostCommonNameInArray(_ array: [String]) -> String{
    
    var nameCountDictionary = [String: Int]()
    
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDictionary.keys{
        if mostCommonName == ""{
            mostCommonName = key
        } else {
            let count = nameCountDictionary[key]
            if count! > nameCountDictionary[mostCommonName]! {
                mostCommonName = key
            }
        }
    }
    return mostCommonName
}

print(mostCommonNameInArray(["Bob", "Sally", "Keiko", "Sam", "Bob"]))

//Bob
