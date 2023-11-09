//
//  BOJ1406.swift
//  Algorithm
//
//  Created by 표현수 on 2023/11/09.
//  에디터: https://www.acmicpc.net/problem/1406
//

// MARK: - 연결리스트 풀이
//final class Node {
//    var front: Node?
//    var back: Node?
//    var content: Character
//
//    init(front: Node? = nil, back: Node? = nil, content: Character) {
//        self.front = front
//        self.back = back
//        self.content = content
//    }
//}
//
//final class LinkedList {
//    var first: Node?
//    var last: Node?
//    var count = 0
//    var isEmpty: Bool {
//        return first == nil && last == nil ? true : false
//    }
//
//    func delete(node: Node) {
//        if node.front == nil, node.back == nil {
//            first = nil
//            last = nil
//        } else if node.front == nil {
//            let backNode = node.back
//            backNode?.front = nil
//
//            first = backNode
//        } else if node.back == nil {
//            let frontNode = node.front
//            frontNode?.back = nil
//
//            last = frontNode
//        } else {
//            let frontNode = node.front
//            let backNode = node.back
//
//            frontNode?.back = backNode
//            backNode?.front = frontNode
//        }
//
//        count -= 1
//    }
//
//    func insertBack(at node: Node, _ text: Character) {
//        if let backNode = node.back {
//            let newNode = Node(front: node, back: backNode, content: text)
//            node.back = newNode
//            backNode.front = newNode
//        } else {
//            let newNode = Node(front: node, content: text)
//            node.back = newNode
//            last = newNode
//        }
//
//        count += 1
//    }
//
//    func insertFront(at node: Node, _ text: Character) {
//        if let frontNode = node.front {
//            let newNode = Node(front: frontNode, back: node, content: text)
//            node.front = newNode
//            frontNode.back = newNode
//        } else {
//            let newNode = Node(back: node, content: text)
//            node.front = newNode
//            first = newNode
//        }
//
//        count += 1
//    }
//
//    func append(text: Character) {
//        if isEmpty {
//            let newNode = Node(content: text)
//
//            first = newNode
//            last = newNode
//        } else {
//            let lastNode = last
//            let newNode = Node(front: lastNode, content: text)
//
//            lastNode?.back = newNode
//            last = newNode
//        }
//
//        count += 1
//    }
//}
//
//let input = readLine()!
//let linkedList = LinkedList()
//let comendCount = Int(readLine()!)!
//
//for str in input {
//    linkedList.append(text: str)
//}
//
//var cursor: (Node?, Node?) = (linkedList.last, nil)
//
//for _ in 1...comendCount {
//    let comend = readLine()!.split(separator: " ").map { Character(String($0)) }
//
//    switch comend.first! {
//    case "L":
//        if cursor.0 == nil {
//            continue
//        }
//
//        cursor = (cursor.0?.front, cursor.0)
//    case "D":
//        if cursor.1 == nil {
//            continue
//        }
//
//        cursor = (cursor.1, cursor.1?.back)
//    case "B":
//        if let node = cursor.0 {
//            linkedList.delete(node: node)
//            cursor = (cursor.0?.front, cursor.1)
//        }
//    case "P":
//        if let node = cursor.0 {
//            linkedList.insertBack(at: node, comend.last!)
//            cursor = (cursor.0?.back, cursor.1)
//        } else if let node = cursor.1 {
//            linkedList.insertFront(at: node, comend.last!)
//            cursor = (cursor.1?.front, cursor.1)
//        }
//    default :
//        break
//    }
//}
//
//for _ in 1...linkedList.count {
//    if let node = linkedList.first {
//        print(node.content, terminator: "")
//        linkedList.delete(node: node)
//    } else {
//        break
//    }
//}

// MARK: - 맞는 풀이
var left = readLine()!
var right = ""
let commendCount = Int(readLine()!)!

for _ in 1...commendCount {
    let input = readLine()!

    switch input {
    case "L":
        if !left.isEmpty {
            right.append(left.popLast()!)
        }
    case "D" :
        if !right.isEmpty {
            left.append(right.popLast()!)
        }
    case "B" :
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(input.last!)
    }
}

print(left + right.reversed())
