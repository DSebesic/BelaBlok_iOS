import Foundation
import ComposableArchitecture

extension AppReducer {
    @ObservableState
    struct State {
        var path = StackState<Path.State>()
        var homeState = HomeReducer.State()
    }
}
