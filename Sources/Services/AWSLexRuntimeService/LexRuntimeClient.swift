// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class LexRuntimeClient {
    public static let clientName = "LexRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: LexRuntimeClient.LexRuntimeClientConfiguration
    let serviceName = "Lex Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: LexRuntimeClient.LexRuntimeClientConfiguration) {
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
        let config = try LexRuntimeClient.LexRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await LexRuntimeClient.LexRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension LexRuntimeClient {
    public typealias LexRuntimeClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Lex Runtime Service" }
        public var clientName: String { "LexRuntimeClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct LexRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "LexRuntimeClient"
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

extension LexRuntimeClient: LexRuntimeClientProtocol {
    /// Removes session information for a specified bot, alias, and user ID.
    ///
    /// - Parameter DeleteSessionInput : [no documentation found]
    ///
    /// - Returns: `DeleteSessionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
    /// - `ConflictException` : Two clients are using the same AWS account, Amazon Lex bot, and user ID.
    /// - `InternalFailureException` : Internal service error. Retry the call.
    /// - `LimitExceededException` : Exceeded a limit.
    /// - `NotFoundException` : The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
    public func deleteSession(input: DeleteSessionInput) async throws -> DeleteSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>(id: "deleteSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteSessionInput, DeleteSessionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteSessionOutputResponse, DeleteSessionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Returns session information for a specified bot, alias, and user ID.
    ///
    /// - Parameter GetSessionInput : [no documentation found]
    ///
    /// - Returns: `GetSessionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
    /// - `InternalFailureException` : Internal service error. Retry the call.
    /// - `LimitExceededException` : Exceeded a limit.
    /// - `NotFoundException` : The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
    public func getSession(input: GetSessionInput) async throws -> GetSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>(id: "getSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetSessionInput, GetSessionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetSessionOutputResponse, GetSessionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<GetSessionInput, GetSessionOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetSessionOutputResponse, GetSessionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetSessionOutputResponse, GetSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetSessionOutputResponse, GetSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetSessionOutputResponse, GetSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Sends user input (text or speech) to Amazon Lex. Clients use this API to send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the user input using the machine learning model that it built for the bot. The PostContent operation supports audio input at 8kHz and 16kHz. You can use 8kHz audio to achieve higher speech recognition accuracy in telephone audio applications. In response, Amazon Lex returns the next message to convey to the user. Consider the following example messages:
    ///
    /// * For a user input "I would like a pizza," Amazon Lex might return a response with a message eliciting slot data (for example, PizzaSize): "What size pizza would you like?".
    ///
    /// * After the user provides all of the pizza order information, Amazon Lex might return a response with a message to get user confirmation: "Order the pizza?".
    ///
    /// * After the user replies "Yes" to the confirmation prompt, Amazon Lex might return a conclusion statement: "Thank you, your cheese pizza has been ordered.".
    ///
    ///
    /// Not all Amazon Lex messages require a response from the user. For example, conclusion statements do not require a response. Some messages require only a yes or no response. In addition to the message, Amazon Lex provides additional context about the message in the response that you can use to enhance client behavior, such as displaying the appropriate client user interface. Consider the following examples:
    ///
    /// * If the message is to elicit slot data, Amazon Lex returns the following context information:
    ///
    /// * x-amz-lex-dialog-state header set to ElicitSlot
    ///
    /// * x-amz-lex-intent-name header set to the intent name in the current context
    ///
    /// * x-amz-lex-slot-to-elicit header set to the slot name for which the message is eliciting information
    ///
    /// * x-amz-lex-slots header set to a map of slots configured for the intent with their current values
    ///
    ///
    ///
    ///
    /// * If the message is a confirmation prompt, the x-amz-lex-dialog-state header is set to Confirmation and the x-amz-lex-slot-to-elicit header is omitted.
    ///
    /// * If the message is a clarification prompt configured for the intent, indicating that the user intent is not understood, the x-amz-dialog-state header is set to ElicitIntent and the x-amz-slot-to-elicit header is omitted.
    ///
    ///
    /// In addition, Amazon Lex also returns your application-specific sessionAttributes. For more information, see [Managing Conversation Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
    ///
    /// - Parameter PostContentInput : [no documentation found]
    ///
    /// - Returns: `PostContentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadGatewayException` : Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.
    /// - `BadRequestException` : Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
    /// - `ConflictException` : Two clients are using the same AWS account, Amazon Lex bot, and user ID.
    /// - `DependencyFailedException` : One of the dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example,
    ///
    /// * If Amazon Lex does not have sufficient permissions to call a Lambda function.
    ///
    /// * If a Lambda function takes longer than 30 seconds to execute.
    ///
    /// * If a fulfillment Lambda function returns a Delegate dialog action without removing any slot values.
    /// - `InternalFailureException` : Internal service error. Retry the call.
    /// - `LimitExceededException` : Exceeded a limit.
    /// - `LoopDetectedException` : This exception is not used.
    /// - `NotAcceptableException` : The accept header in the request does not have a valid value.
    /// - `NotFoundException` : The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
    /// - `RequestTimeoutException` : The input speech is too long.
    /// - `UnsupportedMediaTypeException` : The Content-Type header (PostContent API) has an invalid value.
    public func postContent(input: PostContentInput) async throws -> PostContentOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "postContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PostContentInput, PostContentOutputResponse, PostContentOutputError>(id: "postContent")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PostContentInput, PostContentOutputResponse, PostContentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PostContentInput, PostContentOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PostContentOutputResponse, PostContentOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<PostContentInput, PostContentOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PostContentInput, PostContentOutputResponse>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: PostContentInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PostContentOutputResponse, PostContentOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: true, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PostContentOutputResponse, PostContentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PostContentOutputResponse, PostContentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PostContentOutputResponse, PostContentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Sends user input to Amazon Lex. Client applications can use this API to send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input using the machine learning model it built for the bot. In response, Amazon Lex returns the next message to convey to the user an optional responseCard to display. Consider the following example messages:
    ///
    /// * For a user input "I would like a pizza", Amazon Lex might return a response with a message eliciting slot data (for example, PizzaSize): "What size pizza would you like?"
    ///
    /// * After the user provides all of the pizza order information, Amazon Lex might return a response with a message to obtain user confirmation "Proceed with the pizza order?".
    ///
    /// * After the user replies to a confirmation prompt with a "yes", Amazon Lex might return a conclusion statement: "Thank you, your cheese pizza has been ordered.".
    ///
    ///
    /// Not all Amazon Lex messages require a user response. For example, a conclusion statement does not require a response. Some messages require only a "yes" or "no" user response. In addition to the message, Amazon Lex provides additional context about the message in the response that you might use to enhance client behavior, for example, to display the appropriate client user interface. These are the slotToElicit, dialogState, intentName, and slots fields in the response. Consider the following examples:
    ///
    /// * If the message is to elicit slot data, Amazon Lex returns the following context information:
    ///
    /// * dialogState set to ElicitSlot
    ///
    /// * intentName set to the intent name in the current context
    ///
    /// * slotToElicit set to the slot name for which the message is eliciting information
    ///
    /// * slots set to a map of slots, configured for the intent, with currently known values
    ///
    ///
    ///
    ///
    /// * If the message is a confirmation prompt, the dialogState is set to ConfirmIntent and SlotToElicit is set to null.
    ///
    /// * If the message is a clarification prompt (configured for the intent) that indicates that user intent is not understood, the dialogState is set to ElicitIntent and slotToElicit is set to null.
    ///
    ///
    /// In addition, Amazon Lex also returns your application-specific sessionAttributes. For more information, see [Managing Conversation Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
    ///
    /// - Parameter PostTextInput : [no documentation found]
    ///
    /// - Returns: `PostTextOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadGatewayException` : Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.
    /// - `BadRequestException` : Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
    /// - `ConflictException` : Two clients are using the same AWS account, Amazon Lex bot, and user ID.
    /// - `DependencyFailedException` : One of the dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example,
    ///
    /// * If Amazon Lex does not have sufficient permissions to call a Lambda function.
    ///
    /// * If a Lambda function takes longer than 30 seconds to execute.
    ///
    /// * If a fulfillment Lambda function returns a Delegate dialog action without removing any slot values.
    /// - `InternalFailureException` : Internal service error. Retry the call.
    /// - `LimitExceededException` : Exceeded a limit.
    /// - `LoopDetectedException` : This exception is not used.
    /// - `NotFoundException` : The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
    public func postText(input: PostTextInput) async throws -> PostTextOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "postText")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PostTextInput, PostTextOutputResponse, PostTextOutputError>(id: "postText")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PostTextInput, PostTextOutputResponse, PostTextOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PostTextInput, PostTextOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PostTextOutputResponse, PostTextOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PostTextInput, PostTextOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PostTextInput, PostTextOutputResponse>(xmlName: "PostTextRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PostTextOutputResponse, PostTextOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PostTextOutputResponse, PostTextOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PostTextOutputResponse, PostTextOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PostTextOutputResponse, PostTextOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Creates a new session or modifies an existing session with an Amazon Lex bot. Use this operation to enable your application to set the state of the bot. For more information, see [Managing Sessions](https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html).
    ///
    /// - Parameter PutSessionInput : [no documentation found]
    ///
    /// - Returns: `PutSessionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadGatewayException` : Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.
    /// - `BadRequestException` : Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
    /// - `ConflictException` : Two clients are using the same AWS account, Amazon Lex bot, and user ID.
    /// - `DependencyFailedException` : One of the dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example,
    ///
    /// * If Amazon Lex does not have sufficient permissions to call a Lambda function.
    ///
    /// * If a Lambda function takes longer than 30 seconds to execute.
    ///
    /// * If a fulfillment Lambda function returns a Delegate dialog action without removing any slot values.
    /// - `InternalFailureException` : Internal service error. Retry the call.
    /// - `LimitExceededException` : Exceeded a limit.
    /// - `NotAcceptableException` : The accept header in the request does not have a valid value.
    /// - `NotFoundException` : The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
    public func putSession(input: PutSessionInput) async throws -> PutSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>(id: "putSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutSessionInput, PutSessionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutSessionOutputResponse, PutSessionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<PutSessionInput, PutSessionOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutSessionInput, PutSessionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PutSessionInput, PutSessionOutputResponse>(xmlName: "PutSessionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PutSessionOutputResponse, PutSessionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutSessionOutputResponse, PutSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutSessionOutputResponse, PutSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutSessionOutputResponse, PutSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
