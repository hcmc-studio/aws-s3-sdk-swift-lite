// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Recovery Control Configuration API Reference for Amazon Route 53 Application Recovery Controller
public protocol Route53RecoveryControlConfigClientProtocol {
    /// Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.
    ///
    /// - Parameter CreateClusterInput : Creates a cluster.
    ///
    /// - Returns: `CreateClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ServiceQuotaExceededException` : 402 response - You attempted to create more resources than the service allows based on service quotas.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    /// Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.
    ///
    /// - Parameter CreateControlPanelInput : The details of the control panel that you're creating.
    ///
    /// - Returns: `CreateControlPanelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ServiceQuotaExceededException` : 402 response - You attempted to create more resources than the service allows based on service quotas.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func createControlPanel(input: CreateControlPanelInput) async throws -> CreateControlPanelOutputResponse
    /// Creates a new routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    ///
    /// - Parameter CreateRoutingControlInput : The details of the routing control that you're creating.
    ///
    /// - Returns: `CreateRoutingControlOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ServiceQuotaExceededException` : 402 response - You attempted to create more resources than the service allows based on service quotas.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func createRoutingControl(input: CreateRoutingControlInput) async throws -> CreateRoutingControlOutputResponse
    /// Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes. There are two types of safety rules: assertion rules and gating rules. Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario. Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls. For more information, see [Safety rules](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// - Parameter CreateSafetyRuleInput : The request body that you include when you create a safety rule.
    ///
    /// - Returns: `CreateSafetyRuleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func createSafetyRule(input: CreateSafetyRuleInput) async throws -> CreateSafetyRuleOutputResponse
    /// Delete a cluster.
    ///
    /// - Parameter DeleteClusterInput : [no documentation found]
    ///
    /// - Returns: `DeleteClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    /// Deletes a control panel.
    ///
    /// - Parameter DeleteControlPanelInput : [no documentation found]
    ///
    /// - Returns: `DeleteControlPanelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func deleteControlPanel(input: DeleteControlPanelInput) async throws -> DeleteControlPanelOutputResponse
    /// Deletes a routing control.
    ///
    /// - Parameter DeleteRoutingControlInput : [no documentation found]
    ///
    /// - Returns: `DeleteRoutingControlOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func deleteRoutingControl(input: DeleteRoutingControlInput) async throws -> DeleteRoutingControlOutputResponse
    /// Deletes a safety rule./>
    ///
    /// - Parameter DeleteSafetyRuleInput : [no documentation found]
    ///
    /// - Returns: `DeleteSafetyRuleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func deleteSafetyRule(input: DeleteSafetyRuleInput) async throws -> DeleteSafetyRuleOutputResponse
    /// Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).
    ///
    /// - Parameter DescribeClusterInput : [no documentation found]
    ///
    /// - Returns: `DescribeClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    /// Displays details about a control panel.
    ///
    /// - Parameter DescribeControlPanelInput : [no documentation found]
    ///
    /// - Returns: `DescribeControlPanelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func describeControlPanel(input: DescribeControlPanelInput) async throws -> DescribeControlPanelOutputResponse
    /// Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    ///
    /// - Parameter DescribeRoutingControlInput : [no documentation found]
    ///
    /// - Returns: `DescribeRoutingControlOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func describeRoutingControl(input: DescribeRoutingControlInput) async throws -> DescribeRoutingControlOutputResponse
    /// Returns information about a safety rule.
    ///
    /// - Parameter DescribeSafetyRuleInput : [no documentation found]
    ///
    /// - Returns: `DescribeSafetyRuleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func describeSafetyRule(input: DescribeSafetyRuleInput) async throws -> DescribeSafetyRuleOutputResponse
    /// Returns an array of all Amazon Route 53 health checks associated with a specific routing control.
    ///
    /// - Parameter ListAssociatedRoute53HealthChecksInput : [no documentation found]
    ///
    /// - Returns: `ListAssociatedRoute53HealthChecksOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listAssociatedRoute53HealthChecks(input: ListAssociatedRoute53HealthChecksInput) async throws -> ListAssociatedRoute53HealthChecksOutputResponse
    /// Returns an array of all the clusters in an account.
    ///
    /// - Parameter ListClustersInput : [no documentation found]
    ///
    /// - Returns: `ListClustersOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    /// Returns an array of control panels in an account or in a cluster.
    ///
    /// - Parameter ListControlPanelsInput : [no documentation found]
    ///
    /// - Returns: `ListControlPanelsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listControlPanels(input: ListControlPanelsInput) async throws -> ListControlPanelsOutputResponse
    /// Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.
    ///
    /// - Parameter ListRoutingControlsInput : [no documentation found]
    ///
    /// - Returns: `ListRoutingControlsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutputResponse
    /// List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.
    ///
    /// - Parameter ListSafetyRulesInput : [no documentation found]
    ///
    /// - Returns: `ListSafetyRulesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listSafetyRules(input: ListSafetyRulesInput) async throws -> ListSafetyRulesOutputResponse
    /// Lists the tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds a tag to a resource.
    ///
    /// - Parameter TagResourceInput : Request of adding tag to the resource
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.
    ///
    /// - Parameter UpdateControlPanelInput : The details of the control panel that you're updating.
    ///
    /// - Returns: `UpdateControlPanelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func updateControlPanel(input: UpdateControlPanelInput) async throws -> UpdateControlPanelOutputResponse
    /// Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    ///
    /// - Parameter UpdateRoutingControlInput : The details of the routing control that you're updating.
    ///
    /// - Returns: `UpdateRoutingControlOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : 403 response - You do not have sufficient access to perform this action.
    /// - `ConflictException` : 409 response - ConflictException. You might be using a predefined variable.
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ThrottlingException` : 429 response - LimitExceededException or TooManyRequestsException.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func updateRoutingControl(input: UpdateRoutingControlInput) async throws -> UpdateRoutingControlOutputResponse
    /// Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.
    ///
    /// - Parameter UpdateSafetyRuleInput : A rule that you add to Application Recovery Controller to ensure that recovery actions don't accidentally impair your application's availability.
    ///
    /// - Returns: `UpdateSafetyRuleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : 500 response - InternalServiceError. Temporary service error. Retry the request.
    /// - `ResourceNotFoundException` : 404 response - MalformedQueryString. The query string contains a syntax error or resource not found.
    /// - `ValidationException` : 400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.
    func updateSafetyRule(input: UpdateSafetyRuleInput) async throws -> UpdateSafetyRuleOutputResponse
}

public enum Route53RecoveryControlConfigClientTypes {}
