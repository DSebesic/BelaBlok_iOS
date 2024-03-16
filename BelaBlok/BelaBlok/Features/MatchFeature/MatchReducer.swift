import ComposableArchitecture

public struct MatchReducer: Reducer {
    public init() { }

    public var body: some Reducer<State, Action> {
        Reduce<State, Action> { state, action in
            switch action {
                case .viewAppeared:
                break
            case .newGameTapped:
                state.games.append(GameModel())
            }
            return .none
        }
    }
}
