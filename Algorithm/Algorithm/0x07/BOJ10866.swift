//
//  BOJ10866.swift
//  Algorithm
//
//  Created by Erick on 2023/11/22.
//  덱: https://www.acmicpc.net/problem/10866
//

let n = Int(readLine()!)!
var deque = Array(repeating: -1, count: 2*n+1)
var head = n
var tail = n + 1

func pushFront(_ num: Int) {
    deque[head] = num
    head -= 1
}

func pushBack(_ num: Int) {
    deque[tail] = num
    tail += 1
}

func popFront() -> Int {
    let index = head + 1
    
    if index == tail {
        return -1
    } else {
        head += 1
        return deque[index]
    }
}

func popBack() -> Int {
    let index = tail - 1
    
    if index == head {
        return -1
    } else {
        tail -= 1
        return deque[index]
    }
}

func front() -> Int {
    return empty() == 1 ? -1 : deque[head + 1]
}

func back() -> Int {
    return empty() == 1 ? -1 : deque[tail - 1]
}

func size() -> Int {
    return tail - head - 1
}

func empty() -> Int {
    return tail - 1 == head ? 1 : 0
}

var result: [Int] = []

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input[0] {
    case "push_front":
        let num = Int(input[1])!
        pushFront(num)
    case "push_back":
        let num = Int(input[1])!
        pushBack(num)
    case "pop_front":
        let num = popFront()
        result.append(num)
    case "pop_back":
        let num = popBack()
        result.append(num)
    case "size":
        let num = size()
        result.append(num)
    case "empty":
        let num = empty()
        result.append(num)
    case "front":
        let num = front()
        result.append(num)
    case "back":
        let num = back()
        result.append(num)
    default:
        break
    }
}

print(result.map { String($0) }.joined(separator: "\n"))
