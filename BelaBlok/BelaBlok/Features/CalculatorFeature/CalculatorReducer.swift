import ComposableArchitecture

public struct CalculatorReducer: Reducer {

    public init() { }

    public var body: some Reducer<State, Action> {
        BindingReducer()
        Reduce<State, Action> { state, action in
            switch action {
            case .viewAppeared, .binding:
                break
            case .calculatorButtonTapped(let label):
                if label == "Clear" {
                    state.scoreCard.miPoints = "0"
                    state.scoreCard.viPoints = "0"
                    state.scoreCard.miCalls = 0
                    state.scoreCard.viCalls = 0
                } else {
                    if state.inputMode == .Mi {
                        if label == "<" {
                            if state.scoreCard.miPoints.count == 1 {
                                state.scoreCard.miPoints = "0"
                            } else {
                                state.scoreCard.miPoints = String(state.scoreCard.miPoints.dropLast())
                            }
                        } else {
                            if state.scoreCard.miPoints == "0" {
                                state.scoreCard.miPoints = "\(label)"
                            } else {
                                state.scoreCard.miPoints.append("\(label)")
                            }
                        }
                        let computedViPoints = 162 - (Int(state.scoreCard.miPoints) ?? 0)
                        state.scoreCard.viPoints = computedViPoints >= 0 ? String(computedViPoints) : "0"
                    } else {
                        if label == "<" {
                            if state.scoreCard.viPoints.count == 1 {
                                state.scoreCard.viPoints = "0"
                            } else {
                                state.scoreCard.viPoints = String(state.scoreCard.viPoints.dropLast())
                            }
                        } else {
                            if state.scoreCard.viPoints == "0" {
                                state.scoreCard.viPoints = "\(label)"
                            } else {
                                state.scoreCard.viPoints.append("\(label)")
                            }
                        }
                        let computedMiPoints = 162 - (Int(state.scoreCard.viPoints) ?? 0)
                        state.scoreCard.miPoints = computedMiPoints >= 0 ? String(computedMiPoints) : "0"
                    }
                }
            case .modeTapped(let mode):
                state.inputMode = mode
            case .callsButtonTapped(let call):
                if state.inputMode == .Mi {
                    state.scoreCard.miCalls += Int(call.title) ?? 0
                } else {
                    state.scoreCard.viCalls += Int(call.title) ?? 0
                }
            }
            return .none
        }
    }
}
