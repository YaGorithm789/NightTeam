//
//  BOJ2164.swift
//  Algorithm
//
//  Created by Erick on 2023/11/18.
//  카드2: https://www.acmicpc.net/problem/2164
//

struct Queue {
    private var frontStack: [Int] = []
    private var backStack: [Int] = []
    
    var count = 0
    
    mutating func push(_ num: Int) {
        backStack.append(num)
        count += 1
    }
    
    mutating func pop() -> Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return 0
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

for i in 1...n {
    queue.push(i)
}

while queue.count > 1 {
    queue.pop()
    
    if queue.count == 1{
        break
    }
    
    let num = queue.pop()
    
    queue.push(num)
}

print(queue.pop())
