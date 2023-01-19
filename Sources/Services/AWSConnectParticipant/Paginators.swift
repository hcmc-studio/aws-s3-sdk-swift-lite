// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConnectParticipantClient {
    /// Paginate over `[GetTranscriptOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTranscriptInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTranscriptOutputResponse`
    public func getTranscriptPaginated(input: GetTranscriptInput) -> ClientRuntime.PaginatorSequence<GetTranscriptInput, GetTranscriptOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetTranscriptInput, GetTranscriptOutputResponse>(input: input, inputKey: \GetTranscriptInput.nextToken, outputKey: \GetTranscriptOutputResponse.nextToken, paginationFunction: self.getTranscript(input:))
    }
}

extension GetTranscriptInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTranscriptInput {
        return GetTranscriptInput(
            connectionToken: self.connectionToken,
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token,
            scanDirection: self.scanDirection,
            sortOrder: self.sortOrder,
            startPosition: self.startPosition
        )}
}
