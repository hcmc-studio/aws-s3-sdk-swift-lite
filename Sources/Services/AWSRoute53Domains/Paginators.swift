// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Route53DomainsClient {
    /// Paginate over `[ListDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsOutputResponse`
    public func listDomainsPaginated(input: ListDomainsInput) -> ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse>(input: input, inputKey: \ListDomainsInput.marker, outputKey: \ListDomainsOutputResponse.nextPageMarker, paginationFunction: self.listDomains(input:))
    }
}

extension ListDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsInput {
        return ListDomainsInput(
            filterConditions: self.filterConditions,
            marker: token,
            maxItems: self.maxItems,
            sortCondition: self.sortCondition
        )}
}

extension PaginatorSequence where Input == ListDomainsInput, Output == ListDomainsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDomainsPaginated`
    /// to access the nested member `[Route53DomainsClientTypes.DomainSummary]`
    /// - Returns: `[Route53DomainsClientTypes.DomainSummary]`
    public func domains() async throws -> [Route53DomainsClientTypes.DomainSummary] {
        return try await self.asyncCompactMap { item in item.domains }
    }
}
extension Route53DomainsClient {
    /// Paginate over `[ListOperationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOperationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOperationsOutputResponse`
    public func listOperationsPaginated(input: ListOperationsInput) -> ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutputResponse>(input: input, inputKey: \ListOperationsInput.marker, outputKey: \ListOperationsOutputResponse.nextPageMarker, paginationFunction: self.listOperations(input:))
    }
}

extension ListOperationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOperationsInput {
        return ListOperationsInput(
            marker: token,
            maxItems: self.maxItems,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            status: self.status,
            submittedSince: self.submittedSince,
            type: self.type
        )}
}

extension PaginatorSequence where Input == ListOperationsInput, Output == ListOperationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listOperationsPaginated`
    /// to access the nested member `[Route53DomainsClientTypes.OperationSummary]`
    /// - Returns: `[Route53DomainsClientTypes.OperationSummary]`
    public func operations() async throws -> [Route53DomainsClientTypes.OperationSummary] {
        return try await self.asyncCompactMap { item in item.operations }
    }
}
extension Route53DomainsClient {
    /// Paginate over `[ListPricesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPricesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPricesOutputResponse`
    public func listPricesPaginated(input: ListPricesInput) -> ClientRuntime.PaginatorSequence<ListPricesInput, ListPricesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPricesInput, ListPricesOutputResponse>(input: input, inputKey: \ListPricesInput.marker, outputKey: \ListPricesOutputResponse.nextPageMarker, paginationFunction: self.listPrices(input:))
    }
}

extension ListPricesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPricesInput {
        return ListPricesInput(
            marker: token,
            maxItems: self.maxItems,
            tld: self.tld
        )}
}

extension PaginatorSequence where Input == ListPricesInput, Output == ListPricesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPricesPaginated`
    /// to access the nested member `[Route53DomainsClientTypes.DomainPrice]`
    /// - Returns: `[Route53DomainsClientTypes.DomainPrice]`
    public func prices() async throws -> [Route53DomainsClientTypes.DomainPrice] {
        return try await self.asyncCompactMap { item in item.prices }
    }
}
extension Route53DomainsClient {
    /// Paginate over `[ViewBillingOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ViewBillingInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ViewBillingOutputResponse`
    public func viewBillingPaginated(input: ViewBillingInput) -> ClientRuntime.PaginatorSequence<ViewBillingInput, ViewBillingOutputResponse> {
        return ClientRuntime.PaginatorSequence<ViewBillingInput, ViewBillingOutputResponse>(input: input, inputKey: \ViewBillingInput.marker, outputKey: \ViewBillingOutputResponse.nextPageMarker, paginationFunction: self.viewBilling(input:))
    }
}

extension ViewBillingInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ViewBillingInput {
        return ViewBillingInput(
            end: self.end,
            marker: token,
            maxItems: self.maxItems,
            start: self.start
        )}
}

extension PaginatorSequence where Input == ViewBillingInput, Output == ViewBillingOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `viewBillingPaginated`
    /// to access the nested member `[Route53DomainsClientTypes.BillingRecord]`
    /// - Returns: `[Route53DomainsClientTypes.BillingRecord]`
    public func billingRecords() async throws -> [Route53DomainsClientTypes.BillingRecord] {
        return try await self.asyncCompactMap { item in item.billingRecords }
    }
}
