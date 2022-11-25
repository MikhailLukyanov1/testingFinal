//
//  testsFinal.swift
//  testsFinal
//
//  Created by Luk'yanov, Mikhail (JMOB) on 23/11/2022.
//

import XCTest

class testsFinal: XCTestCase {

    func testBubbleSortWithUnsortedIntegerArray() {


        // ARRANGE
        let sut = SortingAlgorithms()
        let unsortedArray = [7,1,4,3,2,6,5,9,8]
        let expectedResult = [1,2,3,4,5,6,7,8,9]

        // ACT
        let sortedArray = sut.bubbleSort(im_data: unsortedArray)

        // ASSERT
        XCTAssertEqual(sortedArray, expectedResult)
   }
    
    func testMergeSortWithUnsortedIntegerArray() {
        let sut = SortingAlgorithms()
        let unsortedArray = [7,1,4,3,2,6,5,9,8]
        let expectedResult = [1,2,3,4,5,6,7,8,9]

        // ACT
        let sortedArray = sut.mergeSort(unsortedArray)
        
        // ASSERT
        XCTAssertEqual(sortedArray, expectedResult)
    }
    
    func testInsertionSortWithUnsortedIntegerArray() {
        let sut = SortingAlgorithms()
        let unsortedArray = [7,1,4,3,2,6,5,9,8]
        let expectedResult = [1,2,3,4,5,6,7,8,9]

        // ACT
        let sortedArray = sut.insertionSort(unsortedArray)
        
        // ASSERT
        XCTAssertEqual(sortedArray, expectedResult)
    }
    
    
    func testQuickSortWithUnsortedIntegerArray() {
        let sut = SortingAlgorithms()
        let unsortedArray = [7,1,4,3,2,6,5,9,8]
        let expectedResult = [1,2,3,4,5,6,7,8,9]

        // ACT
        let sortedArray = sut.quickSort(unsortedArray)
        
        // ASSERT
        XCTAssertEqual(sortedArray, expectedResult)
    }
    
    
    func testLinearSearchWorksWithArrayAndElementToFind() {
        let sut = SortingAlgorithms()
        let array = [1,2,3,4,5,6,7,8,9]
        let valid = "Y"
    
        // ACT
        let result = sut.linearSearch(data: array, elementToFind: 10)
        
        // ASSERT
        XCTAssertEqual(result, valid)

    }
    
    func testLinearSearchHandlesElementToFindIsNotInArray() {
        let sut = SortingAlgorithms()
        let array = [1,2,3,4,5,6,7,8,9]
        let cannotFind = "N"
    
        // ACT
        let result = sut.linearSearch(data: array, elementToFind: 10)
        
        // ASSERT
        XCTAssertEqual(result, cannotFind)
    
    }
    


    
    func testBinarySearchWithArrayAndElementToFind() {
        let sut = SortingAlgorithms()
        let array = [1,2,3,4,5,6,7,8,9,10]
        let valid = "Y"

        // ACT
        let result = sut.binarySearch(data: array, elementToFind: 1)

        // ASSERT
        XCTAssertEqual(result, valid)

}


}
