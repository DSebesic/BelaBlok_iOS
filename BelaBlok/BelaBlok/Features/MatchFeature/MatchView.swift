import SwiftUI
import ComposableArchitecture

public extension MatchReducer {
    struct MatchView: View {
        let store: Store<State, Action>
        
        init(store: Store<State, Action>) {
            self.store = store
        }

        public var body: some View {
            ZStack {
                Color.backgroundColorDefault.ignoresSafeArea()
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(store.state.games, id: \.self) { game in
                                GameCard(game: game)
                            }
                        }
                    }
                    Divider()
                    Button(action: {
                        store.send(.newGameTapped)
                    }) {
                        Text("Add game")
                    }
                    .buttonStyle(.plain)
                }
            }
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
