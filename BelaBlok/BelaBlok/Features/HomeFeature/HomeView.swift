import SwiftUI
import ComposableArchitecture

public extension HomeReducer {
    struct HomeView: View {
        let store: StoreOf<HomeReducer>
        
        public init(store: Store<State, Action>) {
            self.store = store
        }
        
        public var body: some View {
            Text("HomeView")
                .onAppear {
                    store.send(.viewAppeared)
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
