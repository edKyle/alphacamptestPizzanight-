//: Playground - noun: a place where people can play

import UIKit

// SwiftPractice


func sorArray(array1:[Int], array2:[Int]) -> [Int]{
    
    var array3 = array1 + array2
    print(array3)
    
    var k:Int
    
    for  j in 0...array3.count-1{
        for  i in 0...array3.count-1{
            if array3[j] < array3[i]{
                k = array3[j]
                array3[j] = array3[i]
                array3[i] = k
            }
        }
    }
    
    
    
    
    return array3
    
}

sorArray([1,4,6,75,4,3,4,5,3], array2: [3,2,4])
