import ComposableArchitecture

public extension CalculatorReducer {
    enum Action: BindableAction {
        case viewAppeared
        case binding(BindingAction<State>)
    }
}
