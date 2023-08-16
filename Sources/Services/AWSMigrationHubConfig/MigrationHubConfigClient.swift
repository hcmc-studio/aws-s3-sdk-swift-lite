// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MigrationHubConfigClient {
    public static let clientName = "MigrationHubConfigClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MigrationHubConfigClient.MigrationHubConfigClientConfiguration
    let serviceName = "MigrationHub Config"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: MigrationHubConfigClient.MigrationHubConfigClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MigrationHubConfigClient.MigrationHubConfigClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MigrationHubConfigClient.MigrationHubConfigClientConfiguration()
        self.init(config: config)
    }
}

extension MigrationHubConfigClient {
    public typealias MigrationHubConfigClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "MigrationHub Config" }
        public var clientName: String { "MigrationHubConfigClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct MigrationHubConfigClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MigrationHubConfigClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MigrationHubConfigClient: MigrationHubConfigClientProtocol {
    /// This API sets up the home region for the calling account only.
    ///
    /// - Parameter CreateHomeRegionControlInput : [no documentation found]
    ///
    /// - Returns: `CreateHomeRegionControlOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `DryRunOperation` : Exception raised to indicate that authorization of an action was successful, when the DryRun flag is set to true.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func createHomeRegionControl(input: CreateHomeRegionControlInput) async throws -> CreateHomeRegionControlOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createHomeRegionControl")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(id: "createHomeRegionControl")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse>(xAmzTarget: "AWSMigrationHubMultiAccountService.CreateHomeRegionControl"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse>(xmlName: "CreateHomeRegionControlRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// This API permits filtering on the ControlId and HomeRegion fields.
    ///
    /// - Parameter DescribeHomeRegionControlsInput : [no documentation found]
    ///
    /// - Returns: `DescribeHomeRegionControlsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func describeHomeRegionControls(input: DescribeHomeRegionControlsInput) async throws -> DescribeHomeRegionControlsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeHomeRegionControls")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(id: "describeHomeRegionControls")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse>(xAmzTarget: "AWSMigrationHubMultiAccountService.DescribeHomeRegionControls"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse>(xmlName: "DescribeHomeRegionControlsRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    ///
    /// - Parameter GetHomeRegionInput : [no documentation found]
    ///
    /// - Returns: `GetHomeRegionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func getHomeRegion(input: GetHomeRegionInput) async throws -> GetHomeRegionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getHomeRegion")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetHomeRegionInput, GetHomeRegionOutputResponse, GetHomeRegionOutputError>(id: "getHomeRegion")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse, GetHomeRegionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetHomeRegionOutputResponse, GetHomeRegionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse>(xAmzTarget: "AWSMigrationHubMultiAccountService.GetHomeRegion"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse>(xmlName: "GetHomeRegionRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetHomeRegionOutputResponse, GetHomeRegionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetHomeRegionOutputResponse, GetHomeRegionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetHomeRegionOutputResponse, GetHomeRegionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetHomeRegionOutputResponse, GetHomeRegionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
