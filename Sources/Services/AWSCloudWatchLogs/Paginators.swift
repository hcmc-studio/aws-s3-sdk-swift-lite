// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudWatchLogsClient {
    /// Paginate over `[DescribeDestinationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDestinationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDestinationsOutputResponse`
    public func describeDestinationsPaginated(input: DescribeDestinationsInput) -> ClientRuntime.PaginatorSequence<DescribeDestinationsInput, DescribeDestinationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeDestinationsInput, DescribeDestinationsOutputResponse>(input: input, inputKey: \DescribeDestinationsInput.nextToken, outputKey: \DescribeDestinationsOutputResponse.nextToken, paginationFunction: self.describeDestinations(input:))
    }
}

extension DescribeDestinationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDestinationsInput {
        return DescribeDestinationsInput(
            destinationNamePrefix: self.destinationNamePrefix,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeDestinationsInput, Output == DescribeDestinationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeDestinationsPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.Destination]`
    /// - Returns: `[CloudWatchLogsClientTypes.Destination]`
    public func destinations() async throws -> [CloudWatchLogsClientTypes.Destination] {
        return try await self.asyncCompactMap { item in item.destinations }
    }
}
extension CloudWatchLogsClient {
    /// Paginate over `[DescribeLogGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeLogGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeLogGroupsOutputResponse`
    public func describeLogGroupsPaginated(input: DescribeLogGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeLogGroupsInput, DescribeLogGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeLogGroupsInput, DescribeLogGroupsOutputResponse>(input: input, inputKey: \DescribeLogGroupsInput.nextToken, outputKey: \DescribeLogGroupsOutputResponse.nextToken, paginationFunction: self.describeLogGroups(input:))
    }
}

extension DescribeLogGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeLogGroupsInput {
        return DescribeLogGroupsInput(
            accountIdentifiers: self.accountIdentifiers,
            includeLinkedAccounts: self.includeLinkedAccounts,
            limit: self.limit,
            logGroupNamePattern: self.logGroupNamePattern,
            logGroupNamePrefix: self.logGroupNamePrefix,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeLogGroupsInput, Output == DescribeLogGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeLogGroupsPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.LogGroup]`
    /// - Returns: `[CloudWatchLogsClientTypes.LogGroup]`
    public func logGroups() async throws -> [CloudWatchLogsClientTypes.LogGroup] {
        return try await self.asyncCompactMap { item in item.logGroups }
    }
}
extension CloudWatchLogsClient {
    /// Paginate over `[DescribeLogStreamsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeLogStreamsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeLogStreamsOutputResponse`
    public func describeLogStreamsPaginated(input: DescribeLogStreamsInput) -> ClientRuntime.PaginatorSequence<DescribeLogStreamsInput, DescribeLogStreamsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeLogStreamsInput, DescribeLogStreamsOutputResponse>(input: input, inputKey: \DescribeLogStreamsInput.nextToken, outputKey: \DescribeLogStreamsOutputResponse.nextToken, paginationFunction: self.describeLogStreams(input:))
    }
}

extension DescribeLogStreamsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeLogStreamsInput {
        return DescribeLogStreamsInput(
            descending: self.descending,
            limit: self.limit,
            logGroupIdentifier: self.logGroupIdentifier,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            nextToken: token,
            orderBy: self.orderBy
        )}
}

