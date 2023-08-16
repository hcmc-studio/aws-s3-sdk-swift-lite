// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web service that makes it easy for you to assign user access to IAM Identity Center resources such as the AWS access portal. Users can get AWS account applications and roles assigned to them and get federated into the application. Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed). This reference guide describes the IAM Identity Center Portal operations that you can call programatically and includes detailed information on data types and errors. AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create programmatic access to IAM Identity Center and other AWS services. For more information about the AWS SDKs, including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
public protocol SSOClientProtocol {
    /// Returns the STS short-term credentials for a given role name that is assigned to the user.
    ///
    /// - Parameter GetRoleCredentialsInput : [no documentation found]
    ///
    /// - Returns: `GetRoleCredentialsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidRequestException` : Indicates that a problem occurred with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `TooManyRequestsException` : Indicates that the request is being made too frequently and is more than what the server can handle.
    /// - `UnauthorizedException` : Indicates that the request is not authorized. This can happen due to an invalid access token in the request.
    func getRoleCredentials(input: GetRoleCredentialsInput) async throws -> GetRoleCredentialsOutputResponse
    /// Lists all roles that are assigned to the user for a given AWS account.
    ///
    /// - Parameter ListAccountRolesInput : [no documentation found]
    ///
    /// - Returns: `ListAccountRolesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidRequestException` : Indicates that a problem occurred with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `TooManyRequestsException` : Indicates that the request is being made too frequently and is more than what the server can handle.
    /// - `UnauthorizedException` : Indicates that the request is not authorized. This can happen due to an invalid access token in the request.
    func listAccountRoles(input: ListAccountRolesInput) async throws -> ListAccountRolesOutputResponse
    /// Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see [Assign User Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers) in the IAM Identity Center User Guide. This operation returns a paginated response.
    ///
    /// - Parameter ListAccountsInput : [no documentation found]
    ///
    /// - Returns: `ListAccountsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidRequestException` : Indicates that a problem occurred with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `TooManyRequestsException` : Indicates that the request is being made too frequently and is more than what the server can handle.
    /// - `UnauthorizedException` : Indicates that the request is not authorized. This can happen due to an invalid access token in the request.
    func listAccounts(input: ListAccountsInput) async throws -> ListAccountsOutputResponse
    /// Removes the locally stored SSO tokens from the client-side cache and sends an API call to the IAM Identity Center service to invalidate the corresponding server-side IAM Identity Center sign in session. If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM Identity Center sign in session is used to obtain an IAM session, as specified in the corresponding IAM Identity Center permission set. More specifically, IAM Identity Center assumes an IAM role in the target account on behalf of the user, and the corresponding temporary AWS credentials are returned to the client. After user logout, any existing IAM role sessions that were created by using IAM Identity Center permission sets continue based on the duration configured in the permission set. For more information, see [User authentications](https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html) in the IAM Identity Center User Guide.
    ///
    /// - Parameter LogoutInput : [no documentation found]
    ///
    /// - Returns: `LogoutOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidRequestException` : Indicates that a problem occurred with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `TooManyRequestsException` : Indicates that the request is being made too frequently and is more than what the server can handle.
    /// - `UnauthorizedException` : Indicates that the request is not authorized. This can happen due to an invalid access token in the request.
    func logout(input: LogoutInput) async throws -> LogoutOutputResponse
}

public enum SSOClientTypes {}
