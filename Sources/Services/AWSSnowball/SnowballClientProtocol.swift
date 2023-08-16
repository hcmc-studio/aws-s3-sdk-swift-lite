// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon Web Services Snow Family provides a petabyte-scale data transport solution that uses secure devices to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The Snow Family commands described here provide access to the same functionality that is available in the Amazon Web Services Snow Family Management Console, which enables you to create and manage jobs for a Snow Family device. To transfer data locally with a Snow Family device, you'll need to use the Snowball Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow Family. For more information, see the [User Guide](https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html).
public protocol SnowballClientProtocol {
    /// Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.
    ///
    /// - Parameter CancelClusterInput : [no documentation found]
    ///
    /// - Returns: `CancelClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func cancelCluster(input: CancelClusterInput) async throws -> CancelClusterOutputResponse
    /// Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.
    ///
    /// - Parameter CancelJobInput : [no documentation found]
    ///
    /// - Returns: `CancelJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    /// Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
    ///
    /// - Parameter CreateAddressInput : [no documentation found]
    ///
    /// - Returns: `CreateAddressOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidAddressException` : The address provided was invalid. Check the address with your region's carrier, and try again.
    /// - `UnsupportedAddressException` : The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact Amazon Web Services Support.
    func createAddress(input: CreateAddressInput) async throws -> CreateAddressOutputResponse
    /// Creates an empty cluster. Each cluster supports five nodes. You use the [CreateJob] action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    ///
    /// - Parameter CreateClusterInput : [no documentation found]
    ///
    /// - Returns: `CreateClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `Ec2RequestFailedException` : Your user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    /// - `InvalidInputCombinationException` : Job or cluster creation failed. One or more inputs were invalid. Confirm that the [CreateClusterRequest$SnowballType] value supports your [CreateJobRequest$JobType], and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    /// Creates a job to import or export data between Amazon S3 and your on-premises data center. Your Amazon Web Services account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster. Only the Snowball; Edge device type is supported when ordering clustered jobs. The device capacity is optional. Availability of device types differ by Amazon Web Services Region. For more information about Region availability, see [Amazon Web Services Regional Services](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4). Snow Family devices and their capacities.
    ///
    /// * Device type: SNC1_SSD
    ///
    /// * Capacity: T14
    ///
    /// * Description: Snowcone
    ///
    ///
    ///
    ///
    /// * Device type: SNC1_HDD
    ///
    /// * Capacity: T8
    ///
    /// * Description: Snowcone
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_S
    ///
    /// * Capacity: T98
    ///
    /// * Description: Snowball Edge Storage Optimized for data transfer only
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_CG
    ///
    /// * Capacity: T42
    ///
    /// * Description: Snowball Edge Compute Optimized with GPU
    ///
    ///
    ///
    ///
    /// * Device type: EDGE_C
    ///
    /// * Capacity: T42
    ///
    /// * Description: Snowball Edge Compute Optimized without GPU
    ///
    ///
    ///
    ///
    /// * Device type: EDGE
    ///
    /// * Capacity: T100
    ///
    /// * Description: Snowball Edge Storage Optimized with EC2 Compute
    ///
    ///
    /// This device is replaced with T98.
    ///
    /// * Device type: STANDARD
    ///
    /// * Capacity: T50
    ///
    /// * Description: Original Snowball device This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region
    ///
    ///
    ///
    ///
    /// * Device type: STANDARD
    ///
    /// * Capacity: T80
    ///
    /// * Description: Original Snowball device This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region.
    ///
    ///
    ///
    ///
    /// * Snow Family device type: RACK_5U_C
    ///
    /// * Capacity: T13
    ///
    /// * Description: Snowblade.
    ///
    ///
    ///
    ///
    /// * Device type: V3_5S
    ///
    /// * Capacity: T240
    ///
    /// * Description: Snowball Edge Storage Optimized 210TB
    ///
    /// - Parameter CreateJobInput : [no documentation found]
    ///
    /// - Returns: `CreateJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterLimitExceededException` : Job creation failed. Currently, clusters support five nodes. If you have fewer than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five nodes.
    /// - `Ec2RequestFailedException` : Your user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    /// - `InvalidInputCombinationException` : Job or cluster creation failed. One or more inputs were invalid. Confirm that the [CreateClusterRequest$SnowballType] value supports your [CreateJobRequest$JobType], and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func createJob(input: CreateJobInput) async throws -> CreateJobOutputResponse
    /// Creates a job with the long-term usage option for a device. The long-term usage is a 1-year or 3-year long-term pricing type for the device. You are billed upfront, and Amazon Web Services provides discounts for long-term pricing.
    ///
    /// - Parameter CreateLongTermPricingInput : [no documentation found]
    ///
    /// - Returns: `CreateLongTermPricingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func createLongTermPricing(input: CreateLongTermPricingInput) async throws -> CreateLongTermPricingOutputResponse
    /// Creates a shipping label that will be used to return the Snow device to Amazon Web Services.
    ///
    /// - Parameter CreateReturnShippingLabelInput : [no documentation found]
    ///
    /// - Returns: `CreateReturnShippingLabelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : You get this exception when you call CreateReturnShippingLabel more than once when other requests are not completed.
    /// - `InvalidInputCombinationException` : Job or cluster creation failed. One or more inputs were invalid. Confirm that the [CreateClusterRequest$SnowballType] value supports your [CreateJobRequest$JobType], and try again.
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `ReturnShippingLabelAlreadyExistsException` : You get this exception if you call CreateReturnShippingLabel and a valid return shipping label already exists. In this case, use DescribeReturnShippingLabel to get the URL.
    func createReturnShippingLabel(input: CreateReturnShippingLabelInput) async throws -> CreateReturnShippingLabelOutputResponse
    /// Takes an AddressId and returns specific details about that address in the form of an Address object.
    ///
    /// - Parameter DescribeAddressInput : [no documentation found]
    ///
    /// - Returns: `DescribeAddressOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func describeAddress(input: DescribeAddressInput) async throws -> DescribeAddressOutputResponse
    /// Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    ///
    /// - Parameter DescribeAddressesInput : [no documentation found]
    ///
    /// - Returns: `DescribeAddressesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func describeAddresses(input: DescribeAddressesInput) async throws -> DescribeAddressesOutputResponse
    /// Returns information about a specific cluster including shipping information, cluster status, and other important metadata.
    ///
    /// - Parameter DescribeClusterInput : [no documentation found]
    ///
    /// - Returns: `DescribeClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    /// Returns information about a specific job including shipping information, job status, and other important metadata.
    ///
    /// - Parameter DescribeJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func describeJob(input: DescribeJobInput) async throws -> DescribeJobOutputResponse
    /// Information on the shipping label of a Snow device that is being returned to Amazon Web Services.
    ///
    /// - Parameter DescribeReturnShippingLabelInput : [no documentation found]
    ///
    /// - Returns: `DescribeReturnShippingLabelOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : You get this exception when you call CreateReturnShippingLabel more than once when other requests are not completed.
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func describeReturnShippingLabel(input: DescribeReturnShippingLabelInput) async throws -> DescribeReturnShippingLabelOutputResponse
    /// Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. This is the only valid status for calling this API as the manifest and UnlockCode code value are used for securing your device and should only be used when you have the device. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 360 days after the job is created.
    ///
    /// - Parameter GetJobManifestInput : [no documentation found]
    ///
    /// - Returns: `GetJobManifestOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func getJobManifest(input: GetJobManifestInput) async throws -> GetJobManifestOutputResponse
    /// Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 360 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snow device through the Snowball client when the client is started for the first time. The only valid status for calling this API is WithCustomer as the manifest and Unlock code values are used for securing your device and should only be used when you have the device. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.
    ///
    /// - Parameter GetJobUnlockCodeInput : [no documentation found]
    ///
    /// - Returns: `GetJobUnlockCodeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func getJobUnlockCode(input: GetJobUnlockCodeInput) async throws -> GetJobUnlockCodeOutputResponse
    /// Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use. The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact Amazon Web Services Support.
    ///
    /// - Parameter GetSnowballUsageInput : [no documentation found]
    ///
    /// - Returns: `GetSnowballUsageOutputResponse` : [no documentation found]
    func getSnowballUsage(input: GetSnowballUsageInput) async throws -> GetSnowballUsageOutputResponse
    /// Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.
    ///
    /// - Parameter GetSoftwareUpdatesInput : [no documentation found]
    ///
    /// - Returns: `GetSoftwareUpdatesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func getSoftwareUpdates(input: GetSoftwareUpdatesInput) async throws -> GetSoftwareUpdatesOutputResponse
    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    ///
    /// - Parameter ListClusterJobsInput : [no documentation found]
    ///
    /// - Returns: `ListClusterJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func listClusterJobs(input: ListClusterJobsInput) async throws -> ListClusterJobsOutputResponse
    /// Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    ///
    /// - Parameter ListClustersInput : [no documentation found]
    ///
    /// - Returns: `ListClustersOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    /// This action returns a list of the different Amazon EC2-compatible Amazon Machine Images (AMIs) that are owned by your Amazon Web Services accountthat would be supported for use on a Snow device. Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04 LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images are no longer supported in the Market, but still supported for use on devices through Amazon EC2 VM Import/Export and running locally in AMIs.
    ///
    /// - Parameter ListCompatibleImagesInput : [no documentation found]
    ///
    /// - Returns: `ListCompatibleImagesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `Ec2RequestFailedException` : Your user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    func listCompatibleImages(input: ListCompatibleImagesInput) async throws -> ListCompatibleImagesOutputResponse
    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    ///
    /// - Parameter ListJobsInput : [no documentation found]
    ///
    /// - Returns: `ListJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    /// Lists all long-term pricing types.
    ///
    /// - Parameter ListLongTermPricingInput : [no documentation found]
    ///
    /// - Returns: `ListLongTermPricingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func listLongTermPricing(input: ListLongTermPricingInput) async throws -> ListLongTermPricingOutputResponse
    /// A list of locations from which the customer can choose to pickup a device.
    ///
    /// - Parameter ListPickupLocationsInput : [no documentation found]
    ///
    /// - Returns: `ListPickupLocationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func listPickupLocations(input: ListPickupLocationsInput) async throws -> ListPickupLocationsOutputResponse
    /// Lists all supported versions for Snow on-device services. Returns an array of ServiceVersion object containing the supported versions for a particular service.
    ///
    /// - Parameter ListServiceVersionsInput : [no documentation found]
    ///
    /// - Returns: `ListServiceVersionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidNextTokenException` : The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func listServiceVersions(input: ListServiceVersionsInput) async throws -> ListServiceVersionsOutputResponse
    /// While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
    ///
    /// - Parameter UpdateClusterInput : [no documentation found]
    ///
    /// - Returns: `UpdateClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `Ec2RequestFailedException` : Your user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    /// - `InvalidInputCombinationException` : Job or cluster creation failed. One or more inputs were invalid. Confirm that the [CreateClusterRequest$SnowballType] value supports your [CreateJobRequest$JobType], and try again.
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func updateCluster(input: UpdateClusterInput) async throws -> UpdateClusterOutputResponse
    /// While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    ///
    /// - Parameter UpdateJobInput : [no documentation found]
    ///
    /// - Returns: `UpdateJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterLimitExceededException` : Job creation failed. Currently, clusters support five nodes. If you have fewer than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five nodes.
    /// - `Ec2RequestFailedException` : Your user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    /// - `InvalidInputCombinationException` : Job or cluster creation failed. One or more inputs were invalid. Confirm that the [CreateClusterRequest$SnowballType] value supports your [CreateJobRequest$JobType], and try again.
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    /// - `KMSRequestFailedException` : The provided Key Management Service key lacks the permissions to perform the specified [CreateJob] or [UpdateJob] action.
    func updateJob(input: UpdateJobInput) async throws -> UpdateJobOutputResponse
    /// Updates the state when a shipment state changes to a different state.
    ///
    /// - Parameter UpdateJobShipmentStateInput : [no documentation found]
    ///
    /// - Returns: `UpdateJobShipmentStateOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidJobStateException` : The action can't be performed because the job's current state doesn't allow that action to be performed.
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func updateJobShipmentState(input: UpdateJobShipmentStateInput) async throws -> UpdateJobShipmentStateOutputResponse
    /// Updates the long-term pricing type.
    ///
    /// - Parameter UpdateLongTermPricingInput : [no documentation found]
    ///
    /// - Returns: `UpdateLongTermPricingOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidResourceException` : The specified resource can't be found. Check the information you provided in your last request, and try again.
    func updateLongTermPricing(input: UpdateLongTermPricingInput) async throws -> UpdateLongTermPricingOutputResponse
}

public enum SnowballClientTypes {}
