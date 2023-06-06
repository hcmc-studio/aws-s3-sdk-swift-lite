// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DynamoDBClientProtocol {

    static func tableExistsWaiterConfig() throws -> WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeTableInput, result: Result<DescribeTableOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Table.TableStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "ACTIVE"
                guard case .success(let output) = result else { return false }
                let table = output.table
                let tableStatus = table?.tableStatus
                return JMESUtils.compare(tableStatus, ==, "ACTIVE")
            }),
            .init(state: .retry, matcher: { (input: DescribeTableInput, result: Result<DescribeTableOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse>(acceptors: acceptors, minDelay: 20.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the TableExists event on the describeTable operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeTableInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilTableExists(options: WaiterOptions, input: DescribeTableInput) async throws -> WaiterOutcome<DescribeTableOutputResponse> {
        let waiter = Waiter(config: try Self.tableExistsWaiterConfig(), operation: self.describeTable(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func tableNotExistsWaiterConfig() throws -> WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeTableInput, result: Result<DescribeTableOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<DescribeTableInput, DescribeTableOutputResponse>(acceptors: acceptors, minDelay: 20.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the TableNotExists event on the describeTable operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeTableInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilTableNotExists(options: WaiterOptions, input: DescribeTableInput) async throws -> WaiterOutcome<DescribeTableOutputResponse> {
        let waiter = Waiter(config: try Self.tableNotExistsWaiterConfig(), operation: self.describeTable(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
