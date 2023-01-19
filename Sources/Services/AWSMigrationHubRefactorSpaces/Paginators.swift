// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MigrationHubRefactorSpacesClient {
    /// Paginate over `[ListApplicationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutputResponse`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse>(input: input, inputKey: \ListApplicationsInput.nextToken, outputKey: \ListApplicationsOutputResponse.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            environmentIdentifier: self.environmentIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListApplicationsInput, Output == ListApplicationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationsPaginated`
    /// to access the nested member `[MigrationHubRefactorSpacesClientTypes.ApplicationSummary]`
    /// - Returns: `[MigrationHubRefactorSpacesClientTypes.ApplicationSummary]`
    public func applicationSummaryList() async throws -> [MigrationHubRefactorSpacesClientTypes.ApplicationSummary] {
        return try await self.asyncCompactMap { item in item.applicationSummaryList }
    }
}
extension MigrationHubRefactorSpacesClient {
    /// Paginate over `[ListEnvironmentsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnvironmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentsOutputResponse`
    public func listEnvironmentsPaginated(input: ListEnvironmentsInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutputResponse>(input: input, inputKey: \ListEnvironmentsInput.nextToken, outputKey: \ListEnvironmentsOutputResponse.nextToken, paginationFunction: self.listEnvironments(input:))
    }
}

extension ListEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentsInput {
        return ListEnvironmentsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEnvironmentsInput, Output == ListEnvironmentsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEnvironmentsPaginated`
    /// to access the nested member `[MigrationHubRefactorSpacesClientTypes.EnvironmentSummary]`
    /// - Returns: `[MigrationHubRefactorSpacesClientTypes.EnvironmentSummary]`
    public func environmentSummaryList() async throws -> [MigrationHubRefactorSpacesClientTypes.EnvironmentSummary] {
        return try await self.asyncCompactMap { item in item.environmentSummaryList }
    }
}
extension MigrationHubRefactorSpacesClient {
    /// Paginate over `[ListEnvironmentVpcsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnvironmentVpcsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentVpcsOutputResponse`
    public func listEnvironmentVpcsPaginated(input: ListEnvironmentVpcsInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentVpcsInput, ListEnvironmentVpcsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentVpcsInput, ListEnvironmentVpcsOutputResponse>(input: input, inputKey: \ListEnvironmentVpcsInput.nextToken, outputKey: \ListEnvironmentVpcsOutputResponse.nextToken, paginationFunction: self.listEnvironmentVpcs(input:))
    }
}

extension ListEnvironmentVpcsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentVpcsInput {
        return ListEnvironmentVpcsInput(
            environmentIdentifier: self.environmentIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEnvironmentVpcsInput, Output == ListEnvironmentVpcsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEnvironmentVpcsPaginated`
    /// to access the nested member `[MigrationHubRefactorSpacesClientTypes.EnvironmentVpc]`
    /// - Returns: `[MigrationHubRefactorSpacesClientTypes.EnvironmentVpc]`
    public func environmentVpcList() async throws -> [MigrationHubRefactorSpacesClientTypes.EnvironmentVpc] {
        return try await self.asyncCompactMap { item in item.environmentVpcList }
    }
}
extension MigrationHubRefactorSpacesClient {
    /// Paginate over `[ListRoutesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRoutesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRoutesOutputResponse`
    public func listRoutesPaginated(input: ListRoutesInput) -> ClientRuntime.PaginatorSequence<ListRoutesInput, ListRoutesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRoutesInput, ListRoutesOutputResponse>(input: input, inputKey: \ListRoutesInput.nextToken, outputKey: \ListRoutesOutputResponse.nextToken, paginationFunction: self.listRoutes(input:))
    }
}

extension ListRoutesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRoutesInput {
        return ListRoutesInput(
            applicationIdentifier: self.applicationIdentifier,
            environmentIdentifier: self.environmentIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListRoutesInput, Output == ListRoutesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRoutesPaginated`
    /// to access the nested member `[MigrationHubRefactorSpacesClientTypes.RouteSummary]`
    /// - Returns: `[MigrationHubRefactorSpacesClientTypes.RouteSummary]`
    public func routeSummaryList() async throws -> [MigrationHubRefactorSpacesClientTypes.RouteSummary] {
        return try await self.asyncCompactMap { item in item.routeSummaryList }
    }
}
extension MigrationHubRefactorSpacesClient {
    /// Paginate over `[ListServicesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListServicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListServicesOutputResponse`
    public func listServicesPaginated(input: ListServicesInput) -> ClientRuntime.PaginatorSequence<ListServicesInput, ListServicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListServicesInput, ListServicesOutputResponse>(input: input, inputKey: \ListServicesInput.nextToken, outputKey: \ListServicesOutputResponse.nextToken, paginationFunction: self.listServices(input:))
    }
}

extension ListServicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServicesInput {
        return ListServicesInput(
            applicationIdentifier: self.applicationIdentifier,
            environmentIdentifier: self.environmentIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListServicesInput, Output == ListServicesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listServicesPaginated`
    /// to access the nested member `[MigrationHubRefactorSpacesClientTypes.ServiceSummary]`
    /// - Returns: `[MigrationHubRefactorSpacesClientTypes.ServiceSummary]`
    public func serviceSummaryList() async throws -> [MigrationHubRefactorSpacesClientTypes.ServiceSummary] {
        return try await self.asyncCompactMap { item in item.serviceSummaryList }
    }
}
