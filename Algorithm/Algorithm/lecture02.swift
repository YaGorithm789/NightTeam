//
//  lecture01~02.swift
//  Algorithm
//
//  Created by Rowan on 2023/11/05.
//

func solution(_ n: Int) -> Int {
    var x: Int
    var sum1: Int = 0, sum2: Int = 0, sum3: Int = 0
    
    x = n / 3
    sum1 = (x*x + x) / 2 * 3
    x = n / 5
    sum2 = (x*x + x) / 2 * 5
    x = n / 15
    sum3 = (x*x + x) / 2 * 15
    
    return sum1 + sum2 - sum3
}

// 3강 연습문제 2.
func solution2(arr: [Int], n: Int) -> Bool {
    for index in 0...n-1 {
        let diff = 100 - arr[index]
        
        if diff == arr[index] {
            continue
        }
        
        if arr.contains(diff) {
            return true
        }
    }
    
    return false
}

func start() {
    var input = readLine()!
        .split(separator: " ")
        .map { Int($0)! }
    let n = input.removeLast()
    
    let result = solution2(arr: input, n: n)
    print(result)
}

