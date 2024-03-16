import ComposableArchitecture

public extension HomeReducer {
    @CasePathable
    enum Action: BindableAction {
        case viewAppeared
        case binding(BindingAction<State>)
    }
}
