// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Things Graph AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services and defining how they interact at an abstract level. For more information about how AWS IoT Things Graph works, see the [User Guide](https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html). The AWS IoT Things Graph service is discontinued.
public protocol IoTThingsGraphClientProtocol {
    /// Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter AssociateEntityToThingInput : [no documentation found]
    ///
    /// - Returns: `AssociateEntityToThingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func associateEntityToThing(input: AssociateEntityToThingInput) async throws -> AssociateEntityToThingOutputResponse
    /// Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter CreateFlowTemplateInput : [no documentation found]
    ///
    /// - Returns: `CreateFlowTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `LimitExceededException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func createFlowTemplate(input: CreateFlowTemplateInput) async throws -> CreateFlowTemplateOutputResponse
    /// Creates a system instance. This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter CreateSystemInstanceInput : [no documentation found]
    ///
    /// - Returns: `CreateSystemInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `LimitExceededException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func createSystemInstance(input: CreateSystemInstanceInput) async throws -> CreateSystemInstanceOutputResponse
    /// Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter CreateSystemTemplateInput : [no documentation found]
    ///
    /// - Returns: `CreateSystemTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func createSystemTemplate(input: CreateSystemTemplateInput) async throws -> CreateSystemTemplateOutputResponse
    /// Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeleteFlowTemplateInput : [no documentation found]
    ///
    /// - Returns: `DeleteFlowTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceInUseException` :
    /// - `ThrottlingException` :
    func deleteFlowTemplate(input: DeleteFlowTemplateInput) async throws -> DeleteFlowTemplateOutputResponse
    /// Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action. This action takes no request parameters.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeleteNamespaceInput : [no documentation found]
    ///
    /// - Returns: `DeleteNamespaceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `ThrottlingException` :
    func deleteNamespace(input: DeleteNamespaceInput) async throws -> DeleteNamespaceOutputResponse
    /// Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeleteSystemInstanceInput : [no documentation found]
    ///
    /// - Returns: `DeleteSystemInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceInUseException` :
    /// - `ThrottlingException` :
    func deleteSystemInstance(input: DeleteSystemInstanceInput) async throws -> DeleteSystemInstanceOutputResponse
    /// Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeleteSystemTemplateInput : [no documentation found]
    ///
    /// - Returns: `DeleteSystemTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceInUseException` :
    /// - `ThrottlingException` :
    func deleteSystemTemplate(input: DeleteSystemTemplateInput) async throws -> DeleteSystemTemplateOutputResponse
    /// Greengrass and Cloud Deployments Deploys the system instance to the target specified in CreateSystemInstance. Greengrass Deployments If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see [AWS IoT Things Graph and AWS IoT Greengrass](https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html).
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeploySystemInstanceInput : [no documentation found]
    ///
    /// - Returns: `DeploySystemInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceInUseException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func deploySystemInstance(input: DeploySystemInstanceInput) async throws -> DeploySystemInstanceOutputResponse
    /// Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeprecateFlowTemplateInput : [no documentation found]
    ///
    /// - Returns: `DeprecateFlowTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func deprecateFlowTemplate(input: DeprecateFlowTemplateInput) async throws -> DeprecateFlowTemplateOutputResponse
    /// Deprecates the specified system.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DeprecateSystemTemplateInput : [no documentation found]
    ///
    /// - Returns: `DeprecateSystemTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func deprecateSystemTemplate(input: DeprecateSystemTemplateInput) async throws -> DeprecateSystemTemplateOutputResponse
    /// Gets the latest version of the user's namespace and the public version that it is tracking.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DescribeNamespaceInput : [no documentation found]
    ///
    /// - Returns: `DescribeNamespaceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func describeNamespace(input: DescribeNamespaceInput) async throws -> DescribeNamespaceOutputResponse
    /// Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter DissociateEntityFromThingInput : [no documentation found]
    ///
    /// - Returns: `DissociateEntityFromThingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func dissociateEntityFromThing(input: DissociateEntityFromThingInput) async throws -> DissociateEntityFromThingOutputResponse
    /// Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.
    ///
    /// * Properties
    ///
    /// * States
    ///
    /// * Events
    ///
    /// * Actions
    ///
    /// * Capabilities
    ///
    /// * Mappings
    ///
    /// * Devices
    ///
    /// * Device Models
    ///
    /// * Services
    ///
    ///
    /// This action doesn't return definitions for systems, flows, and deployments.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetEntitiesInput : [no documentation found]
    ///
    /// - Returns: `GetEntitiesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getEntities(input: GetEntitiesInput) async throws -> GetEntitiesOutputResponse
    /// Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetFlowTemplateInput : [no documentation found]
    ///
    /// - Returns: `GetFlowTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getFlowTemplate(input: GetFlowTemplateInput) async throws -> GetFlowTemplateOutputResponse
    /// Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetFlowTemplateRevisionsInput : [no documentation found]
    ///
    /// - Returns: `GetFlowTemplateRevisionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getFlowTemplateRevisions(input: GetFlowTemplateRevisionsInput) async throws -> GetFlowTemplateRevisionsOutputResponse
    /// Gets the status of a namespace deletion task.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetNamespaceDeletionStatusInput : [no documentation found]
    ///
    /// - Returns: `GetNamespaceDeletionStatusOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func getNamespaceDeletionStatus(input: GetNamespaceDeletionStatusInput) async throws -> GetNamespaceDeletionStatusOutputResponse
    /// Gets a system instance.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetSystemInstanceInput : [no documentation found]
    ///
    /// - Returns: `GetSystemInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getSystemInstance(input: GetSystemInstanceInput) async throws -> GetSystemInstanceOutputResponse
    /// Gets a system.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetSystemTemplateInput : [no documentation found]
    ///
    /// - Returns: `GetSystemTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getSystemTemplate(input: GetSystemTemplateInput) async throws -> GetSystemTemplateOutputResponse
    /// Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetSystemTemplateRevisionsInput : [no documentation found]
    ///
    /// - Returns: `GetSystemTemplateRevisionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getSystemTemplateRevisions(input: GetSystemTemplateRevisionsInput) async throws -> GetSystemTemplateRevisionsOutputResponse
    /// Gets the status of the specified upload.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter GetUploadStatusInput : [no documentation found]
    ///
    /// - Returns: `GetUploadStatusOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func getUploadStatus(input: GetUploadStatusInput) async throws -> GetUploadStatusOutputResponse
    /// Returns a list of objects that contain information about events in a flow execution.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter ListFlowExecutionMessagesInput : [no documentation found]
    ///
    /// - Returns: `ListFlowExecutionMessagesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func listFlowExecutionMessages(input: ListFlowExecutionMessagesInput) async throws -> ListFlowExecutionMessagesOutputResponse
    /// Lists all tags on an AWS IoT Things Graph resource.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchEntitiesInput : [no documentation found]
    ///
    /// - Returns: `SearchEntitiesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func searchEntities(input: SearchEntitiesInput) async throws -> SearchEntitiesOutputResponse
    /// Searches for AWS IoT Things Graph workflow execution instances.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchFlowExecutionsInput : [no documentation found]
    ///
    /// - Returns: `SearchFlowExecutionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func searchFlowExecutions(input: SearchFlowExecutionsInput) async throws -> SearchFlowExecutionsOutputResponse
    /// Searches for summary information about workflows.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchFlowTemplatesInput : [no documentation found]
    ///
    /// - Returns: `SearchFlowTemplatesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func searchFlowTemplates(input: SearchFlowTemplatesInput) async throws -> SearchFlowTemplatesOutputResponse
    /// Searches for system instances in the user's account.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchSystemInstancesInput : [no documentation found]
    ///
    /// - Returns: `SearchSystemInstancesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func searchSystemInstances(input: SearchSystemInstancesInput) async throws -> SearchSystemInstancesOutputResponse
    /// Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchSystemTemplatesInput : [no documentation found]
    ///
    /// - Returns: `SearchSystemTemplatesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func searchSystemTemplates(input: SearchSystemTemplatesInput) async throws -> SearchSystemTemplatesOutputResponse
    /// Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter SearchThingsInput : [no documentation found]
    ///
    /// - Returns: `SearchThingsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func searchThings(input: SearchThingsInput) async throws -> SearchThingsOutputResponse
    /// Creates a tag for the specified resource.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a system instance from its target (Cloud or Greengrass).
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter UndeploySystemInstanceInput : [no documentation found]
    ///
    /// - Returns: `UndeploySystemInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceInUseException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func undeploySystemInstance(input: UndeploySystemInstanceInput) async throws -> UndeploySystemInstanceOutputResponse
    /// Removes a tag from the specified resource.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceAlreadyExistsException` :
    /// - `ThrottlingException` :
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter UpdateFlowTemplateInput : [no documentation found]
    ///
    /// - Returns: `UpdateFlowTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func updateFlowTemplate(input: UpdateFlowTemplateInput) async throws -> UpdateFlowTemplateOutputResponse
    /// Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter UpdateSystemTemplateInput : [no documentation found]
    ///
    /// - Returns: `UpdateSystemTemplateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `ThrottlingException` :
    func updateSystemTemplate(input: UpdateSystemTemplateInput) async throws -> UpdateSystemTemplateOutputResponse
    /// Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum.
    @available(*, deprecated, message: "since: 2022-08-30")
    ///
    /// - Parameter UploadEntityDefinitionsInput : [no documentation found]
    ///
    /// - Returns: `UploadEntityDefinitionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ThrottlingException` :
    func uploadEntityDefinitions(input: UploadEntityDefinitionsInput) async throws -> UploadEntityDefinitionsOutputResponse
}

public enum IoTThingsGraphClientTypes {}
