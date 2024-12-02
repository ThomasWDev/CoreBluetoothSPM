import Foundation

/// Protocol to abstract the URLSession functionalities, allowing for better testability and flexibility in network communication.
@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
public protocol URLSessionProtocol {
    /// Fetches data from a given URLRequest asynchronously.
    /// - Parameter request: The `URLRequest` to fetch data for.
    /// - Returns: A tuple containing the `Data` and `URLResponse` from the network request.
    /// - Throws: An error if the data fetching fails.
    func data(
        for request: URLRequest
    ) async throws -> (Data, URLResponse)
}

/// Extension to make URLSession conform to URLSessionProtocol, enabling it to be substituted with mock sessions in testing.
@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension URLSession: URLSessionProtocol {}