// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SSOClient {
    /// Paginate over `[ListAccountRolesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountRolesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountRolesOutputResponse`
    public func listAccountRolesPaginated(input: ListAccountRolesInput) -> ClientRuntime.PaginatorSequence<ListAccountRolesInput, ListAccountRolesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountRolesInput, ListAccountRolesOutputResponse>(input: input, inputKey: \ListAccountRolesInput.nextToken, outputKey: \ListAccountRolesOutputResponse.nextToken, paginationFunction: self.listAccountRoles(input:))
    }
}

extension ListAccountRolesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountRolesInput {
        return ListAccountRolesInput(
            accessToken: self.accessToken,
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAccountRolesInput, Output == ListAccountRolesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountRolesPaginated`
    /// to access the nested member `[SSOClientTypes.RoleInfo]`
    /// - Returns: `[SSOClientTypes.RoleInfo]`
    public func roleList() async throws -> [SSOClientTypes.RoleInfo] {
        return try await self.asyncCompactMap { item in item.roleList }
    }
}
extension SSOClient {
    /// Paginate over `[ListAccountsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountsOutputResponse`
    public func listAccountsPaginated(input: ListAccountsInput) -> ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse>(input: input, inputKey: \ListAccountsInput.nextToken, outputKey: \ListAccountsOutputResponse.nextToken, paginationFunction: self.listAccounts(input:))
    }
}

extension ListAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsInput {
        return ListAccountsInput(
            accessToken: self.accessToken,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAccountsInput, Output == ListAccountsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountsPaginated`
    /// to access the nested member `[SSOClientTypes.AccountInfo]`
    /// - Returns: `[SSOClientTypes.AccountInfo]`
    public func accountList() async throws -> [SSOClientTypes.AccountInfo] {
        return try await self.asyncCompactMap { item in item.accountList }
    }
}
