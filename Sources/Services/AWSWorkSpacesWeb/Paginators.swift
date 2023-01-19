// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkSpacesWebClient {
    /// Paginate over `[ListBrowserSettingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBrowserSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBrowserSettingsOutputResponse`
    public func listBrowserSettingsPaginated(input: ListBrowserSettingsInput) -> ClientRuntime.PaginatorSequence<ListBrowserSettingsInput, ListBrowserSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBrowserSettingsInput, ListBrowserSettingsOutputResponse>(input: input, inputKey: \ListBrowserSettingsInput.nextToken, outputKey: \ListBrowserSettingsOutputResponse.nextToken, paginationFunction: self.listBrowserSettings(input:))
    }
}

extension ListBrowserSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBrowserSettingsInput {
        return ListBrowserSettingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListIdentityProvidersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIdentityProvidersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIdentityProvidersOutputResponse`
    public func listIdentityProvidersPaginated(input: ListIdentityProvidersInput) -> ClientRuntime.PaginatorSequence<ListIdentityProvidersInput, ListIdentityProvidersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIdentityProvidersInput, ListIdentityProvidersOutputResponse>(input: input, inputKey: \ListIdentityProvidersInput.nextToken, outputKey: \ListIdentityProvidersOutputResponse.nextToken, paginationFunction: self.listIdentityProviders(input:))
    }
}

extension ListIdentityProvidersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIdentityProvidersInput {
        return ListIdentityProvidersInput(
            maxResults: self.maxResults,
            nextToken: token,
            portalArn: self.portalArn
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListNetworkSettingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListNetworkSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListNetworkSettingsOutputResponse`
    public func listNetworkSettingsPaginated(input: ListNetworkSettingsInput) -> ClientRuntime.PaginatorSequence<ListNetworkSettingsInput, ListNetworkSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNetworkSettingsInput, ListNetworkSettingsOutputResponse>(input: input, inputKey: \ListNetworkSettingsInput.nextToken, outputKey: \ListNetworkSettingsOutputResponse.nextToken, paginationFunction: self.listNetworkSettings(input:))
    }
}

extension ListNetworkSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNetworkSettingsInput {
        return ListNetworkSettingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListPortalsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPortalsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPortalsOutputResponse`
    public func listPortalsPaginated(input: ListPortalsInput) -> ClientRuntime.PaginatorSequence<ListPortalsInput, ListPortalsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPortalsInput, ListPortalsOutputResponse>(input: input, inputKey: \ListPortalsInput.nextToken, outputKey: \ListPortalsOutputResponse.nextToken, paginationFunction: self.listPortals(input:))
    }
}

extension ListPortalsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPortalsInput {
        return ListPortalsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListTrustStoreCertificatesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTrustStoreCertificatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTrustStoreCertificatesOutputResponse`
    public func listTrustStoreCertificatesPaginated(input: ListTrustStoreCertificatesInput) -> ClientRuntime.PaginatorSequence<ListTrustStoreCertificatesInput, ListTrustStoreCertificatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTrustStoreCertificatesInput, ListTrustStoreCertificatesOutputResponse>(input: input, inputKey: \ListTrustStoreCertificatesInput.nextToken, outputKey: \ListTrustStoreCertificatesOutputResponse.nextToken, paginationFunction: self.listTrustStoreCertificates(input:))
    }
}

extension ListTrustStoreCertificatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTrustStoreCertificatesInput {
        return ListTrustStoreCertificatesInput(
            maxResults: self.maxResults,
            nextToken: token,
            trustStoreArn: self.trustStoreArn
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListTrustStoresOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTrustStoresInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTrustStoresOutputResponse`
    public func listTrustStoresPaginated(input: ListTrustStoresInput) -> ClientRuntime.PaginatorSequence<ListTrustStoresInput, ListTrustStoresOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTrustStoresInput, ListTrustStoresOutputResponse>(input: input, inputKey: \ListTrustStoresInput.nextToken, outputKey: \ListTrustStoresOutputResponse.nextToken, paginationFunction: self.listTrustStores(input:))
    }
}

extension ListTrustStoresInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTrustStoresInput {
        return ListTrustStoresInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListUserAccessLoggingSettingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUserAccessLoggingSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUserAccessLoggingSettingsOutputResponse`
    public func listUserAccessLoggingSettingsPaginated(input: ListUserAccessLoggingSettingsInput) -> ClientRuntime.PaginatorSequence<ListUserAccessLoggingSettingsInput, ListUserAccessLoggingSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUserAccessLoggingSettingsInput, ListUserAccessLoggingSettingsOutputResponse>(input: input, inputKey: \ListUserAccessLoggingSettingsInput.nextToken, outputKey: \ListUserAccessLoggingSettingsOutputResponse.nextToken, paginationFunction: self.listUserAccessLoggingSettings(input:))
    }
}

extension ListUserAccessLoggingSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUserAccessLoggingSettingsInput {
        return ListUserAccessLoggingSettingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkSpacesWebClient {
    /// Paginate over `[ListUserSettingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUserSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUserSettingsOutputResponse`
    public func listUserSettingsPaginated(input: ListUserSettingsInput) -> ClientRuntime.PaginatorSequence<ListUserSettingsInput, ListUserSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUserSettingsInput, ListUserSettingsOutputResponse>(input: input, inputKey: \ListUserSettingsInput.nextToken, outputKey: \ListUserSettingsOutputResponse.nextToken, paginationFunction: self.listUserSettings(input:))
    }
}

extension ListUserSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUserSettingsInput {
        return ListUserSettingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
