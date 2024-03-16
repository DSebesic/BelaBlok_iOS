import Foundation
import ComposableArchitecture

extension AppReducer {
    @CasePathable
    enum Action {
        case path(StackAction<Path.State, Path.Action>)
        case homeAction(HomeReducer.Action)
    }
}
