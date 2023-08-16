// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Compute Optimizer is a service that analyzes the configuration and utilization metrics of your Amazon Web Services compute resources, such as Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda functions, Amazon EBS volumes, and Amazon ECS services on Fargate. It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, in addition to projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, including the required permissions to use the service, see the [Compute Optimizer User Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
public protocol ComputeOptimizerClientProtocol {
    /// Deletes a recommendation preference, such as enhanced infrastructure metrics. For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter DeleteRecommendationPreferencesInput : [no documentation found]
    ///
    /// - Returns: `DeleteRecommendationPreferencesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func deleteRecommendationPreferences(input: DeleteRecommendationPreferencesInput) async throws -> DeleteRecommendationPreferencesOutputResponse
    /// Describes recommendation export jobs created in the last seven days. Use the [ExportAutoScalingGroupRecommendations] or [ExportEC2InstanceRecommendations] actions to request an export of your recommendations. Then use the [DescribeRecommendationExportJobs] action to view your export jobs.
    ///
    /// - Parameter DescribeRecommendationExportJobsInput : [no documentation found]
    ///
    /// - Returns: `DescribeRecommendationExportJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func describeRecommendationExportJobs(input: DescribeRecommendationExportJobsInput) async throws -> DescribeRecommendationExportJobsOutputResponse
    /// Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.
    ///
    /// - Parameter ExportAutoScalingGroupRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ExportAutoScalingGroupRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func exportAutoScalingGroupRecommendations(input: ExportAutoScalingGroupRecommendationsInput) async throws -> ExportAutoScalingGroupRecommendationsOutputResponse
    /// Exports optimization recommendations for Amazon EBS volumes. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.
    ///
    /// - Parameter ExportEBSVolumeRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ExportEBSVolumeRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func exportEBSVolumeRecommendations(input: ExportEBSVolumeRecommendationsInput) async throws -> ExportEBSVolumeRecommendationsOutputResponse
    /// Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.
    ///
    /// - Parameter ExportEC2InstanceRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ExportEC2InstanceRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func exportEC2InstanceRecommendations(input: ExportEC2InstanceRecommendationsInput) async throws -> ExportEC2InstanceRecommendationsOutputResponse
    /// Exports optimization recommendations for Amazon ECS services on Fargate. Recommendations are exported in a CSV file, and its metadata in a JSON file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can only have one Amazon ECS service export job in progress per Amazon Web Services Region.
    ///
    /// - Parameter ExportECSServiceRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ExportECSServiceRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func exportECSServiceRecommendations(input: ExportECSServiceRecommendationsInput) async throws -> ExportECSServiceRecommendationsOutputResponse
    /// Exports optimization recommendations for Lambda functions. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html) in the Compute Optimizer User Guide. You can have only one Lambda function export job in progress per Amazon Web Services Region.
    ///
    /// - Parameter ExportLambdaFunctionRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ExportLambdaFunctionRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func exportLambdaFunctionRecommendations(input: ExportLambdaFunctionRecommendationsInput) async throws -> ExportLambdaFunctionRecommendationsOutputResponse
    /// Returns Auto Scaling group recommendations. Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetAutoScalingGroupRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetAutoScalingGroupRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getAutoScalingGroupRecommendations(input: GetAutoScalingGroupRecommendationsInput) async throws -> GetAutoScalingGroupRecommendationsOutputResponse
    /// Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. Compute Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetEBSVolumeRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetEBSVolumeRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEBSVolumeRecommendations(input: GetEBSVolumeRecommendationsInput) async throws -> GetEBSVolumeRecommendationsOutputResponse
    /// Returns Amazon EC2 instance recommendations. Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetEC2InstanceRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetEC2InstanceRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEC2InstanceRecommendations(input: GetEC2InstanceRecommendationsInput) async throws -> GetEC2InstanceRecommendationsOutputResponse
    /// Returns the projected utilization metrics of Amazon EC2 instance recommendations. The Cpu and Memory metrics are the only projected utilization metrics returned when you run this action. Additionally, the Memory metric is returned only for resources that have the unified CloudWatch agent installed on them. For more information, see [Enabling Memory Utilization with the CloudWatch Agent](https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).
    ///
    /// - Parameter GetEC2RecommendationProjectedMetricsInput : [no documentation found]
    ///
    /// - Returns: `GetEC2RecommendationProjectedMetricsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEC2RecommendationProjectedMetrics(input: GetEC2RecommendationProjectedMetricsInput) async throws -> GetEC2RecommendationProjectedMetricsOutputResponse
    /// Returns the projected metrics of Amazon ECS service recommendations.
    ///
    /// - Parameter GetECSServiceRecommendationProjectedMetricsInput : [no documentation found]
    ///
    /// - Returns: `GetECSServiceRecommendationProjectedMetricsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getECSServiceRecommendationProjectedMetrics(input: GetECSServiceRecommendationProjectedMetricsInput) async throws -> GetECSServiceRecommendationProjectedMetricsOutputResponse
    /// Returns Amazon ECS service recommendations. Compute Optimizer generates recommendations for Amazon ECS services on Fargate that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetECSServiceRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetECSServiceRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getECSServiceRecommendations(input: GetECSServiceRecommendationsInput) async throws -> GetECSServiceRecommendationsOutputResponse
    /// Returns the recommendation preferences that are in effect for a given resource, such as enhanced infrastructure metrics. Considers all applicable preferences that you might have set at the resource, account, and organization level. When you create a recommendation preference, you can set its status to Active or Inactive. Use this action to view the recommendation preferences that are in effect, or Active.
    ///
    /// - Parameter GetEffectiveRecommendationPreferencesInput : [no documentation found]
    ///
    /// - Returns: `GetEffectiveRecommendationPreferencesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEffectiveRecommendationPreferences(input: GetEffectiveRecommendationPreferencesInput) async throws -> GetEffectiveRecommendationPreferencesOutputResponse
    /// Returns the enrollment (opt in) status of an account to the Compute Optimizer service. If the account is the management account of an organization, this action also confirms the enrollment status of member accounts of the organization. Use the [GetEnrollmentStatusesForOrganization] action to get detailed information about the enrollment status of member accounts of an organization.
    ///
    /// - Parameter GetEnrollmentStatusInput : [no documentation found]
    ///
    /// - Returns: `GetEnrollmentStatusOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEnrollmentStatus(input: GetEnrollmentStatusInput) async throws -> GetEnrollmentStatusOutputResponse
    /// Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account. To get the enrollment status of standalone accounts, use the [GetEnrollmentStatus] action.
    ///
    /// - Parameter GetEnrollmentStatusesForOrganizationInput : [no documentation found]
    ///
    /// - Returns: `GetEnrollmentStatusesForOrganizationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getEnrollmentStatusesForOrganization(input: GetEnrollmentStatusesForOrganizationInput) async throws -> GetEnrollmentStatusesForOrganizationOutputResponse
    /// Returns Lambda function recommendations. Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetLambdaFunctionRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetLambdaFunctionRecommendationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `LimitExceededException` : The request exceeds a limit of the service.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getLambdaFunctionRecommendations(input: GetLambdaFunctionRecommendationsInput) async throws -> GetLambdaFunctionRecommendationsOutputResponse
    /// Returns existing recommendation preferences, such as enhanced infrastructure metrics. Use the scope parameter to specify which preferences to return. You can specify to return preferences for an organization, a specific account ID, or a specific EC2 instance or Auto Scaling group Amazon Resource Name (ARN). For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter GetRecommendationPreferencesInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationPreferencesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getRecommendationPreferences(input: GetRecommendationPreferencesInput) async throws -> GetRecommendationPreferencesOutputResponse
    /// Returns the optimization findings for an account. It returns the number of:
    ///
    /// * Amazon EC2 instances in an account that are Underprovisioned, Overprovisioned, or Optimized.
    ///
    /// * Auto Scaling groups in an account that are NotOptimized, or Optimized.
    ///
    /// * Amazon EBS volumes in an account that are NotOptimized, or Optimized.
    ///
    /// * Lambda functions in an account that are NotOptimized, or Optimized.
    ///
    /// * Amazon ECS services in an account that are Underprovisioned, Overprovisioned, or Optimized.
    ///
    /// - Parameter GetRecommendationSummariesInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationSummariesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getRecommendationSummaries(input: GetRecommendationSummariesInput) async throws -> GetRecommendationSummariesOutputResponse
    /// Creates a new recommendation preference or updates an existing recommendation preference, such as enhanced infrastructure metrics. For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter PutRecommendationPreferencesInput : [no documentation found]
    ///
    /// - Returns: `PutRecommendationPreferencesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `OptInRequiredException` : The account is not opted in to Compute Optimizer.
    /// - `ResourceNotFoundException` : A resource that is required for the action doesn't exist.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func putRecommendationPreferences(input: PutRecommendationPreferencesInput) async throws -> PutRecommendationPreferencesOutputResponse
    /// Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service. If the account is a management account of an organization, this action can also be used to enroll member accounts of the organization. You must have the appropriate permissions to opt in to Compute Optimizer, to view its recommendations, and to opt out. For more information, see [Controlling access with Amazon Web Services Identity and Access Management](https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html) in the Compute Optimizer User Guide. When you opt in, Compute Optimizer automatically creates a service-linked role in your account to access its data. For more information, see [Using Service-Linked Roles for Compute Optimizer](https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html) in the Compute Optimizer User Guide.
    ///
    /// - Parameter UpdateEnrollmentStatusInput : [no documentation found]
    ///
    /// - Returns: `UpdateEnrollmentStatusOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. Try your call again.
    /// - `InvalidParameterValueException` : The value supplied for the input parameter is out of range or not valid.
    /// - `MissingAuthenticationToken` : The request must contain either a valid (registered) Amazon Web Services access key ID or X.509 certificate.
    /// - `ServiceUnavailableException` : The request has failed due to a temporary failure of the server.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func updateEnrollmentStatus(input: UpdateEnrollmentStatusInput) async throws -> UpdateEnrollmentStatusOutputResponse
}

public enum ComputeOptimizerClientTypes {}
