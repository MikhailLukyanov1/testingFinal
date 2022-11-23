//
//  sortingAlgorithms.swift
//  testingFinal
//
//  Created by Luk'yanov, Mikhail (JMOB) on 23/11/2022.
//

import Foundation

postfix func ++ (num: inout Int) -> Int {
  let old_num = num
  num += 1
  return old_num // not a great way to do it, but still...
}

class SortingAlgorithms {
    
    func bubbleSort(im_data: [Int]) -> [Int] {
        
        var data = im_data
        
        var unsorted = true
        while unsorted {
            unsorted = false
            for i in 0...data.count-2 {
                let testVal = data[i]
                if testVal > data[i+1] {
                    data[i] = data[i+1]
                    data[i+1] = testVal
                    unsorted = true
                }
            }
        }
        return data
    }
    
    
    func merge(arr1: [Int], arr2: [Int]) -> [Int] {
        var arr1Index = 0
        var arr2Index = 0
            
        var sortedArray = [Int]()
        
        while arr1Index < arr1.count && arr2Index < arr2.count {
            if arr1[arr1Index] < arr2[arr2Index] {
                sortedArray.append(arr1[arr1Index++])
            } else if arr1[arr1Index] > arr2[arr2Index] {
                sortedArray.append(arr2[arr2Index++])
            } else {
                sortedArray.append(arr1[arr1Index++])
                sortedArray.append(arr2[arr2Index++])
            }
        }

        while arr1Index < arr1.count {
            sortedArray.append(arr1[arr1Index++])
        }
        while arr2Index < arr2.count {
            sortedArray.append(arr2[arr2Index++])
        }

        return sortedArray
    }


    func mergeSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        
        let cutIndex = array.count / 2
        
        let arr1 = mergeSort(Array(array[0..<cutIndex]))
        let arr2 = mergeSort(Array(array[cutIndex..<array.count]))

        return merge(arr1: arr1, arr2: arr2)
    }
    
    

}
