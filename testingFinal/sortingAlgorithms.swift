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
    
    func insertionSort(_ data: [Int]) -> [Int]{
        var randomArray = data
        for i in 1..<randomArray.count {
          let num = randomArray[i]
          // j is numbers before 'num'
          var j = i - 1
          while j >= 0 && randomArray[j] > num {
            // swap round
            randomArray[j + 1] = randomArray[j]
            // decrement to move back in array
            j = j - 1
          }
          // put num in correct place
          randomArray[j + 1] = num
        }
        
        return randomArray
    }
    
    func quickSort(_ array: [Int]) -> [Int] {

      var lowerVal = [Int]()
      var equalVal = [Int]()
      var higherVal = [Int]()

      if array.count > 1 {
        let count = array.count

        let pivotValue  = (array[0] + array[count / 2] +  array[count - 1]) / 3


        for i in array {
          if i < pivotValue {
            lowerVal.append(i)

          }
          else if i == pivotValue {
            equalVal.append(i)
          }

          else if i > pivotValue {
            higherVal.append(i)
          }
        }
        return quickSort(lowerVal) + equalVal+quickSort(higherVal)
                                                
      }
      else {
         return array
      }

    }
    
    func linearSearch(data: [Int], elementToFind: Int) -> String {

        for i in 0 ... data.count-1 {
            print(data[i])
            if data[i] == elementToFind {
                return "Y"
            }
        }
        
        return "N"
    }
    
    func binarySearch(data: [Int], elementToFind: Int) -> String {
        //make function recursive
        var makeArray = []
        if elementToFind < data[data.count/2] {
            for i in 0..<data[data.count/2]-1 {
                makeArray.append(data[i])
            }
        }


    }

}
