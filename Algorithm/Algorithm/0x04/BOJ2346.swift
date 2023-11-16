//
//  BOJ2346.swift
//  Algorithm
//
//  Created by Erick on 2023/11/13.
//  풍선 터뜨리기: https://www.acmicpc.net/problem/2346
//

final class Node {
    let data: String
    let count: Int
    var front: Node?
    var back: Node?
    
    init(data: String, count: Int, front: Node? = nil, back: Node? = nil) {
        self.data = data
        self.count = count
        self.front = front
        self.back = back
    }
}

let n = Int(readLine()!)!
let countList = readLine()!.split(separator: " ").compactMap { Int($0) }

var pointer: Node?
var last: Node?
var count = 0
var result: [String] = []

for index in 1...n {
    let node = Node(data: String(index), count: countList[index - 1])
    node.front = last
    last?.back = node
    last = node
    
    if index == 1 {
        pointer = node
    } else if index == n {
        node.back = pointer
        pointer?.front = node
    }
}

func moveRight() {
    pointer = pointer?.back
}

func moveLeft() {
    pointer = pointer?.front
}

func popData() -> String {
    let data = pointer?.data
    let frontNode = pointer?.front
    let backNode = pointer?.back
    frontNode?.back = backNode
    backNode?.front = frontNode
    count = (pointer?.count)!
    
    return data!
}

for _ in 1...n {
    if count == 0 {
        result.append(popData())
        continue
    } else if count == 1 {
        moveRight()
        result.append(popData())
        continue
    } else if count == -1 {
        moveLeft()
        result.append(popData())
        continue
    }
    
    for i in 1...abs(count) {
        if count > 0 {
            moveRight()
        } else {
            moveLeft()
        }
        
        if i == abs(count) {
            result.append(popData())
        }
    }
}

print(result.joined(separator: " "))
