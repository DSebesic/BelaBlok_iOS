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
            case .homeAction(.newMatchTapped):
                state.path.append(.newMatchScreen(MatchReducer.State()))
            default:
                break
            }
            return .none
        }
        .forEach(\.path, action: \.path)
    }
}

extension AppReducer {
    @Reducer(state:.equatable)
    public enum Path {
        case newMatchScreen(MatchReducer)
    }
}
