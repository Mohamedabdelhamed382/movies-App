//
//  Double + ManagingNumber    .swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 13/03/2022.
//

import Foundation
extension Double{
    func integerPart() -> String{
        let result = floor(abs(self)).description.dropLast(2).description
        let plusMinus = self < 0 ? "-" : ""
        return  plusMinus + result
    }
    func fractionalPart(_ withDecimalQty:Int = 2) -> String {
        let valDecimal = self.truncatingRemainder(dividingBy: 1)
        let formatted = String(format: "%.\(withDecimalQty)f", valDecimal)
        let dropQuantity = self < 0 ? 3:2
        return formatted.dropFirst(dropQuantity).description
    }
}
