// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SagemakerEdgeClient {
    public static let clientName = "SagemakerEdgeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration
    let serviceName = "Sagemaker Edge"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration) {
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
        let config = try SagemakerEdgeClient.SagemakerEdgeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await SagemakerEdgeClient.SagemakerEdgeClientConfiguration()
        self.init(config: config)
    }
}

extension SagemakerEdgeClient {
    public typealias SagemakerEdgeClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Sagemaker Edge" }
        public var clientName: String { "SagemakerEdgeClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct SagemakerEdgeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SagemakerEdgeClient"
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

extension SagemakerEdgeClient: SagemakerEdgeClientProtocol {
    /// Use to get the active deployments from a device.
    ///
    /// - Parameter GetDeploymentsInput : [no documentation found]
    ///
    /// - Returns: `GetDeploymentsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeployments(input: GetDeploymentsInput) async throws -> GetDeploymentsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeployments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetDeploymentsInput, GetDeploymentsOutputResponse, GetDeploymentsOutputError>(id: "getDeployments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeploymentsInput, GetDeploymentsOutputResponse, GetDeploymentsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeploymentsInput, GetDeploymentsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetDeploymentsOutputResponse, GetDeploymentsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetDeploymentsInput, GetDeploymentsOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetDeploymentsInput, GetDeploymentsOutputResponse>(xmlName: "GetDeploymentsRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeploymentsOutputResponse, GetDeploymentsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetDeploymentsOutputResponse, GetDeploymentsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeploymentsOutputResponse, GetDeploymentsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeploymentsOutputResponse, GetDeploymentsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Use to check if a device is registered with SageMaker Edge Manager.
    ///
    /// - Parameter GetDeviceRegistrationInput : [no documentation found]
    ///
    /// - Returns: `GetDeviceRegistrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeviceRegistration(input: GetDeviceRegistrationInput) async throws -> GetDeviceRegistrationOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeviceRegistration")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetDeviceRegistrationInput, GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>(id: "getDeviceRegistration")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutputResponse>(xmlName: "GetDeviceRegistrationRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeviceRegistrationOutputResponse, GetDeviceRegistrationOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Use to get the current status of devices registered on SageMaker Edge Manager.
    ///
    /// - Parameter SendHeartbeatInput : [no documentation found]
    ///
    /// - Returns: `SendHeartbeatOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func sendHeartbeat(input: SendHeartbeatInput) async throws -> SendHeartbeatOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendHeartbeat")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SendHeartbeatInput, SendHeartbeatOutputResponse, SendHeartbeatOutputError>(id: "sendHeartbeat")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SendHeartbeatInput, SendHeartbeatOutputResponse, SendHeartbeatOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SendHeartbeatInput, SendHeartbeatOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SendHeartbeatOutputResponse, SendHeartbeatOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<SendHeartbeatInput, SendHeartbeatOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<SendHeartbeatInput, SendHeartbeatOutputResponse>(xmlName: "SendHeartbeatRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SendHeartbeatOutputResponse, SendHeartbeatOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<SendHeartbeatOutputResponse, SendHeartbeatOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SendHeartbeatOutputResponse, SendHeartbeatOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SendHeartbeatOutputResponse, SendHeartbeatOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
