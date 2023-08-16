// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Timestream Write Amazon Timestream is a fast, scalable, fully managed time-series database service that makes it easy to store and analyze trillions of time-series data points per day. With Timestream, you can easily store and analyze IoT sensor data to derive insights from your IoT applications. You can analyze industrial telemetry to streamline equipment management and maintenance. You can also store and analyze log data and metrics to improve the performance and availability of your applications. Timestream is built from the ground up to effectively ingest, process, and store time-series data. It organizes data to optimize query processing. It automatically scales based on the volume of data ingested and on the query volume to ensure you receive optimal performance while inserting and querying data. As your data grows over time, Timestream’s adaptive query processing engine spans across storage tiers to provide fast analysis while reducing costs.
public protocol TimestreamWriteClientProtocol {
    /// Creates a new Timestream batch load task. A batch load task processes data from a CSV source in an S3 location and writes to a Timestream table. A mapping from source to target is defined in a batch load task. Errors and events are written to a report at an S3 location. For the report, if the KMS key is not specified, the report will be encrypted with an S3 managed key when SSE_S3 is the option. Otherwise an error is thrown. For more information, see [Amazon Web Services managed keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk). [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). For details, see [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html).
    ///
    /// - Parameter CreateBatchLoadTaskInput : [no documentation found]
    ///
    /// - Returns: `CreateBatchLoadTaskOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `ConflictException` : Timestream was unable to process this request because it contains resource that already exists.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func createBatchLoadTask(input: CreateBatchLoadTaskInput) async throws -> CreateBatchLoadTaskOutputResponse
    /// Creates a new Timestream database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see [Amazon Web Services managed keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk). [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). For details, see [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html).
    ///
    /// - Parameter CreateDatabaseInput : [no documentation found]
    ///
    /// - Returns: `CreateDatabaseOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `ConflictException` : Timestream was unable to process this request because it contains resource that already exists.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func createDatabase(input: CreateDatabaseInput) async throws -> CreateDatabaseOutputResponse
    /// Adds a new table to an existing database in your account. In an Amazon Web Services account, table names must be at least unique within each Region if they are in the same database. You might have identical table names in the same Region if the tables are in separate databases. While creating the table, you must specify the table name, database name, and the retention properties. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html) for details.
    ///
    /// - Parameter CreateTableInput : [no documentation found]
    ///
    /// - Returns: `CreateTableOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `ConflictException` : Timestream was unable to process this request because it contains resource that already exists.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func createTable(input: CreateTableInput) async throws -> CreateTableOutputResponse
    /// Deletes a given Timestream database. This is an irreversible operation. After a database is deleted, the time-series data from its tables cannot be recovered. All tables in the database must be deleted first, or a ValidationException error will be thrown. Due to the nature of distributed retries, the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html) for details.
    ///
    /// - Parameter DeleteDatabaseInput : [no documentation found]
    ///
    /// - Returns: `DeleteDatabaseOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func deleteDatabase(input: DeleteDatabaseInput) async throws -> DeleteDatabaseOutputResponse
    /// Deletes a given Timestream table. This is an irreversible operation. After a Timestream database table is deleted, the time-series data stored in the table cannot be recovered. Due to the nature of distributed retries, the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html) for details.
    ///
    /// - Parameter DeleteTableInput : [no documentation found]
    ///
    /// - Returns: `DeleteTableOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func deleteTable(input: DeleteTableInput) async throws -> DeleteTableOutputResponse
    /// Returns information about the batch load task, including configurations, mappings, progress, and other details. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html) for details.
    ///
    /// - Parameter DescribeBatchLoadTaskInput : [no documentation found]
    ///
    /// - Returns: `DescribeBatchLoadTaskOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    func describeBatchLoadTask(input: DescribeBatchLoadTaskInput) async throws -> DescribeBatchLoadTaskOutputResponse
    /// Returns information about the database, including the database name, time that the database was created, and the total number of tables found within the database. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html) for details.
    ///
    /// - Parameter DescribeDatabaseInput : [no documentation found]
    ///
    /// - Returns: `DescribeDatabaseOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func describeDatabase(input: DescribeDatabaseInput) async throws -> DescribeDatabaseOutputResponse
    /// Returns a list of available endpoints to make Timestream API calls against. This API operation is available through both the Write and Query APIs. Because the Timestream SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, we don't recommend that you use this API operation unless:
    ///
    /// * You are using [VPC endpoints (Amazon Web Services PrivateLink) with Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)
    ///
    /// * Your application uses a programming language that does not yet have SDK support
    ///
    /// * You require better control over the client-side implementation
    ///
    ///
    /// For detailed information on how and when to use and implement DescribeEndpoints, see [The Endpoint Discovery Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
    ///
    /// - Parameter DescribeEndpointsInput : [no documentation found]
    ///
    /// - Returns: `DescribeEndpointsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func describeEndpoints(input: DescribeEndpointsInput) async throws -> DescribeEndpointsOutputResponse
    /// Returns information about the table, including the table name, database name, retention duration of the memory store and the magnetic store. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html) for details.
    ///
    /// - Parameter DescribeTableInput : [no documentation found]
    ///
    /// - Returns: `DescribeTableOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func describeTable(input: DescribeTableInput) async throws -> DescribeTableOutputResponse
    /// Provides a list of batch load tasks, along with the name, status, when the task is resumable until, and other details. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html) for details.
    ///
    /// - Parameter ListBatchLoadTasksInput : [no documentation found]
    ///
    /// - Returns: `ListBatchLoadTasksOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func listBatchLoadTasks(input: ListBatchLoadTasksInput) async throws -> ListBatchLoadTasksOutputResponse
    /// Returns a list of your Timestream databases. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html) for details.
    ///
    /// - Parameter ListDatabasesInput : [no documentation found]
    ///
    /// - Returns: `ListDatabasesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func listDatabases(input: ListDatabasesInput) async throws -> ListDatabasesOutputResponse
    /// Provides a list of tables, along with the name, status, and retention properties of each table. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html) for details.
    ///
    /// - Parameter ListTablesInput : [no documentation found]
    ///
    /// - Returns: `ListTablesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func listTables(input: ListTablesInput) async throws -> ListTablesOutputResponse
    /// Lists all tags on a Timestream resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    ///
    ///
    /// - Parameter ResumeBatchLoadTaskInput : [no documentation found]
    ///
    /// - Returns: `ResumeBatchLoadTaskOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func resumeBatchLoadTask(input: ResumeBatchLoadTaskInput) async throws -> ResumeBatchLoadTaskOutputResponse
    /// Associates a set of tags with a Timestream resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the association of tags from a Timestream resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Modifies the KMS key for an existing database. While updating the database, you must specify the database name and the identifier of the new KMS key to be used (KmsKeyId). If there are any concurrent UpdateDatabase requests, first writer wins. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html) for details.
    ///
    /// - Parameter UpdateDatabaseInput : [no documentation found]
    ///
    /// - Returns: `UpdateDatabaseOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ServiceQuotaExceededException` : The instance quota of resource exceeded for this account.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func updateDatabase(input: UpdateDatabaseInput) async throws -> UpdateDatabaseOutputResponse
    /// Modifies the retention duration of the memory store and magnetic store for your Timestream table. Note that the change in retention duration takes effect immediately. For example, if the retention period of the memory store was initially set to 2 hours and then changed to 24 hours, the memory store will be capable of holding 24 hours of data, but will be populated with 24 hours of data 22 hours after this change was made. Timestream does not retrieve data from the magnetic store to populate the memory store. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html) for details.
    ///
    /// - Parameter UpdateTableInput : [no documentation found]
    ///
    /// - Returns: `UpdateTableOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func updateTable(input: UpdateTableInput) async throws -> UpdateTableOutputResponse
    /// Enables you to write your time-series data into Timestream. You can specify a single data point or a batch of data points to be inserted into the system. Timestream offers you a flexible schema that auto detects the column names and data types for your Timestream tables based on the dimension names and data types of the data points you specify when invoking writes into the database. Timestream supports eventual consistency read semantics. This means that when you query data immediately after writing a batch of data into Timestream, the query results might not reflect the results of a recently completed write operation. The results may also include some stale data. If you repeat the query request after a short time, the results should return the latest data. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html). See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html) for details. Upserts You can use the Version parameter in a WriteRecords request to update data points. Timestream tracks a version number with each record. Version defaults to 1 when it's not specified for the record in the request. Timestream updates an existing record’s measure value along with its Version when it receives a write request with a higher Version number for that record. When it receives an update request where the measure value is the same as that of the existing record, Timestream still updates Version, if it is greater than the existing value of Version. You can update a data point as many times as desired, as long as the value of Version continuously increases. For example, suppose you write a new record without indicating Version in the request. Timestream stores this record, and set Version to 1. Now, suppose you try to update this record with a WriteRecords request of the same record with a different measure value but, like before, do not provide Version. In this case, Timestream will reject this update with a RejectedRecordsException since the updated record’s version is not greater than the existing value of Version. However, if you were to resend the update request with Version set to 2, Timestream would then succeed in updating the record’s value, and the Version would be set to 2. Next, suppose you sent a WriteRecords request with this same record and an identical measure value, but with Version set to 3. In this case, Timestream would only update Version to 3. Any further updates would need to send a version number greater than 3, or the update requests would receive a RejectedRecordsException.
    ///
    /// - Parameter WriteRecordsInput : [no documentation found]
    ///
    /// - Returns: `WriteRecordsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this action.
    /// - `InternalServerException` : Timestream was unable to fully process this request because of an internal server error.
    /// - `InvalidEndpointException` : The requested endpoint was not valid.
    /// - `RejectedRecordsException` : WriteRecords would throw this exception in the following cases:
    ///
    /// * Records with duplicate data where there are multiple records with the same dimensions, timestamps, and measure names but:
    ///
    /// * Measure values are different
    ///
    /// * Version is not present in the request or the value of version in the new record is equal to or lower than the existing value
    ///
    ///
    /// In this case, if Timestream rejects data, the ExistingVersion field in the RejectedRecords response will indicate the current record’s version. To force an update, you can resend the request with a version for the record set to a value greater than the ExistingVersion.
    ///
    /// * Records with timestamps that lie outside the retention duration of the memory store.
    ///
    /// * Records with dimensions or measures that exceed the Timestream defined limits.
    ///
    ///
    /// For more information, see [Quotas](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html) in the Amazon Timestream Developer Guide.
    /// - `ResourceNotFoundException` : The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.
    /// - `ThrottlingException` : Too many requests were made by a user and they exceeded the service quotas. The request was throttled.
    /// - `ValidationException` : An invalid or malformed request.
    func writeRecords(input: WriteRecordsInput) async throws -> WriteRecordsOutputResponse
}

public enum TimestreamWriteClientTypes {}
