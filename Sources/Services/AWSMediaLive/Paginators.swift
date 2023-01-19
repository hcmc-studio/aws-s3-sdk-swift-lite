// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaLiveClient {
    /// Paginate over `[DescribeScheduleOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeScheduleInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeScheduleOutputResponse`
    public func describeSchedulePaginated(input: DescribeScheduleInput) -> ClientRuntime.PaginatorSequence<DescribeScheduleInput, DescribeScheduleOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeScheduleInput, DescribeScheduleOutputResponse>(input: input, inputKey: \DescribeScheduleInput.nextToken, outputKey: \DescribeScheduleOutputResponse.nextToken, paginationFunction: self.describeSchedule(input:))
    }
}

extension DescribeScheduleInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeScheduleInput {
        return DescribeScheduleInput(
            channelId: self.channelId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeScheduleInput, Output == DescribeScheduleOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeSchedulePaginated`
    /// to access the nested member `[MediaLiveClientTypes.ScheduleAction]`
    /// - Returns: `[MediaLiveClientTypes.ScheduleAction]`
    public func scheduleActions() async throws -> [MediaLiveClientTypes.ScheduleAction] {
        return try await self.asyncCompactMap { item in item.scheduleActions }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListChannelsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListChannelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListChannelsOutputResponse`
    public func listChannelsPaginated(input: ListChannelsInput) -> ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse>(input: input, inputKey: \ListChannelsInput.nextToken, outputKey: \ListChannelsOutputResponse.nextToken, paginationFunction: self.listChannels(input:))
    }
}

extension ListChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelsInput {
        return ListChannelsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListChannelsInput, Output == ListChannelsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listChannelsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.ChannelSummary]`
    /// - Returns: `[MediaLiveClientTypes.ChannelSummary]`
    public func channels() async throws -> [MediaLiveClientTypes.ChannelSummary] {
        return try await self.asyncCompactMap { item in item.channels }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListInputDevicesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInputDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInputDevicesOutputResponse`
    public func listInputDevicesPaginated(input: ListInputDevicesInput) -> ClientRuntime.PaginatorSequence<ListInputDevicesInput, ListInputDevicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInputDevicesInput, ListInputDevicesOutputResponse>(input: input, inputKey: \ListInputDevicesInput.nextToken, outputKey: \ListInputDevicesOutputResponse.nextToken, paginationFunction: self.listInputDevices(input:))
    }
}

extension ListInputDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInputDevicesInput {
        return ListInputDevicesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListInputDevicesInput, Output == ListInputDevicesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listInputDevicesPaginated`
    /// to access the nested member `[MediaLiveClientTypes.InputDeviceSummary]`
    /// - Returns: `[MediaLiveClientTypes.InputDeviceSummary]`
    public func inputDevices() async throws -> [MediaLiveClientTypes.InputDeviceSummary] {
        return try await self.asyncCompactMap { item in item.inputDevices }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListInputDeviceTransfersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInputDeviceTransfersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInputDeviceTransfersOutputResponse`
    public func listInputDeviceTransfersPaginated(input: ListInputDeviceTransfersInput) -> ClientRuntime.PaginatorSequence<ListInputDeviceTransfersInput, ListInputDeviceTransfersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInputDeviceTransfersInput, ListInputDeviceTransfersOutputResponse>(input: input, inputKey: \ListInputDeviceTransfersInput.nextToken, outputKey: \ListInputDeviceTransfersOutputResponse.nextToken, paginationFunction: self.listInputDeviceTransfers(input:))
    }
}

extension ListInputDeviceTransfersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInputDeviceTransfersInput {
        return ListInputDeviceTransfersInput(
            maxResults: self.maxResults,
            nextToken: token,
            transferType: self.transferType
        )}
}

extension PaginatorSequence where Input == ListInputDeviceTransfersInput, Output == ListInputDeviceTransfersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listInputDeviceTransfersPaginated`
    /// to access the nested member `[MediaLiveClientTypes.TransferringInputDeviceSummary]`
    /// - Returns: `[MediaLiveClientTypes.TransferringInputDeviceSummary]`
    public func inputDeviceTransfers() async throws -> [MediaLiveClientTypes.TransferringInputDeviceSummary] {
        return try await self.asyncCompactMap { item in item.inputDeviceTransfers }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListInputsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInputsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInputsOutputResponse`
    public func listInputsPaginated(input: ListInputsInput) -> ClientRuntime.PaginatorSequence<ListInputsInput, ListInputsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInputsInput, ListInputsOutputResponse>(input: input, inputKey: \ListInputsInput.nextToken, outputKey: \ListInputsOutputResponse.nextToken, paginationFunction: self.listInputs(input:))
    }
}

extension ListInputsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInputsInput {
        return ListInputsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListInputsInput, Output == ListInputsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listInputsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.Input]`
    /// - Returns: `[MediaLiveClientTypes.Input]`
    public func inputs() async throws -> [MediaLiveClientTypes.Input] {
        return try await self.asyncCompactMap { item in item.inputs }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListInputSecurityGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInputSecurityGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInputSecurityGroupsOutputResponse`
    public func listInputSecurityGroupsPaginated(input: ListInputSecurityGroupsInput) -> ClientRuntime.PaginatorSequence<ListInputSecurityGroupsInput, ListInputSecurityGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInputSecurityGroupsInput, ListInputSecurityGroupsOutputResponse>(input: input, inputKey: \ListInputSecurityGroupsInput.nextToken, outputKey: \ListInputSecurityGroupsOutputResponse.nextToken, paginationFunction: self.listInputSecurityGroups(input:))
    }
}

