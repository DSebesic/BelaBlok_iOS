import ComposableArchitecture

public extension CalculatorReducer {
    enum Action: BindableAction {
        case viewAppeared
        case binding(BindingAction<State>)

        case calculatorButtonTapped(String)
        case callsButtonTapped(CalculatorReducer.State.Calls)
        case modeTapped(CalculatorReducer.State.InputMode)
    }
}
