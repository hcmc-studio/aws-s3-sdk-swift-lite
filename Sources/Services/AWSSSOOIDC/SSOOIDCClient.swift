// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SSOOIDCClient {
    public static let clientName = "SSOOIDCClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SSOOIDCClient.SSOOIDCClientConfiguration
    let serviceName = "SSO OIDC"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: SSOOIDCClient.SSOOIDCClientConfiguration) {
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
        let config = try SSOOIDCClient.SSOOIDCClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await SSOOIDCClient.SSOOIDCClientConfiguration()
        self.init(config: config)
    }
}

extension SSOOIDCClient {
    public typealias SSOOIDCClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "SSO OIDC" }
        public var clientName: String { "SSOOIDCClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct SSOOIDCClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SSOOIDCClient"
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

extension SSOOIDCClient: SSOOIDCClientProtocol {
    /// Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    ///
    /// - Parameter CreateTokenInput : [no documentation found]
    ///
    /// - Returns: `CreateTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `AuthorizationPendingException` : Indicates that a request to authorize a client with an access user session token is pending.
    /// - `ExpiredTokenException` : Indicates that the token issued by the service is expired and is no longer valid.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidGrantException` : Indicates that a request contains an invalid grant. This can occur if a client makes a [CreateToken] request with an invalid grant type.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    /// - `UnsupportedGrantTypeException` : Indicates that the grant type in the request is not supported by the service.
    public func createToken(input: CreateTokenInput) async throws -> CreateTokenOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createToken")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<CreateTokenInput, CreateTokenOutputResponse, CreateTokenOutputError>(id: "createToken")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateTokenInput, CreateTokenOutputResponse, CreateTokenOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateTokenInput, CreateTokenOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateTokenOutputResponse, CreateTokenOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateTokenInput, CreateTokenOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<CreateTokenInput, CreateTokenOutputResponse>(xmlName: "CreateTokenRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, CreateTokenOutputResponse, CreateTokenOutputError>(options: config.retryStrategyOptions))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateTokenOutputResponse, CreateTokenOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateTokenOutputResponse, CreateTokenOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Registers a client with IAM Identity Center. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    ///
    /// - Parameter RegisterClientInput : [no documentation found]
    ///
    /// - Returns: `RegisterClientOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientMetadataException` : Indicates that the client information sent in the request during registration is invalid.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    public func registerClient(input: RegisterClientInput) async throws -> RegisterClientOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "registerClient")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<RegisterClientInput, RegisterClientOutputResponse, RegisterClientOutputError>(id: "registerClient")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<RegisterClientInput, RegisterClientOutputResponse, RegisterClientOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<RegisterClientInput, RegisterClientOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<RegisterClientOutputResponse, RegisterClientOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<RegisterClientInput, RegisterClientOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<RegisterClientInput, RegisterClientOutputResponse>(xmlName: "RegisterClientRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, RegisterClientOutputResponse, RegisterClientOutputError>(options: config.retryStrategyOptions))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<RegisterClientOutputResponse, RegisterClientOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<RegisterClientOutputResponse, RegisterClientOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Initiates device authorization by requesting a pair of verification codes from the authorization service.
    ///
    /// - Parameter StartDeviceAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `StartDeviceAuthorizationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    public func startDeviceAuthorization(input: StartDeviceAuthorizationInput) async throws -> StartDeviceAuthorizationOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startDeviceAuthorization")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>(id: "startDeviceAuthorization")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutputResponse>(xmlName: "StartDeviceAuthorizationRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>(options: config.retryStrategyOptions))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartDeviceAuthorizationOutputResponse, StartDeviceAuthorizationOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
