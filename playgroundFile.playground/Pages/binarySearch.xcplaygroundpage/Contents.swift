import UIKit

/*
 what is binary search?
 a search algorithm that finds
 the position of a target value within a sorted array.
 repeatedly dividing in half the portion of the list
 that could contain the item,
 until you've narrowed down the possible locations to just one.
 */

var hundreds = [Int]()
for i in 1...100 {
    hundreds.append(i)
}

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("\(middleValue)")
        
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearchForSearchValue(searchValue: 12, array: hundreds))

/*
 50
 25
 12
 true
 */


