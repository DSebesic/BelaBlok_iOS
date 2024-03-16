import SwiftUI
import ComposableArchitecture

public extension CalculatorReducer {
    struct CalculatorView: View {
        let store: Store<State, Action>
        
        public init(store: Store<State, Action>) {
            self.store = store
        }

        public var body: some View {
            ZStack {
                Color.backgroundColorDefault.ignoresSafeArea()
                NumKeypad()
            }
        }
    }
}

#if debug
struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        Calculator.CalculatorView(store: .init(initialState: .init(), reducer: .empty, environment: ()))
    }
}
#endif
