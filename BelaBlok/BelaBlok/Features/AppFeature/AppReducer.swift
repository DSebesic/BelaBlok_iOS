import Foundation
import ComposableArchitecture

@Reducer
struct AppReducer {
    var body: some Reducer<State, Action> {
        Scope(state: \.homeState, action: \.homeAction) {
            HomeReducer()
        }
        Reduce { state, action in
            switch action {
            case .path(_):
                break
            case .homeAction(_):
                break
            }
            return .none
        }
    }
}

extension AppReducer {
    @Reducer(state:.equatable)
    public enum Path {
    }
}
