// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IAMClientProtocol {

    static func instanceProfileExistsWaiterConfig() throws -> WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutputResponse> {
        let acceptors: [WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetInstanceProfileInput, result: Result<GetInstanceProfileOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetInstanceProfileInput, result: Result<GetInstanceProfileOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "NoSuchEntityException"
            }),
        ]
        return try WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutputResponse>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the InstanceProfileExists event on the getInstanceProfile operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetInstanceProfileInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilInstanceProfileExists(options: WaiterOptions, input: GetInstanceProfileInput) async throws -> WaiterOutcome<GetInstanceProfileOutputResponse> {
        let waiter = Waiter(config: try Self.instanceProfileExistsWaiterConfig(), operation: self.getInstanceProfile(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func policyExistsWaiterConfig() throws -> WaiterConfiguration<GetPolicyInput, GetPolicyOutputResponse> {
        let acceptors: [WaiterConfiguration<GetPolicyInput, GetPolicyOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetPolicyInput, result: Result<GetPolicyOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetPolicyInput, result: Result<GetPolicyOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try WaiterConfiguration<GetPolicyInput, GetPolicyOutputResponse>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the PolicyExists event on the getPolicy operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetPolicyInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilPolicyExists(options: WaiterOptions, input: GetPolicyInput) async throws -> WaiterOutcome<GetPolicyOutputResponse> {
        let waiter = Waiter(config: try Self.policyExistsWaiterConfig(), operation: self.getPolicy(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func roleExistsWaiterConfig() throws -> WaiterConfiguration<GetRoleInput, GetRoleOutputResponse> {
        let acceptors: [WaiterConfiguration<GetRoleInput, GetRoleOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetRoleInput, result: Result<GetRoleOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetRoleInput, result: Result<GetRoleOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try WaiterConfiguration<GetRoleInput, GetRoleOutputResponse>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the RoleExists event on the getRole operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetRoleInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilRoleExists(options: WaiterOptions, input: GetRoleInput) async throws -> WaiterOutcome<GetRoleOutputResponse> {
        let waiter = Waiter(config: try Self.roleExistsWaiterConfig(), operation: self.getRole(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func userExistsWaiterConfig() throws -> WaiterConfiguration<GetUserInput, GetUserOutputResponse> {
        let acceptors: [WaiterConfiguration<GetUserInput, GetUserOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetUserInput, result: Result<GetUserOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetUserInput, result: Result<GetUserOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try WaiterConfiguration<GetUserInput, GetUserOutputResponse>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the UserExists event on the getUser operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetUserInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilUserExists(options: WaiterOptions, input: GetUserInput) async throws -> WaiterOutcome<GetUserOutputResponse> {
        let waiter = Waiter(config: try Self.userExistsWaiterConfig(), operation: self.getUser(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
