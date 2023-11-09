//
//  에디터.swift
//  codingTest
//
//  Created by MARY on 2023/11/09.
//

func 에디터() {
    // 1번째 문풀 - 시간초과
//    var input = readLine()!
//    var cursor = input.count
//    let m = Int(readLine()!)!
//
//    for _ in 0..<m {
//        let command = readLine()!
//        process(command: command)
//    }
//
//    print(input)
    
//    func process(command: String) {
//        switch command.first {
//        case "L":
//            if cursor > 0 {
//                cursor -= 1
//            }
//        case "D":
//            if cursor < input.count {
//                cursor += 1
//            }
//        case "B":
//            if cursor > 0 {
//                input.remove(at: input.index(input.startIndex, offsetBy: cursor-1))
//                cursor -= 1
//            }
//        case "P":
//            let newElement = command.split(separator: " ").map { Character(String($0)) }[1]
//            let index = input.index(input.startIndex, offsetBy: cursor)
//
//            input.insert(newElement, at: index)
//            cursor += 1
//        default:
//            print("error")
//        }
//    }
    
    
    // 2번째 문풀 - 성공
    let input = readLine()!
    let m = Int(readLine()!)!
    var left = input
    var right = [Character]()

    for _ in 0..<m {
        let command = readLine()!
        process(command: command)
    }

    print(left + right.reversed())

    func process(command: String) {
        switch command.first {
        case "L":
            if left.isEmpty == false {
                right.append(left.popLast()!)
            }
        case "D":
            if right.isEmpty == false {
                left.append(right.popLast()!)
            }
        case "B":
            if left.isEmpty == false {
                _ = left.popLast()!
            }
        case "P":
            left.append(command.last!)
        default:
            print("error")
        }
    }
    
    // 건디 linked list - 실패
//    final class Node<T> {
//        let value: T
//        var right: Node?
//        var left: Node?
//
//        init(value: T) {
//            self.value = value
//        }
//    }
//
//    let input = readLine()!.map(String.init)
//    let firstNode = Node(value: String())
//    var cursor: Node? = firstNode
//
//    input.forEach { text in
//        let newNode = Node(value: text)
//
//        cursor?.right = newNode
//        newNode.left = cursor
//        cursor = newNode
//    }
//
//    let lastNode = Node(value: String())
//
//    cursor?.right = lastNode
//    lastNode.left = cursor
//    cursor = lastNode
//
//    let countOfCommand = Int(readLine()!)!
//
//    for _ in 1...countOfCommand {
//        let command = readLine()!.split(separator: " ").map(String.init)
//
//        switch command[0] {
//        case "L":
//            if cursor !== firstNode {
//                cursor = cursor?.left
//            }
//        case "D":
//            if cursor !== lastNode {
//                cursor = cursor?.right
//            }
//        case "B":
//            guard cursor?.left !== firstNode else { continue }
//
//            cursor?.left = cursor?.left?.left
//            cursor?.left?.right = cursor
//        default:
//            let newNode = Node(value: command[1])
//
//            if cursor !== firstNode {
//                cursor?.left?.right = newNode
//                newNode.left = cursor?.left
//                newNode.right = cursor
//                cursor?.left = newNode
//            } else {
//                cursor?.right?.left = newNode
//                newNode.right = cursor?.right
//                newNode.left = cursor
//                cursor?.right = newNode
//                cursor = newNode
//            }
//        }
//    }
//
//    cursor = firstNode.right
//
//    var result = String()
//
//    while cursor !== lastNode {
//        result += cursor!.value
//        cursor = cursor?.right
//    }
//
//    print(result)
}
