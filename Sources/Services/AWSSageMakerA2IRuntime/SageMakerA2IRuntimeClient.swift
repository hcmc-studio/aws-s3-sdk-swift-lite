// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SageMakerA2IRuntimeClient {
    public static let clientName = "SageMakerA2IRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration
    let serviceName = "SageMaker A2I Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration) {
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
        let config = try SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension SageMakerA2IRuntimeClient {
    public typealias SageMakerA2IRuntimeClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "SageMaker A2I Runtime" }
        public var clientName: String { "SageMakerA2IRuntimeClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct SageMakerA2IRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SageMakerA2IRuntimeClient"
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

extension SageMakerA2IRuntimeClient: SageMakerA2IRuntimeClientProtocol {
    /// Deletes the specified human loop for a flow definition. If the human loop was deleted, this operation will return a ResourceNotFoundException.
    ///
    /// - Parameter DeleteHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `DeleteHumanLoopOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func deleteHumanLoop(input: DeleteHumanLoopInput) async throws -> DeleteHumanLoopOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteHumanLoopInput, DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>(id: "deleteHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteHumanLoopInput, DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteHumanLoopInput, DeleteHumanLoopOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteHumanLoopOutputResponse, DeleteHumanLoopOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Returns information about the specified human loop. If the human loop was deleted, this operation will return a ResourceNotFoundException error.
    ///
    /// - Parameter DescribeHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `DescribeHumanLoopOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func describeHumanLoop(input: DescribeHumanLoopInput) async throws -> DescribeHumanLoopOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeHumanLoopInput, DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>(id: "describeHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeHumanLoopInput, DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeHumanLoopInput, DescribeHumanLoopOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeHumanLoopOutputResponse, DescribeHumanLoopOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    ///
    /// - Parameter ListHumanLoopsInput : [no documentation found]
    ///
    /// - Returns: `ListHumanLoopsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func listHumanLoops(input: ListHumanLoopsInput) async throws -> ListHumanLoopsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listHumanLoops")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListHumanLoopsInput, ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>(id: "listHumanLoops")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListHumanLoopsInput, ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListHumanLoopsInput, ListHumanLoopsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListHumanLoopsInput, ListHumanLoopsOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListHumanLoopsOutputResponse, ListHumanLoopsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Starts a human loop, provided that at least one activation condition is met.
    ///
    /// - Parameter StartHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `StartHumanLoopOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Your request has the same name as another active human loop but has different input data. You cannot start two human loops with the same name and different input data.
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ServiceQuotaExceededException` : You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your AWS account. For a list of Amazon A2I service quotes, see [Amazon Augmented AI Service Quotes](https://docs.aws.amazon.com/general/latest/gr/a2i.html). Delete some resources or request an increase in your service quota. You can request a quota increase using Service Quotas or the AWS Support Center. To request an increase, see [AWS Service Quotas](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) in the AWS General Reference.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func startHumanLoop(input: StartHumanLoopInput) async throws -> StartHumanLoopOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartHumanLoopInput, StartHumanLoopOutputResponse, StartHumanLoopOutputError>(id: "startHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartHumanLoopInput, StartHumanLoopOutputResponse, StartHumanLoopOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartHumanLoopInput, StartHumanLoopOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartHumanLoopOutputResponse, StartHumanLoopOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartHumanLoopInput, StartHumanLoopOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartHumanLoopInput, StartHumanLoopOutputResponse>(xmlName: "StartHumanLoopRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartHumanLoopOutputResponse, StartHumanLoopOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartHumanLoopOutputResponse, StartHumanLoopOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartHumanLoopOutputResponse, StartHumanLoopOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartHumanLoopOutputResponse, StartHumanLoopOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Stops the specified human loop.
    ///
    /// - Parameter StopHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `StopHumanLoopOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func stopHumanLoop(input: StopHumanLoopInput) async throws -> StopHumanLoopOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "stopHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StopHumanLoopInput, StopHumanLoopOutputResponse, StopHumanLoopOutputError>(id: "stopHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StopHumanLoopInput, StopHumanLoopOutputResponse, StopHumanLoopOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StopHumanLoopInput, StopHumanLoopOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StopHumanLoopOutputResponse, StopHumanLoopOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StopHumanLoopInput, StopHumanLoopOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StopHumanLoopInput, StopHumanLoopOutputResponse>(xmlName: "StopHumanLoopRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StopHumanLoopOutputResponse, StopHumanLoopOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StopHumanLoopOutputResponse, StopHumanLoopOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StopHumanLoopOutputResponse, StopHumanLoopOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StopHumanLoopOutputResponse, StopHumanLoopOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