extension PaginatorSequence where Input == DescribeLogStreamsInput, Output == DescribeLogStreamsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeLogStreamsPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.LogStream]`
    /// - Returns: `[CloudWatchLogsClientTypes.LogStream]`
    public func logStreams() async throws -> [CloudWatchLogsClientTypes.LogStream] {
        return try await self.asyncCompactMap { item in item.logStreams }
    }
}
extension CloudWatchLogsClient {
    /// Paginate over `[DescribeMetricFiltersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeMetricFiltersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeMetricFiltersOutputResponse`
    public func describeMetricFiltersPaginated(input: DescribeMetricFiltersInput) -> ClientRuntime.PaginatorSequence<DescribeMetricFiltersInput, DescribeMetricFiltersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeMetricFiltersInput, DescribeMetricFiltersOutputResponse>(input: input, inputKey: \DescribeMetricFiltersInput.nextToken, outputKey: \DescribeMetricFiltersOutputResponse.nextToken, paginationFunction: self.describeMetricFilters(input:))
    }
}

extension DescribeMetricFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeMetricFiltersInput {
        return DescribeMetricFiltersInput(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            metricName: self.metricName,
            metricNamespace: self.metricNamespace,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeMetricFiltersInput, Output == DescribeMetricFiltersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeMetricFiltersPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.MetricFilter]`
    /// - Returns: `[CloudWatchLogsClientTypes.MetricFilter]`
    public func metricFilters() async throws -> [CloudWatchLogsClientTypes.MetricFilter] {
        return try await self.asyncCompactMap { item in item.metricFilters }
    }
}
extension CloudWatchLogsClient {
    /// Paginate over `[DescribeSubscriptionFiltersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSubscriptionFiltersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSubscriptionFiltersOutputResponse`
    public func describeSubscriptionFiltersPaginated(input: DescribeSubscriptionFiltersInput) -> ClientRuntime.PaginatorSequence<DescribeSubscriptionFiltersInput, DescribeSubscriptionFiltersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSubscriptionFiltersInput, DescribeSubscriptionFiltersOutputResponse>(input: input, inputKey: \DescribeSubscriptionFiltersInput.nextToken, outputKey: \DescribeSubscriptionFiltersOutputResponse.nextToken, paginationFunction: self.describeSubscriptionFilters(input:))
    }
}

extension DescribeSubscriptionFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSubscriptionFiltersInput {
        return DescribeSubscriptionFiltersInput(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeSubscriptionFiltersInput, Output == DescribeSubscriptionFiltersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeSubscriptionFiltersPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.SubscriptionFilter]`
    /// - Returns: `[CloudWatchLogsClientTypes.SubscriptionFilter]`
    public func subscriptionFilters() async throws -> [CloudWatchLogsClientTypes.SubscriptionFilter] {
        return try await self.asyncCompactMap { item in item.subscriptionFilters }
    }
}
extension CloudWatchLogsClient {
    /// Paginate over `[FilterLogEventsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[FilterLogEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `FilterLogEventsOutputResponse`
    public func filterLogEventsPaginated(input: FilterLogEventsInput) -> ClientRuntime.PaginatorSequence<FilterLogEventsInput, FilterLogEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<FilterLogEventsInput, FilterLogEventsOutputResponse>(input: input, inputKey: \FilterLogEventsInput.nextToken, outputKey: \FilterLogEventsOutputResponse.nextToken, paginationFunction: self.filterLogEvents(input:))
    }
}

extension FilterLogEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> FilterLogEventsInput {
        return FilterLogEventsInput(
            endTime: self.endTime,
            filterPattern: self.filterPattern,
            interleaved: self.interleaved,
            limit: self.limit,
            logGroupIdentifier: self.logGroupIdentifier,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            logStreamNames: self.logStreamNames,
            nextToken: token,
            startTime: self.startTime,
            unmask: self.unmask
        )}
}
extension CloudWatchLogsClient {
    /// Paginate over `[GetLogEventsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetLogEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetLogEventsOutputResponse`
    public func getLogEventsPaginated(input: GetLogEventsInput) -> ClientRuntime.PaginatorSequence<GetLogEventsInput, GetLogEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetLogEventsInput, GetLogEventsOutputResponse>(input: input, inputKey: \GetLogEventsInput.nextToken, outputKey: \GetLogEventsOutputResponse.nextForwardToken, paginationFunction: self.getLogEvents(input:))
    }
}

extension GetLogEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetLogEventsInput {
        return GetLogEventsInput(
            endTime: self.endTime,
            limit: self.limit,
            logGroupIdentifier: self.logGroupIdentifier,
            logGroupName: self.logGroupName,
            logStreamName: self.logStreamName,
            nextToken: token,
            startFromHead: self.startFromHead,
            startTime: self.startTime,
            unmask: self.unmask
        )}
}

extension PaginatorSequence where Input == GetLogEventsInput, Output == GetLogEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `getLogEventsPaginated`
    /// to access the nested member `[CloudWatchLogsClientTypes.OutputLogEvent]`
    /// - Returns: `[CloudWatchLogsClientTypes.OutputLogEvent]`
    public func events() async throws -> [CloudWatchLogsClientTypes.OutputLogEvent] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
