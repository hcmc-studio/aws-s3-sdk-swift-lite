// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PinpointEmailClient {
    /// Paginate over `[GetDedicatedIpsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetDedicatedIpsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetDedicatedIpsOutputResponse`
    public func getDedicatedIpsPaginated(input: GetDedicatedIpsInput) -> ClientRuntime.PaginatorSequence<GetDedicatedIpsInput, GetDedicatedIpsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetDedicatedIpsInput, GetDedicatedIpsOutputResponse>(input: input, inputKey: \GetDedicatedIpsInput.nextToken, outputKey: \GetDedicatedIpsOutputResponse.nextToken, paginationFunction: self.getDedicatedIps(input:))
    }
}

extension GetDedicatedIpsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetDedicatedIpsInput {
        return GetDedicatedIpsInput(
            nextToken: token,
            pageSize: self.pageSize,
            poolName: self.poolName
        )}
}
extension PinpointEmailClient {
    /// Paginate over `[ListConfigurationSetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConfigurationSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConfigurationSetsOutputResponse`
    public func listConfigurationSetsPaginated(input: ListConfigurationSetsInput) -> ClientRuntime.PaginatorSequence<ListConfigurationSetsInput, ListConfigurationSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConfigurationSetsInput, ListConfigurationSetsOutputResponse>(input: input, inputKey: \ListConfigurationSetsInput.nextToken, outputKey: \ListConfigurationSetsOutputResponse.nextToken, paginationFunction: self.listConfigurationSets(input:))
    }
}

extension ListConfigurationSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConfigurationSetsInput {
        return ListConfigurationSetsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension PinpointEmailClient {
    /// Paginate over `[ListDedicatedIpPoolsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDedicatedIpPoolsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDedicatedIpPoolsOutputResponse`
    public func listDedicatedIpPoolsPaginated(input: ListDedicatedIpPoolsInput) -> ClientRuntime.PaginatorSequence<ListDedicatedIpPoolsInput, ListDedicatedIpPoolsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDedicatedIpPoolsInput, ListDedicatedIpPoolsOutputResponse>(input: input, inputKey: \ListDedicatedIpPoolsInput.nextToken, outputKey: \ListDedicatedIpPoolsOutputResponse.nextToken, paginationFunction: self.listDedicatedIpPools(input:))
    }
}

extension ListDedicatedIpPoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDedicatedIpPoolsInput {
        return ListDedicatedIpPoolsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension PinpointEmailClient {
    /// Paginate over `[ListDeliverabilityTestReportsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeliverabilityTestReportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeliverabilityTestReportsOutputResponse`
    public func listDeliverabilityTestReportsPaginated(input: ListDeliverabilityTestReportsInput) -> ClientRuntime.PaginatorSequence<ListDeliverabilityTestReportsInput, ListDeliverabilityTestReportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeliverabilityTestReportsInput, ListDeliverabilityTestReportsOutputResponse>(input: input, inputKey: \ListDeliverabilityTestReportsInput.nextToken, outputKey: \ListDeliverabilityTestReportsOutputResponse.nextToken, paginationFunction: self.listDeliverabilityTestReports(input:))
    }
}

extension ListDeliverabilityTestReportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeliverabilityTestReportsInput {
        return ListDeliverabilityTestReportsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension PinpointEmailClient {
    /// Paginate over `[ListDomainDeliverabilityCampaignsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainDeliverabilityCampaignsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainDeliverabilityCampaignsOutputResponse`
    public func listDomainDeliverabilityCampaignsPaginated(input: ListDomainDeliverabilityCampaignsInput) -> ClientRuntime.PaginatorSequence<ListDomainDeliverabilityCampaignsInput, ListDomainDeliverabilityCampaignsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainDeliverabilityCampaignsInput, ListDomainDeliverabilityCampaignsOutputResponse>(input: input, inputKey: \ListDomainDeliverabilityCampaignsInput.nextToken, outputKey: \ListDomainDeliverabilityCampaignsOutputResponse.nextToken, paginationFunction: self.listDomainDeliverabilityCampaigns(input:))
    }
}

extension ListDomainDeliverabilityCampaignsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainDeliverabilityCampaignsInput {
        return ListDomainDeliverabilityCampaignsInput(
            endDate: self.endDate,
            nextToken: token,
            pageSize: self.pageSize,
            startDate: self.startDate,
            subscribedDomain: self.subscribedDomain
        )}
}
extension PinpointEmailClient {
    /// Paginate over `[ListEmailIdentitiesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEmailIdentitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEmailIdentitiesOutputResponse`
    public func listEmailIdentitiesPaginated(input: ListEmailIdentitiesInput) -> ClientRuntime.PaginatorSequence<ListEmailIdentitiesInput, ListEmailIdentitiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEmailIdentitiesInput, ListEmailIdentitiesOutputResponse>(input: input, inputKey: \ListEmailIdentitiesInput.nextToken, outputKey: \ListEmailIdentitiesOutputResponse.nextToken, paginationFunction: self.listEmailIdentities(input:))
    }
}

extension ListEmailIdentitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEmailIdentitiesInput {
        return ListEmailIdentitiesInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
