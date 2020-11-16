//
//  ContentView.swift
//  ios-calculator
//
//  Created by Joseph Cottingham on 11/9/20.
//

import SwiftUI



class GlobalEnvironment: ObservableObject {
    
    @Published var display = ""
    
    var operation : buttonType?

    func receiveInput(button:buttonType) {
        switch button {
            case buttonType.one:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(1), operation: operation!))
                }
            case buttonType.two:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(2), operation: operation!))
                }
            case buttonType.three:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.four:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.five:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.six:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.seven:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.eight:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.nine:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.zero:
                if operation != nil && display != "" {
                    display = String(operation(num1: Double(display)!, num2: Double(3), operation: operation!))
                }
            case buttonType.posNeg:
                if display != "" {
                    display = String(Double(display)! * -1)
                }
            case buttonType.percent:
                if display != "" {
                    display = String(Double(display)! / 100)
                }
            case buttonType.clear:
                display = ""
                operation = nil
            default:
                operation = button
        }
}
    
    func operation(num1:Double, num2:Double, operation:buttonType) -> Double{
        switch operation {
            case buttonType.divide:
                return num1/num2
            case buttonType.add:
                return num1+num2
            case buttonType.subtract:
                return num1-num2
            case buttonType.multiple:
                return num1*num2
            default:
                return Double(0)
        }
    }

    
}





enum buttonType {
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
}


struct ContentView: View {
    
    @EnvironmentObject var env: GlobalEnvironment
    
    var body: some View {
        VStack {
            Text(env.display).font(.system(size: 80))
              .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.trailing, 30).foregroundColor(.white)
            HStack (spacing: 10) {
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("AC").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("+/-").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("%").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("÷").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
            }
            HStack (spacing: 10) {
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("7").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("8").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("9").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("x").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
            }
            HStack (spacing: 10) {
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("4").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("5").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("6").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("-").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
            }
            HStack (spacing: 10) {
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("1").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("2").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("3").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("+").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
            }
            HStack (spacing: 10) {
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("0").frame(width: 130, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text(".").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                  print("Button pressed")
                }, label: {
                    Text("=").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom).padding(.bottom,15).background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
