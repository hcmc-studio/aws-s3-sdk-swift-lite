// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension CloudTrailDataClientTypes.AuditEvent: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventData
        case eventDataChecksum
        case id
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventData = self.eventData {
            try encodeContainer.encode(eventData, forKey: .eventData)
        }
        if let eventDataChecksum = self.eventDataChecksum {
            try encodeContainer.encode(eventDataChecksum, forKey: .eventDataChecksum)
        }
        if let id = self.id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let eventDataDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventData)
        eventData = eventDataDecoded
        let eventDataChecksumDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventDataChecksum)
        eventDataChecksum = eventDataChecksumDecoded
    }
}

extension CloudTrailDataClientTypes {
    /// An event from a source outside of Amazon Web Services that you want CloudTrail to log.
    public struct AuditEvent: Swift.Equatable {
        /// The content of an audit event that comes from the event, such as userIdentity, userAgent, and eventSource.
        /// This member is required.
        public var eventData: Swift.String?
        /// A checksum is a base64-SHA256 algorithm that helps you verify that CloudTrail receives the event that matches with the checksum. Calculate the checksum by running a command like the following: printf %s $eventdata | openssl dgst -binary -sha256 | base64
        public var eventDataChecksum: Swift.String?
        /// The original event ID from the source event.
        /// This member is required.
        public var id: Swift.String?

        public init(
            eventData: Swift.String? = nil,
            eventDataChecksum: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.eventData = eventData
            self.eventDataChecksum = eventDataChecksum
            self.id = id
        }
    }

}

extension CloudTrailDataClientTypes.AuditEventResultEntry: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventID
        case id
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventID = self.eventID {
            try encodeContainer.encode(eventID, forKey: .eventID)
        }
        if let id = self.id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let eventIDDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventID)
        eventID = eventIDDecoded
    }
}

extension CloudTrailDataClientTypes {
    /// A response that includes successful and failed event results.
    public struct AuditEventResultEntry: Swift.Equatable {
        /// The event ID assigned by CloudTrail.
        /// This member is required.
        public var eventID: Swift.String?
        /// The original event ID from the source event.
        /// This member is required.
        public var id: Swift.String?

        public init(
            eventID: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.eventID = eventID
            self.id = id
        }
    }

}

extension ChannelInsufficientPermission {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ChannelInsufficientPermissionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The caller's account ID must be the same as the channel owner's account ID.
public struct ChannelInsufficientPermission: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelInsufficientPermission" }
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

struct ChannelInsufficientPermissionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ChannelInsufficientPermissionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ChannelNotFound {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ChannelNotFoundBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The channel could not be found.
public struct ChannelNotFound: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelNotFound" }
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

struct ChannelNotFoundBody: Swift.Equatable {
    let message: Swift.String?
}

extension ChannelNotFoundBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ChannelUnsupportedSchema {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ChannelUnsupportedSchemaBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The schema type of the event is not supported.
public struct ChannelUnsupportedSchema: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelUnsupportedSchema" }
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

struct ChannelUnsupportedSchemaBody: Swift.Equatable {
    let message: Swift.String?
}

extension ChannelUnsupportedSchemaBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension DuplicatedAuditEventId {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: DuplicatedAuditEventIdBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Two or more entries in the request have the same event ID.
public struct DuplicatedAuditEventId: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "DuplicatedAuditEventId" }
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

struct DuplicatedAuditEventIdBody: Swift.Equatable {
    let message: Swift.String?
}

extension DuplicatedAuditEventIdBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidChannelARN {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidChannelARNBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified channel ARN is not a valid channel ARN.
public struct InvalidChannelARN: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidChannelARN" }
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

struct InvalidChannelARNBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidChannelARNBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension PutAuditEventsInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case auditEvents
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let auditEvents = auditEvents {
            var auditEventsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .auditEvents)
            for auditevent0 in auditEvents {
                try auditEventsContainer.encode(auditevent0)
            }
        }
    }
}

extension PutAuditEventsInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        get throws {
            var items = [ClientRuntime.URLQueryItem]()
            guard let channelArn = channelArn else {
                let message = "Creating a URL Query Item failed. channelArn is required and must not be nil."
                throw ClientRuntime.ClientError.unknownError(message)
            }
            let channelArnQueryItem = ClientRuntime.URLQueryItem(name: "channelArn".urlPercentEncoding(), value: Swift.String(channelArn).urlPercentEncoding())
            items.append(channelArnQueryItem)
            if let externalId = externalId {
                let externalIdQueryItem = ClientRuntime.URLQueryItem(name: "externalId".urlPercentEncoding(), value: Swift.String(externalId).urlPercentEncoding())
                items.append(externalIdQueryItem)
            }
            return items
        }
    }
}

extension PutAuditEventsInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/PutAuditEvents"
    }
}

public struct PutAuditEventsInput: Swift.Equatable {
    /// The JSON payload of events that you want to ingest. You can also point to the JSON event payload in a file.
    /// This member is required.
    public var auditEvents: [CloudTrailDataClientTypes.AuditEvent]?
    /// The ARN or ID (the ARN suffix) of a channel.
    /// This member is required.
    public var channelArn: Swift.String?
    /// A unique identifier that is conditionally required when the channel's resource policy includes an external ID. This value can be any string, such as a passphrase or account number.
    public var externalId: Swift.String?