extension ListInputSecurityGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInputSecurityGroupsInput {
        return ListInputSecurityGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListInputSecurityGroupsInput, Output == ListInputSecurityGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listInputSecurityGroupsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.InputSecurityGroup]`
    /// - Returns: `[MediaLiveClientTypes.InputSecurityGroup]`
    public func inputSecurityGroups() async throws -> [MediaLiveClientTypes.InputSecurityGroup] {
        return try await self.asyncCompactMap { item in item.inputSecurityGroups }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListMultiplexesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMultiplexesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMultiplexesOutputResponse`
    public func listMultiplexesPaginated(input: ListMultiplexesInput) -> ClientRuntime.PaginatorSequence<ListMultiplexesInput, ListMultiplexesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMultiplexesInput, ListMultiplexesOutputResponse>(input: input, inputKey: \ListMultiplexesInput.nextToken, outputKey: \ListMultiplexesOutputResponse.nextToken, paginationFunction: self.listMultiplexes(input:))
    }
}

extension ListMultiplexesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMultiplexesInput {
        return ListMultiplexesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListMultiplexesInput, Output == ListMultiplexesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listMultiplexesPaginated`
    /// to access the nested member `[MediaLiveClientTypes.MultiplexSummary]`
    /// - Returns: `[MediaLiveClientTypes.MultiplexSummary]`
    public func multiplexes() async throws -> [MediaLiveClientTypes.MultiplexSummary] {
        return try await self.asyncCompactMap { item in item.multiplexes }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListMultiplexProgramsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMultiplexProgramsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMultiplexProgramsOutputResponse`
    public func listMultiplexProgramsPaginated(input: ListMultiplexProgramsInput) -> ClientRuntime.PaginatorSequence<ListMultiplexProgramsInput, ListMultiplexProgramsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMultiplexProgramsInput, ListMultiplexProgramsOutputResponse>(input: input, inputKey: \ListMultiplexProgramsInput.nextToken, outputKey: \ListMultiplexProgramsOutputResponse.nextToken, paginationFunction: self.listMultiplexPrograms(input:))
    }
}

extension ListMultiplexProgramsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMultiplexProgramsInput {
        return ListMultiplexProgramsInput(
            maxResults: self.maxResults,
            multiplexId: self.multiplexId,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListMultiplexProgramsInput, Output == ListMultiplexProgramsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listMultiplexProgramsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.MultiplexProgramSummary]`
    /// - Returns: `[MediaLiveClientTypes.MultiplexProgramSummary]`
    public func multiplexPrograms() async throws -> [MediaLiveClientTypes.MultiplexProgramSummary] {
        return try await self.asyncCompactMap { item in item.multiplexPrograms }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListOfferingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOfferingsOutputResponse`
    public func listOfferingsPaginated(input: ListOfferingsInput) -> ClientRuntime.PaginatorSequence<ListOfferingsInput, ListOfferingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOfferingsInput, ListOfferingsOutputResponse>(input: input, inputKey: \ListOfferingsInput.nextToken, outputKey: \ListOfferingsOutputResponse.nextToken, paginationFunction: self.listOfferings(input:))
    }
}

extension ListOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOfferingsInput {
        return ListOfferingsInput(
            channelClass: self.channelClass,
            channelConfiguration: self.channelConfiguration,
            codec: self.codec,
            duration: self.duration,
            maxResults: self.maxResults,
            maximumBitrate: self.maximumBitrate,
            maximumFramerate: self.maximumFramerate,
            nextToken: token,
            resolution: self.resolution,
            resourceType: self.resourceType,
            specialFeature: self.specialFeature,
            videoQuality: self.videoQuality
        )}
}

extension PaginatorSequence where Input == ListOfferingsInput, Output == ListOfferingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listOfferingsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.Offering]`
    /// - Returns: `[MediaLiveClientTypes.Offering]`
    public func offerings() async throws -> [MediaLiveClientTypes.Offering] {
        return try await self.asyncCompactMap { item in item.offerings }
    }
}
extension MediaLiveClient {
    /// Paginate over `[ListReservationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReservationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReservationsOutputResponse`
    public func listReservationsPaginated(input: ListReservationsInput) -> ClientRuntime.PaginatorSequence<ListReservationsInput, ListReservationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListReservationsInput, ListReservationsOutputResponse>(input: input, inputKey: \ListReservationsInput.nextToken, outputKey: \ListReservationsOutputResponse.nextToken, paginationFunction: self.listReservations(input:))
    }
}

extension ListReservationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReservationsInput {
        return ListReservationsInput(
            channelClass: self.channelClass,
            codec: self.codec,
            maxResults: self.maxResults,
            maximumBitrate: self.maximumBitrate,
            maximumFramerate: self.maximumFramerate,
            nextToken: token,
            resolution: self.resolution,
            resourceType: self.resourceType,
            specialFeature: self.specialFeature,
            videoQuality: self.videoQuality
        )}
}

extension PaginatorSequence where Input == ListReservationsInput, Output == ListReservationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listReservationsPaginated`
    /// to access the nested member `[MediaLiveClientTypes.Reservation]`
    /// - Returns: `[MediaLiveClientTypes.Reservation]`
    public func reservations() async throws -> [MediaLiveClientTypes.Reservation] {
        return try await self.asyncCompactMap { item in item.reservations }
    }
}
