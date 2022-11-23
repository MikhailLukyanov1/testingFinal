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
    
}


