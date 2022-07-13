import UIKit

/*
 what is factorial?
 multiplied number with the factorial value of the previous number.
 factorial seven is written 7!, meaning 1 × 2 × 3 × 4 × 5 × 6 × 7.
 */

func factorialOfValue(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    for i in 1...value{
        product = product * i
    }
    return product
}

print(factorialOfValue(value: 3))
//6


func recursiveFactorialOfValue(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    return value * recursiveFactorialOfValue(value: value - 1)
}

print(recursiveFactorialOfValue(value: 5))
//120
