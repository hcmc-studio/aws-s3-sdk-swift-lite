// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension ForecastqueryClientTypes.DataPoint: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case timestamp = "Timestamp"
        case value = "Value"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let timestamp = self.timestamp {
            try encodeContainer.encode(timestamp, forKey: .timestamp)
        }
        if let value = self.value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let timestampDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .timestamp)
        timestamp = timestampDecoded
        let valueDecoded = try containerValues.decodeIfPresent(Swift.Double.self, forKey: .value)
        value = valueDecoded
    }
}

extension ForecastqueryClientTypes {
    /// The forecast value for a specific date. Part of the [Forecast] object.
    public struct DataPoint: Swift.Equatable {
        /// The timestamp of the specific forecast.
        public var timestamp: Swift.String?
        /// The forecast value.
        public var value: Swift.Double?

        public init(
            timestamp: Swift.String? = nil,
            value: Swift.Double? = nil
        )
        {
            self.timestamp = timestamp
            self.value = value
        }
    }

}

extension ForecastqueryClientTypes.Forecast: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case predictions = "Predictions"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let predictions = predictions {
            var predictionsContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .predictions)
            for (dictKey0, predictions0) in predictions {
                var predictions0Container = predictionsContainer.nestedUnkeyedContainer(forKey: ClientRuntime.Key(stringValue: dictKey0))
                for datapoint1 in predictions0 {
                    try predictions0Container.encode(datapoint1)
                }
            }
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let predictionsContainer = try containerValues.decodeIfPresent([Swift.String: [ForecastqueryClientTypes.DataPoint?]?].self, forKey: .predictions)
        var predictionsDecoded0: [Swift.String:[ForecastqueryClientTypes.DataPoint]]? = nil
        if let predictionsContainer = predictionsContainer {
            predictionsDecoded0 = [Swift.String:[ForecastqueryClientTypes.DataPoint]]()
            for (key0, timeseries0) in predictionsContainer {
                var timeseries0Decoded0: [ForecastqueryClientTypes.DataPoint]? = nil
                if let timeseries0 = timeseries0 {
                    timeseries0Decoded0 = [ForecastqueryClientTypes.DataPoint]()
                    for structure1 in timeseries0 {
                        if let structure1 = structure1 {
                            timeseries0Decoded0?.append(structure1)
                        }
                    }
                }
                predictionsDecoded0?[key0] = timeseries0Decoded0
            }
        }
        predictions = predictionsDecoded0
    }
}

extension ForecastqueryClientTypes {
    /// Provides information about a forecast. Returned as part of the [QueryForecast] response.
    public struct Forecast: Swift.Equatable {
        /// The forecast. The string of the string-to-array map is one of the following values:
        ///
        /// * p10
        ///
        /// * p50
        ///
        /// * p90
        ///
        ///
        /// The default setting is ["0.1", "0.5", "0.9"]. Use the optional ForecastTypes parameter of the [CreateForecast](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateForecast.html) operation to change the values. The values will vary depending on how this is set, with a minimum of 1 and a maximum of 5.
        public var predictions: [Swift.String:[ForecastqueryClientTypes.DataPoint]]?

        public init(
            predictions: [Swift.String:[ForecastqueryClientTypes.DataPoint]]? = nil
        )
        {
            self.predictions = predictions
        }
    }

}

extension InvalidInputException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidInputExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The value is invalid or is too long.
public struct InvalidInputException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidInputException" }
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

struct InvalidInputExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidInputExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidNextTokenException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidNextTokenExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The token is not valid. Tokens expire after 24 hours.
public struct InvalidNextTokenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidNextTokenException" }
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

struct InvalidNextTokenExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidNextTokenExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension LimitExceededException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: LimitExceededExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The limit on the number of requests per second has been exceeded.
public struct LimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "LimitExceededException" }
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