    public init(
        auditEvents: [CloudTrailDataClientTypes.AuditEvent]? = nil,
        channelArn: Swift.String? = nil,
        externalId: Swift.String? = nil
    )
    {
        self.auditEvents = auditEvents
        self.channelArn = channelArn
        self.externalId = externalId
    }
}

struct PutAuditEventsInputBody: Swift.Equatable {
    let auditEvents: [CloudTrailDataClientTypes.AuditEvent]?
}

extension PutAuditEventsInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case auditEvents
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let auditEventsContainer = try containerValues.decodeIfPresent([CloudTrailDataClientTypes.AuditEvent?].self, forKey: .auditEvents)
        var auditEventsDecoded0:[CloudTrailDataClientTypes.AuditEvent]? = nil
        if let auditEventsContainer = auditEventsContainer {
            auditEventsDecoded0 = [CloudTrailDataClientTypes.AuditEvent]()
            for structure0 in auditEventsContainer {
                if let structure0 = structure0 {
                    auditEventsDecoded0?.append(structure0)
                }
            }
        }
        auditEvents = auditEventsDecoded0
    }
}

public enum PutAuditEventsOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ChannelInsufficientPermission": return try await ChannelInsufficientPermission(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ChannelNotFound": return try await ChannelNotFound(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ChannelUnsupportedSchema": return try await ChannelUnsupportedSchema(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "DuplicatedAuditEventId": return try await DuplicatedAuditEventId(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidChannelARN": return try await InvalidChannelARN(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "UnsupportedOperationException": return try await UnsupportedOperationException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension PutAuditEventsOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: PutAuditEventsOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.failed = output.failed
            self.successful = output.successful
        } else {
            self.failed = nil
            self.successful = nil
        }
    }
}

public struct PutAuditEventsOutputResponse: Swift.Equatable {
    /// Lists events in the provided event payload that could not be ingested into CloudTrail, and includes the error code and error message returned for events that could not be ingested.
    /// This member is required.
    public var failed: [CloudTrailDataClientTypes.ResultErrorEntry]?
    /// Lists events in the provided event payload that were successfully ingested into CloudTrail.
    /// This member is required.
    public var successful: [CloudTrailDataClientTypes.AuditEventResultEntry]?

    public init(
        failed: [CloudTrailDataClientTypes.ResultErrorEntry]? = nil,
        successful: [CloudTrailDataClientTypes.AuditEventResultEntry]? = nil
    )
    {
        self.failed = failed
        self.successful = successful
    }
}

struct PutAuditEventsOutputResponseBody: Swift.Equatable {
    let successful: [CloudTrailDataClientTypes.AuditEventResultEntry]?
    let failed: [CloudTrailDataClientTypes.ResultErrorEntry]?
}

extension PutAuditEventsOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case failed
        case successful
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let successfulContainer = try containerValues.decodeIfPresent([CloudTrailDataClientTypes.AuditEventResultEntry?].self, forKey: .successful)
        var successfulDecoded0:[CloudTrailDataClientTypes.AuditEventResultEntry]? = nil
        if let successfulContainer = successfulContainer {
            successfulDecoded0 = [CloudTrailDataClientTypes.AuditEventResultEntry]()
            for structure0 in successfulContainer {
                if let structure0 = structure0 {
                    successfulDecoded0?.append(structure0)
                }
            }
        }
        successful = successfulDecoded0
        let failedContainer = try containerValues.decodeIfPresent([CloudTrailDataClientTypes.ResultErrorEntry?].self, forKey: .failed)
        var failedDecoded0:[CloudTrailDataClientTypes.ResultErrorEntry]? = nil
        if let failedContainer = failedContainer {
            failedDecoded0 = [CloudTrailDataClientTypes.ResultErrorEntry]()
            for structure0 in failedContainer {
                if let structure0 = structure0 {
                    failedDecoded0?.append(structure0)
                }
            }
        }
        failed = failedDecoded0
    }
}

extension CloudTrailDataClientTypes.ResultErrorEntry: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case errorCode
        case errorMessage
        case id
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let errorCode = self.errorCode {
            try encodeContainer.encode(errorCode, forKey: .errorCode)
        }
        if let errorMessage = self.errorMessage {
            try encodeContainer.encode(errorMessage, forKey: .errorMessage)
        }
        if let id = self.id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let errorCodeDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .errorCode)
        errorCode = errorCodeDecoded
        let errorMessageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .errorMessage)
        errorMessage = errorMessageDecoded
    }
}

extension CloudTrailDataClientTypes {
    /// Includes the error code and error message for events that could not be ingested by CloudTrail.
    public struct ResultErrorEntry: Swift.Equatable {
        /// The error code for events that could not be ingested by CloudTrail. Possible error codes include: FieldTooLong, FieldNotFound, InvalidChecksum, InvalidData, InvalidRecipient, InvalidEventSource, AccountNotSubscribed, Throttling, and InternalFailure.
        /// This member is required.
        public var errorCode: Swift.String?
        /// The message that describes the error for events that could not be ingested by CloudTrail.
        /// This member is required.
        public var errorMessage: Swift.String?
        /// The original event ID from the source event that could not be ingested by CloudTrail.
        /// This member is required.
        public var id: Swift.String?

        public init(
            errorCode: Swift.String? = nil,
            errorMessage: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.id = id
        }
    }

}

extension UnsupportedOperationException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: UnsupportedOperationExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The operation requested is not supported in this region or account.
public struct UnsupportedOperationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "UnsupportedOperationException" }
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

struct UnsupportedOperationExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension UnsupportedOperationExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}
