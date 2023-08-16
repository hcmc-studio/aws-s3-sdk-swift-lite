// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class PersonalizeRuntimeClient {
    public static let clientName = "PersonalizeRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration
    let serviceName = "Personalize Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration) {
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
        let config = try PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension PersonalizeRuntimeClient {
    public typealias PersonalizeRuntimeClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Personalize Runtime" }
        public var clientName: String { "PersonalizeRuntimeClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct PersonalizeRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "PersonalizeRuntimeClient"
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

extension PersonalizeRuntimeClient: PersonalizeRuntimeClientProtocol {
    /// Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user. The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING.
    ///
    /// - Parameter GetPersonalizedRankingInput : [no documentation found]
    ///
    /// - Returns: `GetPersonalizedRankingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : Provide a valid value for the field or parameter.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    public func getPersonalizedRanking(input: GetPersonalizedRankingInput) async throws -> GetPersonalizedRankingOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPersonalizedRanking")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "personalize")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetPersonalizedRankingInput, GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>(id: "getPersonalizedRanking")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutputResponse>(xmlName: "GetPersonalizedRankingRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Returns a list of recommended items. For campaigns, the campaign's Amazon Resource Name (ARN) is required and the required user and item input depends on the recipe type used to create the solution backing the campaign as follows:
    ///
    /// * USER_PERSONALIZATION - userId required, itemId not used
    ///
    /// * RELATED_ITEMS - itemId required, userId not used
    ///
    ///
    /// Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. For recommenders, the recommender's ARN is required and the required item and user input depends on the use case (domain-based recipe) backing the recommender. For information on use case requirements see [Choosing recommender use cases](https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).
    ///
    /// - Parameter GetRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : Provide a valid value for the field or parameter.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    public func getRecommendations(input: GetRecommendationsInput) async throws -> GetRecommendationsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRecommendations")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "personalize")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRecommendationsInput, GetRecommendationsOutputResponse, GetRecommendationsOutputError>(id: "getRecommendations")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRecommendationsInput, GetRecommendationsOutputResponse, GetRecommendationsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRecommendationsInput, GetRecommendationsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRecommendationsOutputResponse, GetRecommendationsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRecommendationsInput, GetRecommendationsOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetRecommendationsInput, GetRecommendationsOutputResponse>(xmlName: "GetRecommendationsRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRecommendationsOutputResponse, GetRecommendationsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRecommendationsOutputResponse, GetRecommendationsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRecommendationsOutputResponse, GetRecommendationsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRecommendationsOutputResponse, GetRecommendationsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
