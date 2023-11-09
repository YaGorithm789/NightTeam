//
//  소수만들기.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 소수만들기(_ nums:[Int]) -> Int {
    func isPrime(_ n:Int) -> Bool {
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 { return false }
        }
        return true
    }

    var answer = 0

    for first in 0..<nums.count-2 {
        for second in first+1..<nums.count-1 {
            for third in second+1..<nums.count {
                if isPrime(nums[first]+nums[second]+nums[third]) {
                    answer += 1
                }
            }
        }
    }

    return answer
}

//print(소수만들기([1,2,7,6,4]))
