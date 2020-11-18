//
//  CalculatorController.swift
//  ios-calculator
//
//  Created by Joseph Cottingham on 11/16/20.
//

import Foundation
import SwiftUI

class CalendarViewController : ObservableObject {
    
    @Published var displayValue = "0"
        
    var numNew : Bool = true
    var numMode : Bool = true
    var operation : ButtonType?
    var olderNumber : String = "0"
    var newNumber : String = ""

    init() {
    }

    func numberPress(buttonType:ButtonType) {
        if self.numNew {
            self.olderNumber = self.newNumber
            self.newNumber = ""
        }
        if self.numMode == true {
            let tempNumVal = buttonType.getAssociatedNumValue()
            if tempNumVal == "." && decAddValid(numberString: self.newNumber) != true{
                return
            }
            self.newNumber.append(tempNumVal)
            self.numNew = false
        }
        print("numNew:")
        print(String(numNew))
        print("numMode:")
        print(String(numMode))
        print("olderNumber: ")
        print(self.olderNumber)
        print("newNumber: ")
        print(self.newNumber)
        
        self.displayValue = self.newNumber
    }
    
    func operationPress(buttonType:ButtonType) {
        switch buttonType {
        case .clear:
            self.numNew = true
            self.numMode = true
            self.operation = nil
            self.olderNumber = "0"
            self.newNumber = "0"
            
        case .posNeg:
            if self.numNew != true {
                if self.newNumber.prefix(1) != "-" {
                    self.newNumber = String(format: "-%@", self.newNumber)
                } else {
                    self.newNumber = String(self.newNumber.suffix(1))
                }
            }
        case .percent:
            if self.numNew != true {
                self.newNumber = String(Double(self.newNumber) ?? 0 / 100.00)
            }
        case .divide:
            self.operation = ButtonType.divide
            self.numNew = true
        case .multiple:
            self.operation = ButtonType.multiple
            self.numNew = true
        case .subtract:
            self.operation = ButtonType.subtract
            self.numNew = true
        case .add:
            self.operation = ButtonType.add
            self.numNew = true
        default:
            return
        }
        self.displayValue = self.newNumber
    }
    
    func equalsOperation() {
        switch self.operation {
            case .divide:
                self.newNumber = String(Double(self.olderNumber)! / Double(self.newNumber)! )
            case .multiple:
                self.newNumber = String(Double(self.olderNumber)! * Double(self.newNumber)! )
            case .subtract:
                self.newNumber = String(Double(self.olderNumber)! - Double(self.newNumber)! )
            case .add:
                self.newNumber = String(Double(self.olderNumber)! + Double(self.newNumber)! )
            default:
                return
        }
        self.operation = nil
        self.displayValue = self.newNumber
    }
    
    func decAddValid(numberString:String) -> Bool {
        for char in numberString {
            if char == "." {
                return false
            }
        }
        return true
    }
    
    
}

enum ButtonType {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case dec
    case clear
    case posNeg
    case percent
    case divide
    case multiple
    case subtract
    case add
    case equal
    
    
    
    func getAssociatedNumValue() -> String {
      switch self {
      case .one:
        return "1"
      case .two:
        return "2"
      case .three:
        return "3"
      case .four:
        return "4"
      case .five:
        return "5"
      case .six:
        return "6"
      case .seven:
        return "7"
      case .eight:
        return "8"
      case .nine:
        return "9"
      case .zero:
        return "0"
      case .dec:
        return "."
    default:
        return ""
  }
    }
}