struct LimitExceededExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension LimitExceededExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension QueryForecastInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case endDate = "EndDate"
        case filters = "Filters"
        case forecastArn = "ForecastArn"
        case nextToken = "NextToken"
        case startDate = "StartDate"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endDate = self.endDate {
            try encodeContainer.encode(endDate, forKey: .endDate)
        }
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .filters)
            for (dictKey0, filters0) in filters {
                try filtersContainer.encode(filters0, forKey: ClientRuntime.Key(stringValue: dictKey0))
            }
        }
        if let forecastArn = self.forecastArn {
            try encodeContainer.encode(forecastArn, forKey: .forecastArn)
        }
        if let nextToken = self.nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startDate = self.startDate {
            try encodeContainer.encode(startDate, forKey: .startDate)
        }
    }
}

extension QueryForecastInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

public struct QueryForecastInput: Swift.Equatable {
    /// The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T20:00:00.
    public var endDate: Swift.String?
    /// The filtering criteria to apply when retrieving the forecast. For example, to get the forecast for client_21 in the electricity usage dataset, specify the following: {"item_id" : "client_21"} To get the full forecast, use the [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html) operation.
    /// This member is required.
    public var filters: [Swift.String:Swift.String]?
    /// The Amazon Resource Name (ARN) of the forecast to query.
    /// This member is required.
    public var forecastArn: Swift.String?
    /// If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.
    public var nextToken: Swift.String?
    /// The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T08:00:00.
    public var startDate: Swift.String?

    public init(
        endDate: Swift.String? = nil,
        filters: [Swift.String:Swift.String]? = nil,
        forecastArn: Swift.String? = nil,
        nextToken: Swift.String? = nil,
        startDate: Swift.String? = nil
    )
    {
        self.endDate = endDate
        self.filters = filters
        self.forecastArn = forecastArn
        self.nextToken = nextToken
        self.startDate = startDate
    }
}

struct QueryForecastInputBody: Swift.Equatable {
    let forecastArn: Swift.String?
    let startDate: Swift.String?
    let endDate: Swift.String?
    let filters: [Swift.String:Swift.String]?
    let nextToken: Swift.String?
}

extension QueryForecastInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case endDate = "EndDate"
        case filters = "Filters"
        case forecastArn = "ForecastArn"
        case nextToken = "NextToken"
        case startDate = "StartDate"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let forecastArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .forecastArn)
        forecastArn = forecastArnDecoded
        let startDateDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .startDate)
        startDate = startDateDecoded
        let endDateDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .endDate)
        endDate = endDateDecoded
        let filtersContainer = try containerValues.decodeIfPresent([Swift.String: Swift.String?].self, forKey: .filters)
        var filtersDecoded0: [Swift.String:Swift.String]? = nil
        if let filtersContainer = filtersContainer {
            filtersDecoded0 = [Swift.String:Swift.String]()
            for (key0, attributevalue0) in filtersContainer {
                if let attributevalue0 = attributevalue0 {
                    filtersDecoded0?[key0] = attributevalue0
                }
            }
        }
        filters = filtersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}

public enum QueryForecastOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "InvalidInputException": return try await InvalidInputException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidNextTokenException": return try await InvalidNextTokenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "LimitExceededException": return try await LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceInUseException": return try await ResourceInUseException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension QueryForecastOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: QueryForecastOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.forecast = output.forecast
        } else {
            self.forecast = nil
        }
    }
}

public struct QueryForecastOutputResponse: Swift.Equatable {
    /// The forecast.
    public var forecast: ForecastqueryClientTypes.Forecast?

    public init(
        forecast: ForecastqueryClientTypes.Forecast? = nil
    )
    {
        self.forecast = forecast
    }
}

struct QueryForecastOutputResponseBody: Swift.Equatable {
    let forecast: ForecastqueryClientTypes.Forecast?
}

extension QueryForecastOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case forecast = "Forecast"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let forecastDecoded = try containerValues.decodeIfPresent(ForecastqueryClientTypes.Forecast.self, forKey: .forecast)
        forecast = forecastDecoded
    }
}

extension QueryWhatIfForecastInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case endDate = "EndDate"
        case filters = "Filters"
        case nextToken = "NextToken"
        case startDate = "StartDate"
        case whatIfForecastArn = "WhatIfForecastArn"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endDate = self.endDate {
            try encodeContainer.encode(endDate, forKey: .endDate)
        }
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .filters)
            for (dictKey0, filters0) in filters {
                try filtersContainer.encode(filters0, forKey: ClientRuntime.Key(stringValue: dictKey0))
            }
        }
        if let nextToken = self.nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startDate = self.startDate {
            try encodeContainer.encode(startDate, forKey: .startDate)
        }
        if let whatIfForecastArn = self.whatIfForecastArn {
            try encodeContainer.encode(whatIfForecastArn, forKey: .whatIfForecastArn)
        }
    }
}

