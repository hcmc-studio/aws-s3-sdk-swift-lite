// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension AuthException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: AuthExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Either your AWS credentials are not valid or you do not have access to the EC2 instance.
public struct AuthException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "Forbidden" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct AuthExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension AuthExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EC2InstanceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: EC2InstanceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified instance was not found.
public struct EC2InstanceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceNotFound" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct EC2InstanceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension EC2InstanceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EC2InstanceStateInvalidException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: EC2InstanceStateInvalidExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Unable to connect because the instance is not in a valid state. Connecting to a stopped or terminated instance is not supported. If the instance is stopped, start your instance, and try to connect again.
public struct EC2InstanceStateInvalidException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceStateInvalid" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct EC2InstanceStateInvalidExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension EC2InstanceStateInvalidExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EC2InstanceTypeInvalidException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: EC2InstanceTypeInvalidExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The instance type is not supported for connecting via the serial console. Only Nitro instance types are currently supported.
public struct EC2InstanceTypeInvalidException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceTypeInvalid" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct EC2InstanceTypeInvalidExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension EC2InstanceTypeInvalidExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EC2InstanceUnavailableException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: EC2InstanceUnavailableExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The instance is currently unavailable. Wait a few minutes and try again.
public struct EC2InstanceUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceUnavailable" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct EC2InstanceUnavailableExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension EC2InstanceUnavailableExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidArgsException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidArgsExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// One of the parameters is not valid.
public struct InvalidArgsException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidArguments" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidArgsExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidArgsExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension SendSSHPublicKeyInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case availabilityZone = "AvailabilityZone"
        case instanceId = "InstanceId"
        case instanceOSUser = "InstanceOSUser"
        case sshPublicKey = "SSHPublicKey"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZone = self.availabilityZone {
            try encodeContainer.encode(availabilityZone, forKey: .availabilityZone)
        }
        if let instanceId = self.instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let instanceOSUser = self.instanceOSUser {
            try encodeContainer.encode(instanceOSUser, forKey: .instanceOSUser)
        }
        if let sshPublicKey = self.sshPublicKey {
            try encodeContainer.encode(sshPublicKey, forKey: .sshPublicKey)
        }
    }
}

extension SendSSHPublicKeyInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

public struct SendSSHPublicKeyInput: Swift.Equatable {
    /// The Availability Zone in which the EC2 instance was launched.
    public var availabilityZone: Swift.String?
    /// The ID of the EC2 instance.
    /// This member is required.
    public var instanceId: Swift.String?
    /// The OS user on the EC2 instance for whom the key can be used to authenticate.
    /// This member is required.
    public var instanceOSUser: Swift.String?
    /// The public key material. To use the public key, you must have the matching private key.
    /// This member is required.
    public var sshPublicKey: Swift.String?

    public init(
        availabilityZone: Swift.String? = nil,
        instanceId: Swift.String? = nil,
        instanceOSUser: Swift.String? = nil,
        sshPublicKey: Swift.String? = nil
    )
    {
        self.availabilityZone = availabilityZone
        self.instanceId = instanceId
        self.instanceOSUser = instanceOSUser
        self.sshPublicKey = sshPublicKey
    }
}

struct SendSSHPublicKeyInputBody: Swift.Equatable {
    let instanceId: Swift.String?
    let instanceOSUser: Swift.String?
    let sshPublicKey: Swift.String?
    let availabilityZone: Swift.String?
}

extension SendSSHPublicKeyInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case availabilityZone = "AvailabilityZone"
        case instanceId = "InstanceId"
        case instanceOSUser = "InstanceOSUser"
        case sshPublicKey = "SSHPublicKey"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let instanceOSUserDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .instanceOSUser)
        instanceOSUser = instanceOSUserDecoded
        let sshPublicKeyDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sshPublicKey)
        sshPublicKey = sshPublicKeyDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
    }
}

public enum SendSSHPublicKeyOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "Forbidden": return try await AuthException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceNotFound": return try await EC2InstanceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceStateInvalid": return try await EC2InstanceStateInvalidException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceUnavailable": return try await EC2InstanceUnavailableException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidArguments": return try await InvalidArgsException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerError": return try await ServiceException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "TooManyRequests": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension SendSSHPublicKeyOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SendSSHPublicKeyOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.requestId = output.requestId
            self.success = output.success
        } else {
            self.requestId = nil
            self.success = false
        }
    }
}

public struct SendSSHPublicKeyOutputResponse: Swift.Equatable {
    /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
    public var requestId: Swift.String?
    /// Is true if the request succeeds and an error otherwise.
    public var success: Swift.Bool

    public init(
        requestId: Swift.String? = nil,
        success: Swift.Bool = false
    )
    {
        self.requestId = requestId
        self.success = success
    }
}

struct SendSSHPublicKeyOutputResponseBody: Swift.Equatable {
    let requestId: Swift.String?
    let success: Swift.Bool
}

extension SendSSHPublicKeyOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case requestId = "RequestId"
        case success = "Success"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let requestIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let successDecoded = try containerValues.decodeIfPresent(Swift.Bool.self, forKey: .success) ?? false
        success = successDecoded
    }
}

extension SendSerialConsoleSSHPublicKeyInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case instanceId = "InstanceId"
        case sshPublicKey = "SSHPublicKey"
        case serialPort = "SerialPort"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceId = self.instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let sshPublicKey = self.sshPublicKey {
            try encodeContainer.encode(sshPublicKey, forKey: .sshPublicKey)
        }
        if serialPort != 0 {
            try encodeContainer.encode(serialPort, forKey: .serialPort)
        }
    }
}

extension SendSerialConsoleSSHPublicKeyInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

public struct SendSerialConsoleSSHPublicKeyInput: Swift.Equatable {
    /// The ID of the EC2 instance.
    /// This member is required.
    public var instanceId: Swift.String?
    /// The serial port of the EC2 instance. Currently only port 0 is supported. Default: 0
    public var serialPort: Swift.Int
    /// The public key material. To use the public key, you must have the matching private key. For information about the supported key formats and lengths, see [Requirements for key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws) in the Amazon EC2 User Guide.
    /// This member is required.
    public var sshPublicKey: Swift.String?

    public init(
        instanceId: Swift.String? = nil,
        serialPort: Swift.Int = 0,
        sshPublicKey: Swift.String? = nil
    )
    {
        self.instanceId = instanceId
        self.serialPort = serialPort
        self.sshPublicKey = sshPublicKey
    }
}

struct SendSerialConsoleSSHPublicKeyInputBody: Swift.Equatable {
    let instanceId: Swift.String?
    let serialPort: Swift.Int
    let sshPublicKey: Swift.String?
}

extension SendSerialConsoleSSHPublicKeyInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case instanceId = "InstanceId"
        case sshPublicKey = "SSHPublicKey"
        case serialPort = "SerialPort"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let serialPortDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .serialPort) ?? 0
        serialPort = serialPortDecoded
        let sshPublicKeyDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sshPublicKey)
        sshPublicKey = sshPublicKeyDecoded
    }
}

public enum SendSerialConsoleSSHPublicKeyOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "Forbidden": return try await AuthException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceNotFound": return try await EC2InstanceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceStateInvalid": return try await EC2InstanceStateInvalidException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceTypeInvalid": return try await EC2InstanceTypeInvalidException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "EC2InstanceUnavailable": return try await EC2InstanceUnavailableException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidArguments": return try await InvalidArgsException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "SerialConsoleAccessDisabled": return try await SerialConsoleAccessDisabledException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "SerialConsoleSessionLimitExceeded": return try await SerialConsoleSessionLimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "SerialConsoleSessionUnavailable": return try await SerialConsoleSessionUnavailableException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerError": return try await ServiceException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "TooManyRequests": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension SendSerialConsoleSSHPublicKeyOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SendSerialConsoleSSHPublicKeyOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.requestId = output.requestId
            self.success = output.success
        } else {
            self.requestId = nil
            self.success = false
        }
    }
}

public struct SendSerialConsoleSSHPublicKeyOutputResponse: Swift.Equatable {
    /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
    public var requestId: Swift.String?
    /// Is true if the request succeeds and an error otherwise.
    public var success: Swift.Bool

    public init(
        requestId: Swift.String? = nil,
        success: Swift.Bool = false
    )
    {
        self.requestId = requestId
        self.success = success
    }
}

struct SendSerialConsoleSSHPublicKeyOutputResponseBody: Swift.Equatable {
    let requestId: Swift.String?
    let success: Swift.Bool
}

extension SendSerialConsoleSSHPublicKeyOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case requestId = "RequestId"
        case success = "Success"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let requestIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let successDecoded = try containerValues.decodeIfPresent(Swift.Bool.self, forKey: .success) ?? false
        success = successDecoded
    }
}

extension SerialConsoleAccessDisabledException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SerialConsoleAccessDisabledExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Your account is not authorized to use the EC2 Serial Console. To authorize your account, run the EnableSerialConsoleAccess API. For more information, see [EnableSerialConsoleAccess](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html) in the Amazon EC2 API Reference.
public struct SerialConsoleAccessDisabledException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleAccessDisabled" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct SerialConsoleAccessDisabledExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension SerialConsoleAccessDisabledExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension SerialConsoleSessionLimitExceededException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SerialConsoleSessionLimitExceededExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The instance currently has 1 active serial console session. Only 1 session is supported at a time.
public struct SerialConsoleSessionLimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleSessionLimitExceeded" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct SerialConsoleSessionLimitExceededExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension SerialConsoleSessionLimitExceededExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension SerialConsoleSessionUnavailableException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SerialConsoleSessionUnavailableExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Unable to start a serial console session. Please try again.
public struct SerialConsoleSessionUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleSessionUnavailable" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct SerialConsoleSessionUnavailableExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension SerialConsoleSessionUnavailableExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ServiceException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ServiceExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The service encountered an error. Follow the instructions in the error message and try again.
public struct ServiceException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerError" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ServiceExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ServiceExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ThrottlingException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ThrottlingExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The requests were made too frequently and have been throttled. Wait a while and try again. To increase the limit on your request frequency, contact AWS Support.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "TooManyRequests" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ThrottlingExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ThrottlingExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}
