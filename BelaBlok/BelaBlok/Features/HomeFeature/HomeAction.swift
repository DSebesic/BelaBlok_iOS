import ComposableArchitecture

public extension HomeReducer {
    @CasePathable
    enum Action {
        case viewAppeared
        
        case newMatchTapped
        case savedMatchesTapped
        case savedUsersTapped
    }
}
