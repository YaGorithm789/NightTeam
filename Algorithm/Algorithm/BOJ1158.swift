//
//  BOJ1158.swift
//  Algorithm
//
//  Created by Erick on 2023/11/12.
//  요세푸스 문제: https://www.acmicpc.net/problem/1158
//

final class Node {
    let data: String
    var front: Node?
    var back: Node?
    
    init(data: String, front: Node? = nil, back: Node? = nil) {
        self.data = data
        self.front = front
        self.back = back
    }
}

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input.first!
let k = input.last!

var pointer: Node?
var last: Node?
var result: [String] = []

for index in 1...n {
    let node = Node(data: String(index))
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

for _ in 1...input.first! {
    
    if k == 1 {
        for index in 1...n {
            result.append(String(index))
        }
        
        break
    }
    
    for i in 1...k - 1 {
        pointer = pointer?.back
        
        if i == k - 1 {
            let data = pointer?.data
            result.append(data!)
            
            let frontNode = pointer?.front
            let backNode = pointer?.back
            frontNode?.back = backNode
            backNode?.front = frontNode
            
            pointer = backNode
        }
    }
}

print("<" + result.joined(separator: ", ") + ">")
