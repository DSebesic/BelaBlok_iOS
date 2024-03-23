import ComposableArchitecture

public extension CalculatorReducer {
    @ObservableState
    struct State: Equatable {
        public var scoreCard: ScoreCardModel
        public var inputMode: InputMode

        public enum InputMode: CaseIterable {
            case Mi, Vi
        }
        public enum Calls: CaseIterable {
            case tweny, fifty, hundred, hundredFifty, twoHundred, stilja

            var title: String {
                switch self {
                case .tweny:
                    "20"
                case .fifty:
                    "50"
                case .hundred:
                    "100"
                case .hundredFifty:
                    "150"
                case .twoHundred:
                    "200"
                case .stilja:
                    "90"
                }
            }
        }
        public init() {
            self.scoreCard = ScoreCardModel()
            self.inputMode = .Mi
        }
    }
}
