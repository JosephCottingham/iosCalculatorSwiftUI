//
//  ContentView.swift
//  ios-calculator
//
//  Created by Joseph Cottingham on 11/9/20.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var controller: CalendarViewController
    
    var body: some View {
        VStack {
            Text(controller.displayValue).font(.system(size: 80))
              .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.trailing, 30).foregroundColor(.white)
            HStack (spacing: 10) {
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.clear)
                }, label: {
                    Text("AC").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.posNeg)
                }, label: {
                    Text("+/-").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.percent)
                }, label: {
                    Text("%").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.divide)
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
                    controller.numberPress(buttonType: ButtonType.seven)
                }, label: {
                    Text("7").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.eight)
                }, label: {
                    Text("8").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.nine)
                }, label: {
                    Text("9").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.multiple)
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
                    controller.numberPress(buttonType: ButtonType.four)
                }, label: {
                    Text("4").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.five)
                }, label: {
                    Text("5").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.six)
                }, label: {
                    Text("6").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.subtract)
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
                    controller.numberPress(buttonType: ButtonType.one)
                }, label: {
                    Text("1").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.two)
                }, label: {
                    Text("2").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.three)
                }, label: {
                    Text("3").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.add)
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
                    controller.numberPress(buttonType: ButtonType.zero)
                }, label: {
                    Text("0").frame(width: 130, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.numberPress(buttonType: ButtonType.dec)
                }, label: {
                    Text(".").frame(width: 60, height: 60, alignment: .center)
                      .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                })
                Button(action: {
                    controller.operationPress(buttonType: ButtonType.equal)
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
