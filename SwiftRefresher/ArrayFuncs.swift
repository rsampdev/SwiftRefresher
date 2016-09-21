//
//  ArrayFuncs.swift
//  SwiftRefresher
//
//  Created by Rodney Sampson on 9/20/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

public func productsDiff(_ list: [Int]) -> [Int] {
    var newList: [Int] = []
    var product = 1
    
    for index in list.startIndex..<list.count {
        product = 1
        for otherIndex in list.startIndex..<list.count {
            if index != otherIndex {
                product *= list[otherIndex]
            }
            
            if otherIndex == list.count - 1 {
                newList.append(product)
            }
        }
    }
    return newList
}

public func dedupeSortedArray(_ list: [Int]) -> ([Int], Int) {
    var newList: [Int] = []
    for index in list.startIndex..<list.count {
        if newList.contains(list[index]) {
            continue
        } else {
            newList.append(list[index])
        }
    }
    return (newList, newList.count)
}
