//
//  BOJ1744.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  수 묶기: https://www.acmicpc.net/problem/1744
//

let n = Int(readLine()!)!
var plusNums: [Int] = []
var minusNums: [Int] = []
var result = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    if input > 1 { plusNums.append(input) }
    else if input == 1 { result += 1}
    else { minusNums.append(input) }
}

plusNums.sort(by: > )
minusNums.sort(by: < )

if plusNums.count % 2 == 1 { result += plusNums.removeLast() }
if minusNums.count % 2 == 1 { result += minusNums.removeLast() }

while plusNums.count > 0 || minusNums.count > 0 {
    if plusNums.count > 0 { result += plusNums.removeLast() * plusNums.removeLast() }
    if minusNums.count > 0 { result += minusNums.removeLast() * minusNums.removeLast() }
}

print(result)