extension QueryWhatIfForecastInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

public struct QueryWhatIfForecastInput: Swift.Equatable {
    /// The end date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T20:00:00.
    public var endDate: Swift.String?
    /// The filtering criteria to apply when retrieving the forecast. For example, to get the forecast for client_21 in the electricity usage dataset, specify the following: {"item_id" : "client_21"} To get the full what-if forecast, use the [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html) operation.
    /// This member is required.
    public var filters: [Swift.String:Swift.String]?
    /// If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.
    public var nextToken: Swift.String?
    /// The start date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T08:00:00.
    public var startDate: Swift.String?
    /// The Amazon Resource Name (ARN) of the what-if forecast to query.
    /// This member is required.
    public var whatIfForecastArn: Swift.String?

    public init(
        endDate: Swift.String? = nil,
        filters: [Swift.String:Swift.String]? = nil,
        nextToken: Swift.String? = nil,
        startDate: Swift.String? = nil,
        whatIfForecastArn: Swift.String? = nil
    )
    {
        self.endDate = endDate
        self.filters = filters
        self.nextToken = nextToken
        self.startDate = startDate
        self.whatIfForecastArn = whatIfForecastArn
    }
}

struct QueryWhatIfForecastInputBody: Swift.Equatable {
    let whatIfForecastArn: Swift.String?
    let startDate: Swift.String?
    let endDate: Swift.String?
    let filters: [Swift.String:Swift.String]?
    let nextToken: Swift.String?
}

extension QueryWhatIfForecastInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case endDate = "EndDate"
        case filters = "Filters"
        case nextToken = "NextToken"
        case startDate = "StartDate"
        case whatIfForecastArn = "WhatIfForecastArn"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let whatIfForecastArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .whatIfForecastArn)
        whatIfForecastArn = whatIfForecastArnDecoded
        let startDateDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .startDate)
        startDate = startDateDecoded
        let endDateDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .endDate)
        endDate = endDateDecoded
        let filtersContainer = try containerValues.decodeIfPresent([Swift.String: Swift.String?].self, forKey: .filters)
        var filtersDecoded0: [Swift.String:Swift.String]? = nil
        if let filtersContainer = filtersContainer {
            filtersDecoded0 = [Swift.String:Swift.String]()
            for (key0, attributevalue0) in filtersContainer {
                if let attributevalue0 = attributevalue0 {
                    filtersDecoded0?[key0] = attributevalue0
                }
            }
        }
        filters = filtersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}

public enum QueryWhatIfForecastOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "InvalidInputException": return try await InvalidInputException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidNextTokenException": return try await InvalidNextTokenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "LimitExceededException": return try await LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceInUseException": return try await ResourceInUseException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension QueryWhatIfForecastOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: QueryWhatIfForecastOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.forecast = output.forecast
        } else {
            self.forecast = nil
        }
    }
}

public struct QueryWhatIfForecastOutputResponse: Swift.Equatable {
    /// Provides information about a forecast. Returned as part of the [QueryForecast] response.
    public var forecast: ForecastqueryClientTypes.Forecast?

    public init(
        forecast: ForecastqueryClientTypes.Forecast? = nil
    )
    {
        self.forecast = forecast
    }
}

struct QueryWhatIfForecastOutputResponseBody: Swift.Equatable {
    let forecast: ForecastqueryClientTypes.Forecast?
}

extension QueryWhatIfForecastOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case forecast = "Forecast"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let forecastDecoded = try containerValues.decodeIfPresent(ForecastqueryClientTypes.Forecast.self, forKey: .forecast)
        forecast = forecastDecoded
    }
}

extension ResourceInUseException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceInUseExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified resource is in use.
public struct ResourceInUseException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceInUseException" }
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

struct ResourceInUseExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceInUseExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ResourceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// We can't find that resource. Check the information that you've provided and try again.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
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

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}
