//
//  CalculatorController.swift
//  ios-calculator
//
//  Created by Joseph Cottingham on 11/16/20.
//

import Foundation

class CalendarViewController {
    
    var numNew : Bool = true
    var numMode : Bool = false
    var operation : ButtonType?
    var olderNumber : String
    var newNumber : String
    

    
    func numberPress(buttonType:ButtonType) {
        if self.numNew {
            self.olderNumber = self.newNumber
            self.newNumber = ""
        }
        if self.numMode {
            let tempNumVal = buttonType.getAssociatedNumValue()
            if tempNumVal == "." && decAddValid(numberString: tempNumVal) != true{
                return
            }
            if self.numNew {
                self.olderNumber = self.newNumber
                self.newNumber = ""
            }
            self.newNumber.append(tempNumVal)
        }
    }
    
    func operationPress(buttonType:ButtonType) {
        switch buttonType {
        case .clear:
            self.numNew = true
            self.numMode = true
            self.operation = nil
            self.olderNumber = ""
            self.newNumber = ""
            
        case .posNeg:
            if self.numNew != true {
                if self.newNumber[0:1] != "-" {
                    self.newNumber = String(format: "-%@", self.newNumber)
                } else {
                    self.newNumber = self.newNumber[1:]
                }
            }
        case .percent:
            if self.numNew != true {
                self.numNew = self.newNumber / 100
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
            self.operation = ButtonType.subtract
            self.numNew = true
        default:
            return
        }
    }
    
    func equalsOperation() {
        switch self.operation {
        case .divide:
            self.newNumber = String(Double(self.olderNumber) ?? 0 / Double(self.newNumber) ?? 0)
        case .multiple:
            self.newNumber = String(Double(self.olderNumber) ?? 0 * Double(self.newNumber) ?? 0)
        case .subtract:
            self.newNumber = String(Double(self.olderNumber) ?? 0 - Double(self.newNumber) ?? 0)
        case .add:
            self.newNumber = String(Double(self.olderNumber) ?? 0 + Double(self.newNumber) ?? 0)
        default:
            return
            
        }
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
        return "1"
      case .five:
        return "2"
      case .six:
        return "3"
      case .seven:
        return "1"
      case .eight:
        return "2"
      case .nine:
        return "3"
      case .zero:
        return "2"
      case .dec:
        return "."
    default:
        return ""
  }
    }
}

