//
//  BOJ10845.swift
//  Algorithm
//
//  Created by Erick on 2023/11/18.
//  큐: https://www.acmicpc.net/problem/10845
//

struct Queue {
    private var frontStack: [Int] = []
    private var backStack: [Int] = []
    
    var count = 0
    
    var first: Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if frontStack.isEmpty {
            return backStack.first!
        } else {
            return frontStack.last!
        }
    }
    
    var last: Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if backStack.isEmpty {
            return frontStack.first!
        } else {
            return backStack.last!
        }
    }
    
    var isEmpty: Bool {
        return frontStack.isEmpty && backStack.isEmpty
    }
    
    mutating func push(_ num: Int) {
        backStack.append(num)
        count += 1
    }
    
    mutating func pop() -> Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if frontStack.isEmpty {
            frontStack = backStack.reversed()
            backStack = []
            count -= 1
            return frontStack.popLast()!
        } else {
            count -= 1
            return frontStack.popLast()!
        }
    }
}

let n = Int(readLine()!)!
var queue = Queue()
var result: [Int] = []

for _ in 1...n {
    let input = readLine()!

    switch input {
    case "pop":
        result.append(queue.pop())
    case "size":
        result.append(queue.count)
    case "empty":
        result.append(queue.isEmpty ? 1 : 0)
    case "front":
        result.append(queue.first)
    case "back":
        result.append(queue.last)
    default:
        let num = input.split(separator: " ").compactMap { Int($0) }

        queue.push(num)
    }
}

print(result.map { String($0) }.joined(separator: "\n"))
