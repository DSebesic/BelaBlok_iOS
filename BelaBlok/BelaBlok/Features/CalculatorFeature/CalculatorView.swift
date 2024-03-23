import SwiftUI
import ComposableArchitecture

public extension CalculatorReducer {
    struct CalculatorView: View {
        let store: Store<State, Action>
        let rows = [
            ["1", "2", "3"],
            ["4", "5", "6"],
            ["7", "8", "9"],
            ["Clear", "0", "<"]
        ]

        public init(store: Store<State, Action>) {
            self.store = store
        }

        public var body: some View {
            ZStack {
                Color.backgroundColorDefault.ignoresSafeArea()
                VStack {
                    HStack(spacing: 24) {
                        ForEach(CalculatorReducer.State.InputMode.allCases, id: \.self) { inputMode in
                            Button {
                                store.send(.modeTapped(inputMode))
                            } label: {
                                Text(inputMode == .Mi ? "\(store.scoreCard.miSum)" : "\(store.scoreCard.viSum)")
                                    .font(.title)
                                    .frame(width: 170, height: 70)
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(15)
                            }
                        }
                    }

                    HStack {
                        ForEach(CalculatorReducer.State.Calls.allCases, id: \.self) { call in
                            Button {
                                store.send(.callsButtonTapped(call))
                            } label: {
                                Text(call.title)
                                    .font(.title)
                                    .frame(width: 100, height: 70)
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(15)
                            }
                        }
                    }

                    VStack(spacing: 10) {
                        ForEach(rows, id: \.self) { row in
                            HStack(spacing: 10) {
                                ForEach(row, id: \.self) { label in
                                    CalculatorButton(label: label) {
                                        store.send(.calculatorButtonTapped(label))
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct CalculatorButton: View {
    var label: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text("\(label)")
                .font(.title)
                .frame(width: 70, height: 70)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(35)
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
