import ComposableArchitecture
import Foundation

extension MatchReducer {
    @ObservableState
    public struct State: Equatable {
        var games: [GameModel] = []
    }
}
