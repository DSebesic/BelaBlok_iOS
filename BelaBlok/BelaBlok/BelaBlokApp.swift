//
//  BelaBlokApp.swift
//  BelaBlok
//
//  Created by DSebesic on 16.03.2024..
//

import SwiftUI
import ComposableArchitecture


@main

//struct MyApp: App {
//    static let store = Store(initialState: AppReducer.State()) {
//        AppReducer()
//            ._printChanges()
//    }
//    
//    var body: some Scene {
//        WindowGroup {
//            AppReducer.AppView(store: MyApp.store)
//        }
//    }
//}
struct MyApp: App {
    static let store = Store(initialState: CalculatorReducer.State()) {
        CalculatorReducer()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CalculatorReducer.CalculatorView(store: MyApp.store)
        }
    }
}
