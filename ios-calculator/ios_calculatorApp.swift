//
//  ios_calculatorApp.swift
//  ios-calculator
//
//  Created by Joseph Cottingham on 11/9/20.
//

import SwiftUI


@main
struct ios_calculatorApp: App {
    @StateObject private var controller = CalendarViewController()
    
    var body: some Scene {
        WindowGroup {
            CalculatorView().environmentObject(controller)
        }
    }
}

struct ios_calculatorApp_Previews: PreviewProvider {
    static let controller = CalendarViewController()
    static var previews: some View {
        CalculatorView().environmentObject(controller)
    }
}
