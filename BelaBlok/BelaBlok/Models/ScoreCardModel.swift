import Foundation

public struct ScoreCardModel: Equatable {
    public var miPoints: String = "0"
    public var viPoints: String = "0"

    public var miCalls: Int = 0
    public var viCalls: Int = 0

    public var miSum: String { String((Int(miPoints) ?? 0) + miCalls) }
    public var viSum: String { String((Int(viPoints) ?? 0) + viCalls) }
}
