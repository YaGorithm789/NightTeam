//
//  BOJ1021.swift
//  Algorithm
//
//  Created by Erick on 2023/11/22.
//  회전하는 큐: https://www.acmicpc.net/problem/1021
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let numList = readLine()!.split(separator: " ").compactMap { Int($0) }
var deque = Array(1...input[0])
var count = 0

for num in numList {
    
    let numIndex = deque.firstIndex(of: num)!
    let frontRange = numIndex
    let backRange = deque.count - numIndex - 1
    
    if deque.first! == num {
        deque.removeFirst()
        continue
    } else if backRange == 0 {
        deque.removeLast()
        count += 1
        continue
    }
    
    if backRange >= frontRange {
        for _ in 0..<frontRange {
            deque.append(deque.removeFirst())
            count += 1
        }
    } else {
        for _ in 0...backRange {
            deque.insert(deque.removeLast(), at: 0)
            count += 1
        }
    }
    
    deque.removeFirst()
}

print(count)
