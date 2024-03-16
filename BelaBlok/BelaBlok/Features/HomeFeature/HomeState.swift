import ComposableArchitecture

public extension HomeReducer {
    @ObservableState
    struct State: Equatable {
        public init() {}
        
        public enum Buttons: CaseIterable, Equatable {
            case newMatch, savedMatches, savedUsers
            
            var title: String {
                switch self {
                case .newMatch:
                    "NEW MATCH"
                case .savedMatches:
                    "SAVED MATCHES"
                case .savedUsers:
                    "SAVED USERS"
                }
            }
        }
    }
}
