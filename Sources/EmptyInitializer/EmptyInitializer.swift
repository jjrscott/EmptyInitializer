public struct EmptyInitializer {
    static func initialize<T>(type: T.Type) throws -> T where T : Decodable {
        try T(from: EmptyDecoder())
    }
}
