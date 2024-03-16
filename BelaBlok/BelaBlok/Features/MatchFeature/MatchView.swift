import SwiftUI
import ComposableArchitecture

public extension MatchReducer {
    struct MatchView: View {
        let store: Store<State, Action>
        
        public init(store: Store<State, Action>) {
            self.store = store
        }

        public var body: some View {
            Text("NEW MATCH")
        }
    }
}

#if debug
struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        Match.MatchView(store: .init(initialState: .init(), reducer: .empty, environment: ()))
    }
}
#endif
