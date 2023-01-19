// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3OutpostsClient {
    /// Paginate over `[ListEndpointsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEndpointsOutputResponse`
    public func listEndpointsPaginated(input: ListEndpointsInput) -> ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse>(input: input, inputKey: \ListEndpointsInput.nextToken, outputKey: \ListEndpointsOutputResponse.nextToken, paginationFunction: self.listEndpoints(input:))
    }
}

extension ListEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointsInput {
        return ListEndpointsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEndpointsInput, Output == ListEndpointsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEndpointsPaginated`
    /// to access the nested member `[S3OutpostsClientTypes.Endpoint]`
    /// - Returns: `[S3OutpostsClientTypes.Endpoint]`
    public func endpoints() async throws -> [S3OutpostsClientTypes.Endpoint] {
        return try await self.asyncCompactMap { item in item.endpoints }
    }
}
extension S3OutpostsClient {
    /// Paginate over `[ListSharedEndpointsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSharedEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSharedEndpointsOutputResponse`
    public func listSharedEndpointsPaginated(input: ListSharedEndpointsInput) -> ClientRuntime.PaginatorSequence<ListSharedEndpointsInput, ListSharedEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSharedEndpointsInput, ListSharedEndpointsOutputResponse>(input: input, inputKey: \ListSharedEndpointsInput.nextToken, outputKey: \ListSharedEndpointsOutputResponse.nextToken, paginationFunction: self.listSharedEndpoints(input:))
    }
}

extension ListSharedEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSharedEndpointsInput {
        return ListSharedEndpointsInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )}
}

extension PaginatorSequence where Input == ListSharedEndpointsInput, Output == ListSharedEndpointsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSharedEndpointsPaginated`
    /// to access the nested member `[S3OutpostsClientTypes.Endpoint]`
    /// - Returns: `[S3OutpostsClientTypes.Endpoint]`
    public func endpoints() async throws -> [S3OutpostsClientTypes.Endpoint] {
        return try await self.asyncCompactMap { item in item.endpoints }
    }
}
