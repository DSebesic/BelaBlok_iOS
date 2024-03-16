import SwiftUI
import ComposableArchitecture

public extension HomeReducer {
    struct HomeView: View {
        let store: StoreOf<HomeReducer>
        
        public init(store: Store<State, Action>) {
            self.store = store
        }
        
        public var body: some View {
            VStack {
                Image(systemName: "figure.mixed.cardio")
                ForEach(HomeReducer.State.Buttons.allCases, id: \.self) { button in
                    Button(action: {
                        store.send(.newMatchTapped)
                    }) {
                        Text(button.title)
                    }
                    .buttonStyle(.plain)
                    
                }
            }
        }
    }
}

#if debug
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Home.HomeView(store: .init(initialState: .init(), reducer: .empty, environment: ()))
    }
}
#endif
