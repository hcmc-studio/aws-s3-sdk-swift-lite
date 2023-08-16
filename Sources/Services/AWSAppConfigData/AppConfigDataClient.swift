// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class AppConfigDataClient {
    public static let clientName = "AppConfigDataClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AppConfigDataClient.AppConfigDataClientConfiguration
    let serviceName = "AppConfigData"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AppConfigDataClient.AppConfigDataClientConfiguration) {
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
        let config = try AppConfigDataClient.AppConfigDataClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await AppConfigDataClient.AppConfigDataClientConfiguration()
        self.init(config: config)
    }
}

extension AppConfigDataClient {
    public typealias AppConfigDataClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "AppConfigData" }
        public var clientName: String { "AppConfigDataClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct AppConfigDataClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "AppConfigDataClient"
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

extension AppConfigDataClient: AppConfigDataClientProtocol {
    /// Retrieves the latest deployed configuration. This API may return empty configuration data if the client already has the latest version. For more information about this API action and to view example CLI commands that show how to use it with the [StartConfigurationSession] API action, see [Retrieving the configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration) in the AppConfig User Guide. Note the following important information.
    ///
    /// * Each configuration token is only valid for one call to GetLatestConfiguration. The GetLatestConfiguration response includes a NextPollConfigurationToken that should always replace the token used for the just-completed call in preparation for the next one.
    ///
    /// * GetLatestConfiguration is a priced call. For more information, see [Pricing](https://aws.amazon.com/systems-manager/pricing/).
    ///
    /// - Parameter GetLatestConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetLatestConfigurationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input fails to satisfy the constraints specified by the service.
    /// - `InternalServerException` : There was an internal failure in the service.
    /// - `ResourceNotFoundException` : The requested resource could not be found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func getLatestConfiguration(input: GetLatestConfigurationInput) async throws -> GetLatestConfigurationOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getLatestConfiguration")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "appconfig")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetLatestConfigurationInput, GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>(id: "getLatestConfiguration")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetLatestConfigurationInput, GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetLatestConfigurationInput, GetLatestConfigurationOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<GetLatestConfigurationInput, GetLatestConfigurationOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetLatestConfigurationOutputResponse, GetLatestConfigurationOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Starts a configuration session used to retrieve a deployed configuration. For more information about this API action and to view example CLI commands that show how to use it with the [GetLatestConfiguration] API action, see [Retrieving the configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration) in the AppConfig User Guide.
    ///
    /// - Parameter StartConfigurationSessionInput : [no documentation found]
    ///
    /// - Returns: `StartConfigurationSessionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input fails to satisfy the constraints specified by the service.
    /// - `InternalServerException` : There was an internal failure in the service.
    /// - `ResourceNotFoundException` : The requested resource could not be found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func startConfigurationSession(input: StartConfigurationSessionInput) async throws -> StartConfigurationSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startConfigurationSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "appconfig")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartConfigurationSessionInput, StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>(id: "startConfigurationSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartConfigurationSessionInput, StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartConfigurationSessionInput, StartConfigurationSessionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartConfigurationSessionInput, StartConfigurationSessionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartConfigurationSessionInput, StartConfigurationSessionOutputResponse>(xmlName: "StartConfigurationSessionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartConfigurationSessionOutputResponse, StartConfigurationSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
