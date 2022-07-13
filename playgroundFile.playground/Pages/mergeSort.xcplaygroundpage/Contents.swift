import UIKit

/*
 what is merge sort?
 take your input array,
 and divide it into two
 and merge it together
 */

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    print(array)
    let middle = array.count/2
    let left = mergeSort(Array(array[0..<middle]))
    let right = mergeSort(Array(array[middle..<array.count]))
    
    return merge(left, right)
}

func merge(_ left: [Int], _ right : [Int]) -> [Int]{
    var leftIdx = 0
    var rightIdx = 0
    
    var result = [Int]()
    result.reserveCapacity(left.count + right.count)
    
    //veryfying left index
    while leftIdx < left.count && rightIdx < right.count {
        if left[leftIdx] < right[rightIdx] {
            result.append(left[leftIdx])
            leftIdx += 1
        } else if left[leftIdx] > right[rightIdx]{
            result.append(right[rightIdx])
            rightIdx += 1
        } else {
            result.append(left[leftIdx])
            result.append(right[rightIdx])
            leftIdx += 1
            rightIdx += 1
        }
        
    }
    
    while leftIdx < left.count {
        result.append(left[leftIdx])
        leftIdx += 1
    }
    
    while rightIdx < right.count {
        result.append(right[rightIdx])
        rightIdx += 1
    }
    
    return result
}

let testArray = [12, 3, 5, 12, 45, 56, 7, 23, 45]
let sorted = mergeSort(testArray)
print(sorted)
//[3, 5, 7, 12, 12, 23, 45, 45, 56]

