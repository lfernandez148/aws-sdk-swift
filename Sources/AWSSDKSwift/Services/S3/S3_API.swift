// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

import S3Middleware

/**

*/
public struct S3 {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "s3",
            serviceProtocol: ServiceProtocol(type: .restxml),
            apiVersion: "2006-03-01",
            endpoint: endpoint,
            serviceEndpoints: ["ap-southeast-2": "s3.ap-southeast-2.amazonaws.com", "us-east-1": "s3.amazonaws.com", "us-west-2": "s3.us-west-2.amazonaws.com", "ap-southeast-1": "s3.ap-southeast-1.amazonaws.com", "sa-east-1": "s3.sa-east-1.amazonaws.com", "ap-northeast-1": "s3.ap-northeast-1.amazonaws.com", "us-west-1": "s3.us-west-1.amazonaws.com", "eu-west-1": "s3.eu-west-1.amazonaws.com", "s3-external-1": "s3-external-1.amazonaws.com"],
            partitionEndpoint: "us-east-1",
            middlewares: [S3RequestMiddleware()],
            possibleErrorTypes: [S3ErrorType.self]
        )
    }

    ///  Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public.
    public func getBucketPolicyStatus(_ input: GetBucketPolicyStatusRequest) throws -> EventLoopFuture<GetBucketPolicyStatusOutput> {
        return try client.send(operation: "GetBucketPolicyStatus", path: "/{Bucket}?policyStatus", httpMethod: "GET", input: input)
    }

    ///  Returns the request payment configuration of a bucket.
    public func getBucketRequestPayment(_ input: GetBucketRequestPaymentRequest) throws -> EventLoopFuture<GetBucketRequestPaymentOutput> {
        return try client.send(operation: "GetBucketRequestPayment", path: "/{Bucket}?requestPayment", httpMethod: "GET", input: input)
    }

    ///  Deletes the CORS configuration information set for the bucket.
    public func deleteBucketCors(_ input: DeleteBucketCorsRequest) throws {
        _ = try client.send(operation: "DeleteBucketCors", path: "/{Bucket}?cors", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the lifecycle configuration from the bucket.
    public func deleteBucketLifecycle(_ input: DeleteBucketLifecycleRequest) throws {
        _ = try client.send(operation: "DeleteBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "DELETE", input: input)
    }

    ///  Sets the permissions on a bucket using access control lists (ACL).
    public func putBucketAcl(_ input: PutBucketAclRequest) throws {
        _ = try client.send(operation: "PutBucketAcl", path: "/{Bucket}?acl", httpMethod: "PUT", input: input)
    }

    ///  Deletes the policy from the bucket.
    public func deleteBucketPolicy(_ input: DeleteBucketPolicyRequest) throws {
        _ = try client.send(operation: "DeleteBucketPolicy", path: "/{Bucket}?policy", httpMethod: "DELETE", input: input)
    }

    ///  Replaces a policy on a bucket. If the bucket already has a policy, the one in this request completely replaces it.
    public func putBucketPolicy(_ input: PutBucketPolicyRequest) throws {
        _ = try client.send(operation: "PutBucketPolicy", path: "/{Bucket}?policy", httpMethod: "PUT", input: input)
    }

    ///  uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket
    public func putObjectAcl(_ input: PutObjectAclRequest) throws -> EventLoopFuture<PutObjectAclOutput> {
        return try client.send(operation: "PutObjectAcl", path: "/{Bucket}/{Key+}?acl", httpMethod: "PUT", input: input)
    }

    ///  Returns a list of all buckets owned by the authenticated sender of the request.
    public func listBuckets() throws -> EventLoopFuture<ListBucketsOutput> {
        return try client.send(operation: "ListBuckets", path: "/", httpMethod: "GET")
    }

    ///  Deletes a metrics configuration (specified by the metrics configuration ID) from the bucket.
    public func deleteBucketMetricsConfiguration(_ input: DeleteBucketMetricsConfigurationRequest) throws {
        _ = try client.send(operation: "DeleteBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "DELETE", input: input)
    }

    ///  Deprecated, see the PutBucketLifecycleConfiguration operation.
    public func putBucketLifecycle(_ input: PutBucketLifecycleRequest) throws {
        _ = try client.send(operation: "PutBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "PUT", input: input)
    }

    ///  This operation lists in-progress multipart uploads.
    public func listMultipartUploads(_ input: ListMultipartUploadsRequest) throws -> EventLoopFuture<ListMultipartUploadsOutput> {
        return try client.send(operation: "ListMultipartUploads", path: "/{Bucket}?uploads", httpMethod: "GET", input: input)
    }

    ///  Gets the access control policy for the bucket.
    public func getBucketAcl(_ input: GetBucketAclRequest) throws -> EventLoopFuture<GetBucketAclOutput> {
        return try client.send(operation: "GetBucketAcl", path: "/{Bucket}?acl", httpMethod: "GET", input: input)
    }

    ///  Returns the versioning state of a bucket.
    public func getBucketVersioning(_ input: GetBucketVersioningRequest) throws -> EventLoopFuture<GetBucketVersioningOutput> {
        return try client.send(operation: "GetBucketVersioning", path: "/{Bucket}?versioning", httpMethod: "GET", input: input)
    }

    ///  Removes the PublicAccessBlock configuration from an Amazon S3 bucket.
    public func deletePublicAccessBlock(_ input: DeletePublicAccessBlockRequest) throws {
        _ = try client.send(operation: "DeletePublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the tags from the bucket.
    public func deleteBucketTagging(_ input: DeleteBucketTaggingRequest) throws {
        _ = try client.send(operation: "DeleteBucketTagging", path: "/{Bucket}?tagging", httpMethod: "DELETE", input: input)
    }

    ///  Returns a list of inventory configurations for the bucket.
    public func listBucketInventoryConfigurations(_ input: ListBucketInventoryConfigurationsRequest) throws -> EventLoopFuture<ListBucketInventoryConfigurationsOutput> {
        return try client.send(operation: "ListBucketInventoryConfigurations", path: "/{Bucket}?inventory", httpMethod: "GET", input: input)
    }

    ///  Deletes an analytics configuration for the bucket (specified by the analytics configuration ID).
    public func deleteBucketAnalyticsConfiguration(_ input: DeleteBucketAnalyticsConfigurationRequest) throws {
        _ = try client.send(operation: "DeleteBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "DELETE", input: input)
    }

    ///  Returns the access control list (ACL) of an object.
    public func getObjectAcl(_ input: GetObjectAclRequest) throws -> EventLoopFuture<GetObjectAclOutput> {
        return try client.send(operation: "GetObjectAcl", path: "/{Bucket}/{Key+}?acl", httpMethod: "GET", input: input)
    }

    ///  Creates or modifies the PublicAccessBlock configuration for an Amazon S3 bucket.
    public func putPublicAccessBlock(_ input: PutPublicAccessBlockRequest) throws {
        _ = try client.send(operation: "PutPublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "PUT", input: input)
    }

    ///  Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters. To set the logging status of a bucket, you must be the bucket owner.
    public func putBucketLogging(_ input: PutBucketLoggingRequest) throws {
        _ = try client.send(operation: "PutBucketLogging", path: "/{Bucket}?logging", httpMethod: "PUT", input: input)
    }

    ///  Sets the accelerate configuration of an existing bucket.
    public func putBucketAccelerateConfiguration(_ input: PutBucketAccelerateConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketAccelerateConfiguration", path: "/{Bucket}?accelerate", httpMethod: "PUT", input: input)
    }

    ///  Removes the tag-set from an existing object.
    public func deleteObjectTagging(_ input: DeleteObjectTaggingRequest) throws -> EventLoopFuture<DeleteObjectTaggingOutput> {
        return try client.send(operation: "DeleteObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "DELETE", input: input)
    }

    ///  Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects.
    public func deleteObject(_ input: DeleteObjectRequest) throws -> EventLoopFuture<DeleteObjectOutput> {
        return try client.send(operation: "DeleteObject", path: "/{Bucket}/{Key+}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves the PublicAccessBlock configuration for an Amazon S3 bucket.
    public func getPublicAccessBlock(_ input: GetPublicAccessBlockRequest) throws -> EventLoopFuture<GetPublicAccessBlockOutput> {
        return try client.send(operation: "GetPublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "GET", input: input)
    }

    ///  Deprecated, see the GetBucketNotificationConfiguration operation.
    public func getBucketNotification(_ input: GetBucketNotificationConfigurationRequest) throws -> EventLoopFuture<NotificationConfigurationDeprecated> {
        return try client.send(operation: "GetBucketNotification", path: "/{Bucket}?notification", httpMethod: "GET", input: input)
    }

    ///  Restores an archived copy of an object back into Amazon S3
    public func restoreObject(_ input: RestoreObjectRequest) throws -> EventLoopFuture<RestoreObjectOutput> {
        return try client.send(operation: "RestoreObject", path: "/{Bucket}/{Key+}?restore", httpMethod: "POST", input: input)
    }

    ///  Deletes the bucket. All objects (including all object versions and Delete Markers) in the bucket must be deleted before the bucket itself can be deleted.
    public func deleteBucket(_ input: DeleteBucketRequest) throws {
        _ = try client.send(operation: "DeleteBucket", path: "/{Bucket}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the server-side encryption configuration from the bucket.
    public func deleteBucketEncryption(_ input: DeleteBucketEncryptionRequest) throws {
        _ = try client.send(operation: "DeleteBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "DELETE", input: input)
    }

    ///  Uploads a part by copying data from an existing object as data source.
    public func uploadPartCopy(_ input: UploadPartCopyRequest) throws -> EventLoopFuture<UploadPartCopyOutput> {
        return try client.send(operation: "UploadPartCopy", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  Returns the lifecycle configuration information set on the bucket.
    public func getBucketLifecycleConfiguration(_ input: GetBucketLifecycleConfigurationRequest) throws -> EventLoopFuture<GetBucketLifecycleConfigurationOutput> {
        return try client.send(operation: "GetBucketLifecycleConfiguration", path: "/{Bucket}?lifecycle", httpMethod: "GET", input: input)
    }

    ///  Return torrent files from a bucket.
    public func getObjectTorrent(_ input: GetObjectTorrentRequest) throws -> EventLoopFuture<GetObjectTorrentOutput> {
        return try client.send(operation: "GetObjectTorrent", path: "/{Bucket}/{Key+}?torrent", httpMethod: "GET", input: input)
    }

    ///  Lists the parts that have been uploaded for a specific multipart upload.
    public func listParts(_ input: ListPartsRequest) throws -> EventLoopFuture<ListPartsOutput> {
        return try client.send(operation: "ListParts", path: "/{Bucket}/{Key+}", httpMethod: "GET", input: input)
    }

    ///  Lists the metrics configurations for the bucket.
    public func listBucketMetricsConfigurations(_ input: ListBucketMetricsConfigurationsRequest) throws -> EventLoopFuture<ListBucketMetricsConfigurationsOutput> {
        return try client.send(operation: "ListBucketMetricsConfigurations", path: "/{Bucket}?metrics", httpMethod: "GET", input: input)
    }

    ///  Aborts a multipart upload. To verify that all parts have been removed, so you don't get charged for the part storage, you should call the List Parts operation and ensure the parts list is empty.
    public func abortMultipartUpload(_ input: AbortMultipartUploadRequest) throws -> EventLoopFuture<AbortMultipartUploadOutput> {
        return try client.send(operation: "AbortMultipartUpload", path: "/{Bucket}/{Key+}", httpMethod: "DELETE", input: input)
    }

    ///  This operation enables you to delete multiple objects from a bucket using a single HTTP request. You may specify up to 1000 keys.
    public func deleteObjects(_ input: DeleteObjectsRequest) throws -> EventLoopFuture<DeleteObjectsOutput> {
        return try client.send(operation: "DeleteObjects", path: "/{Bucket}?delete", httpMethod: "POST", input: input)
    }

    ///  Lists the analytics configurations for the bucket.
    public func listBucketAnalyticsConfigurations(_ input: ListBucketAnalyticsConfigurationsRequest) throws -> EventLoopFuture<ListBucketAnalyticsConfigurationsOutput> {
        return try client.send(operation: "ListBucketAnalyticsConfigurations", path: "/{Bucket}?analytics", httpMethod: "GET", input: input)
    }

    ///  Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.
    public func getBucketLogging(_ input: GetBucketLoggingRequest) throws -> EventLoopFuture<GetBucketLoggingOutput> {
        return try client.send(operation: "GetBucketLogging", path: "/{Bucket}?logging", httpMethod: "GET", input: input)
    }

    ///  Retrieves an object's retention settings.
    public func getObjectRetention(_ input: GetObjectRetentionRequest) throws -> EventLoopFuture<GetObjectRetentionOutput> {
        return try client.send(operation: "GetObjectRetention", path: "/{Bucket}/{Key+}?retention", httpMethod: "GET", input: input)
    }

    ///  Deletes an inventory configuration (identified by the inventory ID) from the bucket.
    public func deleteBucketInventoryConfiguration(_ input: DeleteBucketInventoryConfigurationRequest) throws {
        _ = try client.send(operation: "DeleteBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "DELETE", input: input)
    }

    ///  Sets the versioning state of an existing bucket. To set the versioning state, you must be the bucket owner.
    public func putBucketVersioning(_ input: PutBucketVersioningRequest) throws {
        _ = try client.send(operation: "PutBucketVersioning", path: "/{Bucket}?versioning", httpMethod: "PUT", input: input)
    }

    ///  Sets the supplied tag-set to an object that already exists in a bucket
    public func putObjectTagging(_ input: PutObjectTaggingRequest) throws -> EventLoopFuture<PutObjectTaggingOutput> {
        return try client.send(operation: "PutObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "PUT", input: input)
    }

    ///  Returns the tag-set of an object.
    public func getObjectTagging(_ input: GetObjectTaggingRequest) throws -> EventLoopFuture<GetObjectTaggingOutput> {
        return try client.send(operation: "GetObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "GET", input: input)
    }

    ///  Places an Object Retention configuration on an object.
    public func putObjectRetention(_ input: PutObjectRetentionRequest) throws -> EventLoopFuture<PutObjectRetentionOutput> {
        return try client.send(operation: "PutObjectRetention", path: "/{Bucket}/{Key+}?retention", httpMethod: "PUT", input: input)
    }

    ///  Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.
    public func putObjectLockConfiguration(_ input: PutObjectLockConfigurationRequest) throws -> EventLoopFuture<PutObjectLockConfigurationOutput> {
        return try client.send(operation: "PutObjectLockConfiguration", path: "/{Bucket}?object-lock", httpMethod: "PUT", input: input)
    }

    ///  Adds an object to a bucket.
    public func putObject(_ input: PutObjectRequest) throws -> EventLoopFuture<PutObjectOutput> {
        return try client.send(operation: "PutObject", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  Deprecated, see the PutBucketNotificationConfiguraiton operation.
    public func putBucketNotification(_ input: PutBucketNotificationRequest) throws {
        _ = try client.send(operation: "PutBucketNotification", path: "/{Bucket}?notification", httpMethod: "PUT", input: input)
    }

    ///  Sets lifecycle configuration for your bucket. If a lifecycle configuration exists, it replaces it.
    public func putBucketLifecycleConfiguration(_ input: PutBucketLifecycleConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketLifecycleConfiguration", path: "/{Bucket}?lifecycle", httpMethod: "PUT", input: input)
    }

    ///  Deprecated, see the GetBucketLifecycleConfiguration operation.
    public func getBucketLifecycle(_ input: GetBucketLifecycleRequest) throws -> EventLoopFuture<GetBucketLifecycleOutput> {
        return try client.send(operation: "GetBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "GET", input: input)
    }

    ///  Returns the notification configuration of a bucket.
    public func getBucketNotificationConfiguration(_ input: GetBucketNotificationConfigurationRequest) throws -> EventLoopFuture<NotificationConfiguration> {
        return try client.send(operation: "GetBucketNotificationConfiguration", path: "/{Bucket}?notification", httpMethod: "GET", input: input)
    }

    ///  Gets an analytics configuration for the bucket (specified by the analytics configuration ID).
    public func getBucketAnalyticsConfiguration(_ input: GetBucketAnalyticsConfigurationRequest) throws -> EventLoopFuture<GetBucketAnalyticsConfigurationOutput> {
        return try client.send(operation: "GetBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "GET", input: input)
    }

    ///  Returns the tag set associated with the bucket.
    public func getBucketTagging(_ input: GetBucketTaggingRequest) throws -> EventLoopFuture<GetBucketTaggingOutput> {
        return try client.send(operation: "GetBucketTagging", path: "/{Bucket}?tagging", httpMethod: "GET", input: input)
    }

    ///  Returns the replication configuration of a bucket.   It can take a while to propagate the put or delete a replication configuration to all Amazon S3 systems. Therefore, a get request soon after put or delete can return a wrong result.  
    public func getBucketReplication(_ input: GetBucketReplicationRequest) throws -> EventLoopFuture<GetBucketReplicationOutput> {
        return try client.send(operation: "GetBucketReplication", path: "/{Bucket}?replication", httpMethod: "GET", input: input)
    }

    ///   Creates a replication configuration or replaces an existing one. For more information, see Cross-Region Replication (CRR) in the Amazon S3 Developer Guide. 
    public func putBucketReplication(_ input: PutBucketReplicationRequest) throws {
        _ = try client.send(operation: "PutBucketReplication", path: "/{Bucket}?replication", httpMethod: "PUT", input: input)
    }

    ///  The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.
    public func headObject(_ input: HeadObjectRequest) throws -> EventLoopFuture<HeadObjectOutput> {
        return try client.send(operation: "HeadObject", path: "/{Bucket}/{Key+}", httpMethod: "HEAD", input: input)
    }

    ///   Deletes the replication configuration from the bucket. For information about replication configuration, see Cross-Region Replication (CRR) in the Amazon S3 Developer Guide. 
    public func deleteBucketReplication(_ input: DeleteBucketReplicationRequest) throws {
        _ = try client.send(operation: "DeleteBucketReplication", path: "/{Bucket}?replication", httpMethod: "DELETE", input: input)
    }

    ///  Creates a new bucket.
    public func createBucket(_ input: CreateBucketRequest) throws -> EventLoopFuture<CreateBucketOutput> {
        return try client.send(operation: "CreateBucket", path: "/{Bucket}", httpMethod: "PUT", input: input)
    }

    ///  Set the website configuration for a bucket.
    public func putBucketWebsite(_ input: PutBucketWebsiteRequest) throws {
        _ = try client.send(operation: "PutBucketWebsite", path: "/{Bucket}?website", httpMethod: "PUT", input: input)
    }

    ///  Retrieves objects from Amazon S3.
    public func getObject(_ input: GetObjectRequest) throws -> EventLoopFuture<GetObjectOutput> {
        return try client.send(operation: "GetObject", path: "/{Bucket}/{Key+}", httpMethod: "GET", input: input)
    }

    ///  Returns the region the bucket resides in.
    public func getBucketLocation(_ input: GetBucketLocationRequest) throws -> EventLoopFuture<GetBucketLocationOutput> {
        return try client.send(operation: "GetBucketLocation", path: "/{Bucket}?location", httpMethod: "GET", input: input)
    }

    ///  Gets an object's current Legal Hold status.
    public func getObjectLegalHold(_ input: GetObjectLegalHoldRequest) throws -> EventLoopFuture<GetObjectLegalHoldOutput> {
        return try client.send(operation: "GetObjectLegalHold", path: "/{Bucket}/{Key+}?legal-hold", httpMethod: "GET", input: input)
    }

    ///  Returns an inventory configuration (identified by the inventory ID) from the bucket.
    public func getBucketInventoryConfiguration(_ input: GetBucketInventoryConfigurationRequest) throws -> EventLoopFuture<GetBucketInventoryConfigurationOutput> {
        return try client.send(operation: "GetBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "GET", input: input)
    }

    ///  Sets the CORS configuration for a bucket.
    public func putBucketCors(_ input: PutBucketCorsRequest) throws {
        _ = try client.send(operation: "PutBucketCors", path: "/{Bucket}?cors", httpMethod: "PUT", input: input)
    }

    ///  Creates a new server-side encryption configuration (or replaces an existing one, if present).
    public func putBucketEncryption(_ input: PutBucketEncryptionRequest) throws {
        _ = try client.send(operation: "PutBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "PUT", input: input)
    }

    ///  Adds an inventory configuration (identified by the inventory ID) from the bucket.
    public func putBucketInventoryConfiguration(_ input: PutBucketInventoryConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "PUT", input: input)
    }

    ///  Returns the CORS configuration for the bucket.
    public func getBucketCors(_ input: GetBucketCorsRequest) throws -> EventLoopFuture<GetBucketCorsOutput> {
        return try client.send(operation: "GetBucketCors", path: "/{Bucket}?cors", httpMethod: "GET", input: input)
    }

    ///  This operation removes the website configuration from the bucket.
    public func deleteBucketWebsite(_ input: DeleteBucketWebsiteRequest) throws {
        _ = try client.send(operation: "DeleteBucketWebsite", path: "/{Bucket}?website", httpMethod: "DELETE", input: input)
    }

    ///  Returns metadata about all of the versions of objects in a bucket.
    public func listObjectVersions(_ input: ListObjectVersionsRequest) throws -> EventLoopFuture<ListObjectVersionsOutput> {
        return try client.send(operation: "ListObjectVersions", path: "/{Bucket}?versions", httpMethod: "GET", input: input)
    }

    ///  Gets the Object Lock configuration for a bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.
    public func getObjectLockConfiguration(_ input: GetObjectLockConfigurationRequest) throws -> EventLoopFuture<GetObjectLockConfigurationOutput> {
        return try client.send(operation: "GetObjectLockConfiguration", path: "/{Bucket}?object-lock", httpMethod: "GET", input: input)
    }

    ///  Creates a copy of an object that is already stored in Amazon S3.
    public func copyObject(_ input: CopyObjectRequest) throws -> EventLoopFuture<CopyObjectOutput> {
        return try client.send(operation: "CopyObject", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  Gets a metrics configuration (specified by the metrics configuration ID) from the bucket.
    public func getBucketMetricsConfiguration(_ input: GetBucketMetricsConfigurationRequest) throws -> EventLoopFuture<GetBucketMetricsConfigurationOutput> {
        return try client.send(operation: "GetBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "GET", input: input)
    }

    ///  Returns the server-side encryption configuration of a bucket.
    public func getBucketEncryption(_ input: GetBucketEncryptionRequest) throws -> EventLoopFuture<GetBucketEncryptionOutput> {
        return try client.send(operation: "GetBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "GET", input: input)
    }

    ///  Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. Note: ListObjectsV2 is the revised List Objects API and we recommend you use this revised API for new application development.
    public func listObjectsV2(_ input: ListObjectsV2Request) throws -> EventLoopFuture<ListObjectsV2Output> {
        return try client.send(operation: "ListObjectsV2", path: "/{Bucket}?list-type=2", httpMethod: "GET", input: input)
    }

    ///  Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket.
    public func listObjects(_ input: ListObjectsRequest) throws -> EventLoopFuture<ListObjectsOutput> {
        return try client.send(operation: "ListObjects", path: "/{Bucket}", httpMethod: "GET", input: input)
    }

    ///  Initiates a multipart upload and returns an upload ID.  Note: After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
    public func createMultipartUpload(_ input: CreateMultipartUploadRequest) throws -> EventLoopFuture<CreateMultipartUploadOutput> {
        return try client.send(operation: "CreateMultipartUpload", path: "/{Bucket}/{Key+}?uploads", httpMethod: "POST", input: input)
    }

    ///  Sets an analytics configuration for the bucket (specified by the analytics configuration ID).
    public func putBucketAnalyticsConfiguration(_ input: PutBucketAnalyticsConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "PUT", input: input)
    }

    ///  Returns the accelerate configuration of a bucket.
    public func getBucketAccelerateConfiguration(_ input: GetBucketAccelerateConfigurationRequest) throws -> EventLoopFuture<GetBucketAccelerateConfigurationOutput> {
        return try client.send(operation: "GetBucketAccelerateConfiguration", path: "/{Bucket}?accelerate", httpMethod: "GET", input: input)
    }

    ///  Returns the policy of a specified bucket.
    public func getBucketPolicy(_ input: GetBucketPolicyRequest) throws -> EventLoopFuture<GetBucketPolicyOutput> {
        return try client.send(operation: "GetBucketPolicy", path: "/{Bucket}?policy", httpMethod: "GET", input: input)
    }

    ///  Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. Documentation on requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
    public func putBucketRequestPayment(_ input: PutBucketRequestPaymentRequest) throws {
        _ = try client.send(operation: "PutBucketRequestPayment", path: "/{Bucket}?requestPayment", httpMethod: "PUT", input: input)
    }

    ///  Sets the tags for a bucket.
    public func putBucketTagging(_ input: PutBucketTaggingRequest) throws {
        _ = try client.send(operation: "PutBucketTagging", path: "/{Bucket}?tagging", httpMethod: "PUT", input: input)
    }

    ///  Returns the website configuration for a bucket.
    public func getBucketWebsite(_ input: GetBucketWebsiteRequest) throws -> EventLoopFuture<GetBucketWebsiteOutput> {
        return try client.send(operation: "GetBucketWebsite", path: "/{Bucket}?website", httpMethod: "GET", input: input)
    }

    ///  Completes a multipart upload by assembling previously uploaded parts.
    public func completeMultipartUpload(_ input: CompleteMultipartUploadRequest) throws -> EventLoopFuture<CompleteMultipartUploadOutput> {
        return try client.send(operation: "CompleteMultipartUpload", path: "/{Bucket}/{Key+}", httpMethod: "POST", input: input)
    }

    ///  Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.
    public func putBucketMetricsConfiguration(_ input: PutBucketMetricsConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "PUT", input: input)
    }

    ///  This operation is useful to determine if a bucket exists and you have permission to access it.
    public func headBucket(_ input: HeadBucketRequest) throws {
        _ = try client.send(operation: "HeadBucket", path: "/{Bucket}", httpMethod: "HEAD", input: input)
    }

    ///  Applies a Legal Hold configuration to the specified object.
    public func putObjectLegalHold(_ input: PutObjectLegalHoldRequest) throws -> EventLoopFuture<PutObjectLegalHoldOutput> {
        return try client.send(operation: "PutObjectLegalHold", path: "/{Bucket}/{Key+}?legal-hold", httpMethod: "PUT", input: input)
    }

    ///  Uploads a part in a multipart upload.  Note: After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
    public func uploadPart(_ input: UploadPartRequest) throws -> EventLoopFuture<UploadPartOutput> {
        return try client.send(operation: "UploadPart", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  This operation filters the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response.
    public func selectObjectContent(_ input: SelectObjectContentRequest) throws {
        _ = try client.send(operation: "SelectObjectContent", path: "/{Bucket}/{Key+}?select&select-type=2", httpMethod: "POST", input: input)
    }

    ///  Enables notifications of specified events for a bucket.
    public func putBucketNotificationConfiguration(_ input: PutBucketNotificationConfigurationRequest) throws {
        _ = try client.send(operation: "PutBucketNotificationConfiguration", path: "/{Bucket}?notification", httpMethod: "PUT", input: input)
    }


}