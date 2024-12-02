import Foundation

public class SensorDataHandler {
    public init() {}

    public func handleData(_ data: Data) -> String {
        // For simplicity, convert data to a string
        return String(data: data, encoding: .utf8) ?? "Invalid data"
    }
}