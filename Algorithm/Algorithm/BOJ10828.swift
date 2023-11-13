//
//  BOJ10828.swift
//  Algorithm
//
//  Created by Erick on 2023/11/13.
//  스택: https://www.acmicpc.net/problem/10828
//

var stack: [String] = []
var result: [String] = []

func push(_ data: String) {
    stack.append(data)
}

func pop() -> String {
    if stack.isEmpty {
        return "-1"
    } else {
        return stack.popLast()!
    }
}

func size() -> String {
    return String(stack.count)
}

func empty() -> String {
    if stack.isEmpty {
        return "1"
    } else {
        return "0"
    }
}

func top() -> String {
    if stack.isEmpty {
        return "-1"
    } else {
        return stack.last!
    }
}

let input = Int(readLine()!)!

for _ in 1...input {
    let command = readLine()!
    
    switch command {
    case "pop":
        result.append(pop())
    case "size":
        result.append(size())
    case "empty":
        result.append(empty())
    case "top":
        result.append(top())
    default:
        let commandList = command.split(separator: " ").map { String($0) }
        push(commandList.last!)
    }
}

result.forEach {
    print($0)
}
