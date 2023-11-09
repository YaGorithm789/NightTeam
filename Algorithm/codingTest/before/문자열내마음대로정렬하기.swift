//
//  문자열내마음대로정렬하기.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 문자열내마음대로정렬하기(_ strings:[String], _ n:Int) -> [String] {
    func getChar(in str: String, index: Int = n) -> Character {
        str[str.index(str.startIndex, offsetBy: n)]
    }
    
    return strings.sorted {
        guard getChar(in: $0) != getChar(in: $1) else { return $0 < $1 }
        return getChar(in: $0) < getChar(in: $1)
    }
}

//print(문자열내마음대로정렬하기(["abce", "abcd", "cdx"], 2))
 
