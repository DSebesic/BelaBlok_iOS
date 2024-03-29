import ComposableArchitecture

public struct HomeReducer: Reducer {

    public init() { }

    public var body: some Reducer<State, Action> {
        Reduce<State, Action> { state, action in
            switch action {
            case .viewAppeared:
                break
            case .newMatchTapped:
                break
            case .savedMatchesTapped:
                break
            case .savedUsersTapped:
                break
            }
            return .none
        }
    }
}
