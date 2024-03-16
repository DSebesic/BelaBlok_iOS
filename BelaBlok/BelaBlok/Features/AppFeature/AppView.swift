import Foundation
import ComposableArchitecture
import SwiftUI

extension AppReducer {
    struct AppView: View {
        @Bindable var store: StoreOf<AppReducer>
        
        var body: some View {
            NavigationStack(path: $store.scope(state: \.path, action: \.path)) {
                HomeReducer.HomeView(store: store.scope(state: \.homeState, action: \.homeAction))
            } destination: { store in
                switch store.case {
                case .newMatchScreen(let store):
                    MatchReducer.MatchView(store: store)
                case .calculatorScreen(let store):
                    CalculatorReducer.CalculatorView(store: store)
                }
            }
        }
    }
}
