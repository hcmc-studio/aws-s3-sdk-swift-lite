// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amplify UI Builder API provides a programmatic interface for creating and configuring user interface (UI) component libraries and themes for use in your Amplify applications. You can then connect these UI components to an application's backend Amazon Web Services resources. You can also use the Amplify Studio visual designer to create UI components and model data for an app. For more information, see [Introduction](https://docs.amplify.aws/console/adminui/intro) in the Amplify Docs. The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation for client app development. For more information, see the [Amplify Framework](https://docs.amplify.aws/). For more information about deploying an Amplify application to Amazon Web Services, see the [Amplify User Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
public protocol AmplifyUIBuilderClientProtocol {
    /// Creates a new component for an Amplify app.
    ///
    /// - Parameter CreateComponentInput : [no documentation found]
    ///
    /// - Returns: `CreateComponentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    /// - `ServiceQuotaExceededException` : You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.
    func createComponent(input: CreateComponentInput) async throws -> CreateComponentOutputResponse
    /// Creates a new form for an Amplify app.
    ///
    /// - Parameter CreateFormInput : [no documentation found]
    ///
    /// - Returns: `CreateFormOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    /// - `ServiceQuotaExceededException` : You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.
    func createForm(input: CreateFormInput) async throws -> CreateFormOutputResponse
    /// Creates a theme to apply to the components in an Amplify app.
    ///
    /// - Parameter CreateThemeInput : [no documentation found]
    ///
    /// - Returns: `CreateThemeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    /// - `ServiceQuotaExceededException` : You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.
    func createTheme(input: CreateThemeInput) async throws -> CreateThemeOutputResponse
    /// Deletes a component from an Amplify app.
    ///
    /// - Parameter DeleteComponentInput : [no documentation found]
    ///
    /// - Returns: `DeleteComponentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func deleteComponent(input: DeleteComponentInput) async throws -> DeleteComponentOutputResponse
    /// Deletes a form from an Amplify app.
    ///
    /// - Parameter DeleteFormInput : [no documentation found]
    ///
    /// - Returns: `DeleteFormOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func deleteForm(input: DeleteFormInput) async throws -> DeleteFormOutputResponse
    /// Deletes a theme from an Amplify app.
    ///
    /// - Parameter DeleteThemeInput : [no documentation found]
    ///
    /// - Returns: `DeleteThemeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func deleteTheme(input: DeleteThemeInput) async throws -> DeleteThemeOutputResponse
    /// Exchanges an access code for a token.
    ///
    /// - Parameter ExchangeCodeForTokenInput : [no documentation found]
    ///
    /// - Returns: `ExchangeCodeForTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func exchangeCodeForToken(input: ExchangeCodeForTokenInput) async throws -> ExchangeCodeForTokenOutputResponse
    /// Exports component configurations to code that is ready to integrate into an Amplify app.
    ///
    /// - Parameter ExportComponentsInput : [no documentation found]
    ///
    /// - Returns: `ExportComponentsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func exportComponents(input: ExportComponentsInput) async throws -> ExportComponentsOutputResponse
    /// Exports form configurations to code that is ready to integrate into an Amplify app.
    ///
    /// - Parameter ExportFormsInput : [no documentation found]
    ///
    /// - Returns: `ExportFormsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func exportForms(input: ExportFormsInput) async throws -> ExportFormsOutputResponse
    /// Exports theme configurations to code that is ready to integrate into an Amplify app.
    ///
    /// - Parameter ExportThemesInput : [no documentation found]
    ///
    /// - Returns: `ExportThemesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func exportThemes(input: ExportThemesInput) async throws -> ExportThemesOutputResponse
    /// Returns an existing code generation job.
    ///
    /// - Parameter GetCodegenJobInput : [no documentation found]
    ///
    /// - Returns: `GetCodegenJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getCodegenJob(input: GetCodegenJobInput) async throws -> GetCodegenJobOutputResponse
    /// Returns an existing component for an Amplify app.
    ///
    /// - Parameter GetComponentInput : [no documentation found]
    ///
    /// - Returns: `GetComponentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func getComponent(input: GetComponentInput) async throws -> GetComponentOutputResponse
    /// Returns an existing form for an Amplify app.
    ///
    /// - Parameter GetFormInput : [no documentation found]
    ///
    /// - Returns: `GetFormOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func getForm(input: GetFormInput) async throws -> GetFormOutputResponse
    /// Returns existing metadata for an Amplify app.
    ///
    /// - Parameter GetMetadataInput : [no documentation found]
    ///
    /// - Returns: `GetMetadataOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `UnauthorizedException` : You don't have permission to perform this operation.
    func getMetadata(input: GetMetadataInput) async throws -> GetMetadataOutputResponse
    /// Returns an existing theme for an Amplify app.
    ///
    /// - Parameter GetThemeInput : [no documentation found]
    ///
    /// - Returns: `GetThemeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceNotFoundException` : The requested resource does not exist, or access was denied.
    func getTheme(input: GetThemeInput) async throws -> GetThemeOutputResponse
    /// Retrieves a list of code generation jobs for a specified Amplify app and backend environment.
    ///
    /// - Parameter ListCodegenJobsInput : [no documentation found]
    ///
    /// - Returns: `ListCodegenJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func listCodegenJobs(input: ListCodegenJobsInput) async throws -> ListCodegenJobsOutputResponse
    /// Retrieves a list of components for a specified Amplify app and backend environment.
    ///
    /// - Parameter ListComponentsInput : [no documentation found]
    ///
    /// - Returns: `ListComponentsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutputResponse
    /// Retrieves a list of forms for a specified Amplify app and backend environment.
    ///
    /// - Parameter ListFormsInput : [no documentation found]
    ///
    /// - Returns: `ListFormsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func listForms(input: ListFormsInput) async throws -> ListFormsOutputResponse
    /// Retrieves a list of themes for a specified Amplify app and backend environment.
    ///
    /// - Parameter ListThemesInput : [no documentation found]
    ///
    /// - Returns: `ListThemesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func listThemes(input: ListThemesInput) async throws -> ListThemesOutputResponse
    /// Stores the metadata information about a feature on a form.
    ///
    /// - Parameter PutMetadataFlagInput : [no documentation found]
    ///
    /// - Returns: `PutMetadataFlagOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `UnauthorizedException` : You don't have permission to perform this operation.
    func putMetadataFlag(input: PutMetadataFlagInput) async throws -> PutMetadataFlagOutputResponse
    /// Refreshes a previously issued access token that might have expired.
    ///
    /// - Parameter RefreshTokenInput : [no documentation found]
    ///
    /// - Returns: `RefreshTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    func refreshToken(input: RefreshTokenInput) async throws -> RefreshTokenOutputResponse
    /// Starts a code generation job for a specified Amplify app and backend environment.
    ///
    /// - Parameter StartCodegenJobInput : [no documentation found]
    ///
    /// - Returns: `StartCodegenJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func startCodegenJob(input: StartCodegenJobInput) async throws -> StartCodegenJobOutputResponse
    /// Updates an existing component.
    ///
    /// - Parameter UpdateComponentInput : [no documentation found]
    ///
    /// - Returns: `UpdateComponentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    func updateComponent(input: UpdateComponentInput) async throws -> UpdateComponentOutputResponse
    /// Updates an existing form.
    ///
    /// - Parameter UpdateFormInput : [no documentation found]
    ///
    /// - Returns: `UpdateFormOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    func updateForm(input: UpdateFormInput) async throws -> UpdateFormOutputResponse
    /// Updates an existing theme.
    ///
    /// - Parameter UpdateThemeInput : [no documentation found]
    ///
    /// - Returns: `UpdateThemeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred. Please retry your request.
    /// - `InvalidParameterException` : An invalid or out-of-range value was supplied for the input parameter.
    /// - `ResourceConflictException` : The resource specified in the request conflicts with an existing resource.
    func updateTheme(input: UpdateThemeInput) async throws -> UpdateThemeOutputResponse
}

public enum AmplifyUIBuilderClientTypes {}
