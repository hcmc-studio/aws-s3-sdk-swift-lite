// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Elemental MediaPackage
public protocol MediaPackageClientProtocol {
    /// Changes the Channel's properities to configure log subscription
    ///
    /// - Parameter ConfigureLogsInput : the option to configure log subscription.
    ///
    /// - Returns: `ConfigureLogsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func configureLogs(input: ConfigureLogsInput) async throws -> ConfigureLogsOutputResponse
    /// Creates a new Channel.
    ///
    /// - Parameter CreateChannelInput : A new Channel configuration.
    ///
    /// - Returns: `CreateChannelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// Creates a new HarvestJob record.
    ///
    /// - Parameter CreateHarvestJobInput : Configuration parameters used to create a new HarvestJob.
    ///
    /// - Returns: `CreateHarvestJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func createHarvestJob(input: CreateHarvestJobInput) async throws -> CreateHarvestJobOutputResponse
    /// Creates a new OriginEndpoint record.
    ///
    /// - Parameter CreateOriginEndpointInput : Configuration parameters used to create a new OriginEndpoint.
    ///
    /// - Returns: `CreateOriginEndpointOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func createOriginEndpoint(input: CreateOriginEndpointInput) async throws -> CreateOriginEndpointOutputResponse
    /// Deletes an existing Channel.
    ///
    /// - Parameter DeleteChannelInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// Deletes an existing OriginEndpoint.
    ///
    /// - Parameter DeleteOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeleteOriginEndpointOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func deleteOriginEndpoint(input: DeleteOriginEndpointInput) async throws -> DeleteOriginEndpointOutputResponse
    /// Gets details about a Channel.
    ///
    /// - Parameter DescribeChannelInput : [no documentation found]
    ///
    /// - Returns: `DescribeChannelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    /// Gets details about an existing HarvestJob.
    ///
    /// - Parameter DescribeHarvestJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeHarvestJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func describeHarvestJob(input: DescribeHarvestJobInput) async throws -> DescribeHarvestJobOutputResponse
    /// Gets details about an existing OriginEndpoint.
    ///
    /// - Parameter DescribeOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `DescribeOriginEndpointOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func describeOriginEndpoint(input: DescribeOriginEndpointInput) async throws -> DescribeOriginEndpointOutputResponse
    /// Returns a collection of Channels.
    ///
    /// - Parameter ListChannelsInput : [no documentation found]
    ///
    /// - Returns: `ListChannelsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// Returns a collection of HarvestJob records.
    ///
    /// - Parameter ListHarvestJobsInput : [no documentation found]
    ///
    /// - Returns: `ListHarvestJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func listHarvestJobs(input: ListHarvestJobsInput) async throws -> ListHarvestJobsOutputResponse
    /// Returns a collection of OriginEndpoint records.
    ///
    /// - Parameter ListOriginEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListOriginEndpointsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func listOriginEndpoints(input: ListOriginEndpointsInput) async throws -> ListOriginEndpointsOutputResponse
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    ///
    /// - Parameter RotateChannelCredentialsInput : [no documentation found]
    ///
    /// - Returns: `RotateChannelCredentialsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func rotateChannelCredentials(input: RotateChannelCredentialsInput) async throws -> RotateChannelCredentialsOutputResponse
    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    ///
    /// - Parameter RotateIngestEndpointCredentialsInput : [no documentation found]
    ///
    /// - Returns: `RotateIngestEndpointCredentialsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func rotateIngestEndpointCredentials(input: RotateIngestEndpointCredentialsInput) async throws -> RotateIngestEndpointCredentialsOutputResponse
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing Channel.
    ///
    /// - Parameter UpdateChannelInput : Configuration parameters used to update the Channel.
    ///
    /// - Returns: `UpdateChannelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    /// Updates an existing OriginEndpoint.
    ///
    /// - Parameter UpdateOriginEndpointInput : Configuration parameters used to update an existing OriginEndpoint.
    ///
    /// - Returns: `UpdateOriginEndpointOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ForbiddenException` : The client is not authorized to access the requested resource.
    /// - `InternalServerErrorException` : An unexpected error occurred.
    /// - `NotFoundException` : The requested resource does not exist.
    /// - `ServiceUnavailableException` : An unexpected error occurred.
    /// - `TooManyRequestsException` : The client has exceeded their resource or throttling limits.
    /// - `UnprocessableEntityException` : The parameters sent in the request are not valid.
    func updateOriginEndpoint(input: UpdateOriginEndpointInput) async throws -> UpdateOriginEndpointOutputResponse
}

public enum MediaPackageClientTypes {}
