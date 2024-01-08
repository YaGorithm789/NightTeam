//
//  BOJ16987.swift
//  Algorithm
//
//  Created by Erick on 2024/01/04.
//  계란으로 계란치기: https://www.acmicpc.net/problem/16987
//

let n = Int(readLine()!)!
var durability: [Int] = []
var weight: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    durability.append(input[0])
    weight.append(input[1])
}

var result = 0

recursion(0)
print(result)

func recursion(_ index: Int) {
    if index == n {
        var eggCount = 0
        
        for d in durability {
            if d <= 0 {
                eggCount += 1
            }
        }
        
        result = max(result, eggCount)
    } else if durability[index] <= 0 {
        recursion(index + 1)
    } else {
        for i in 0..<n {            
            if i != index,
               durability[i] > 0 {
                durability[i] -= weight[index]
                durability[index] -= weight[i]
                
                recursion(index + 1)
                
                durability[i] += weight[index]
                durability[index] += weight[i]
            }
        }
        
        recursion(n)
    }
}
