// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CodeDeploy AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, or serverless AWS Lambda functions. You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy. AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.  AWS CodeDeploy Components  Use the information in this guide to help you work with the following AWS CodeDeploy components:    Application: A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.    Deployment group: A set of individual instances or CodeDeploy Lambda applications. A Lambda deployment group contains a group of applications. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Auto Scaling groups, or both.     Deployment configuration: A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.    Deployment: The process and the components used in the process of updating a Lambda function or of installing content on one or more instances.     Application revisions: For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to update and one or more functions to validate deployment lifecycle events. For an EC2/On-premises deployment, this is an archive file containing source content—source code, web pages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.   This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, and to get details about a Lambda function deployment.  AWS CodeDeploy Information Resources     AWS CodeDeploy User Guide     AWS CodeDeploy API Reference Guide     AWS CLI Reference for AWS CodeDeploy     AWS CodeDeploy Developer Forum   
*/
public struct CodeDeploy {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeDeploy_20141006",
            service: "codedeploy",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-10-06",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-2-fips": "codedeploy-fips.us-east-2.amazonaws.com", "us-east-1-fips": "codedeploy-fips.us-east-1.amazonaws.com", "us-west-2-fips": "codedeploy-fips.us-west-2.amazonaws.com", "us-west-1-fips": "codedeploy-fips.us-west-1.amazonaws.com"],
            middlewares: [],
            possibleErrorTypes: [CodeDeployErrorType.self]
        )
    }

    ///  Gets information about a deployment configuration.
    public func getDeploymentConfig(_ input: GetDeploymentConfigInput) throws -> EventLoopFuture<GetDeploymentConfigOutput> {
        return try client.send(operation: "GetDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployments in a deployment group for an application registered with the applicable IAM user or AWS account.
    public func listDeployments(_ input: ListDeploymentsInput) throws -> EventLoopFuture<ListDeploymentsOutput> {
        return try client.send(operation: "ListDeployments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an instance as part of a deployment.
    public func getDeploymentInstance(_ input: GetDeploymentInstanceInput) throws -> EventLoopFuture<GetDeploymentInstanceOutput> {
        return try client.send(operation: "GetDeploymentInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of target IDs that are associated a deployment. 
    public func listDeploymentTargets(_ input: ListDeploymentTargetsInput) throws -> EventLoopFuture<ListDeploymentTargetsOutput> {
        return try client.send(operation: "ListDeploymentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) 
    public func continueDeployment(_ input: ContinueDeploymentInput) throws {
        _ = try client.send(operation: "ContinueDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a deployment.
    public func getDeployment(_ input: GetDeploymentInput) throws -> EventLoopFuture<GetDeploymentOutput> {
        return try client.send(operation: "GetDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an application.
    public func getApplication(_ input: GetApplicationInput) throws -> EventLoopFuture<GetApplicationOutput> {
        return try client.send(operation: "GetApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a deployment group to which application revisions will be deployed.
    public func createDeploymentGroup(_ input: CreateDeploymentGroupInput) throws -> EventLoopFuture<CreateDeploymentGroupOutput> {
        return try client.send(operation: "CreateDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is completed.
    public func skipWaitTimeForInstanceTermination(_ input: SkipWaitTimeForInstanceTerminationInput) throws {
        _ = try client.send(operation: "SkipWaitTimeForInstanceTermination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployment configurations with the applicable IAM user or AWS account.
    public func listDeploymentConfigs(_ input: ListDeploymentConfigsInput) throws -> EventLoopFuture<ListDeploymentConfigsOutput> {
        return try client.send(operation: "ListDeploymentConfigs", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets information about an on-premises instance. 
    public func getOnPremisesInstance(_ input: GetOnPremisesInstanceInput) throws -> EventLoopFuture<GetOnPremisesInstanceOutput> {
        return try client.send(operation: "GetOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to stop an ongoing deployment.
    public func stopDeployment(_ input: StopDeploymentInput) throws -> EventLoopFuture<StopDeploymentOutput> {
        return try client.send(operation: "StopDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates a deployment configuration. 
    public func createDeploymentConfig(_ input: CreateDeploymentConfigInput) throws -> EventLoopFuture<CreateDeploymentConfigOutput> {
        return try client.send(operation: "CreateDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the applications registered with the applicable IAM user or AWS account.
    public func listApplications(_ input: ListApplicationsInput) throws -> EventLoopFuture<ListApplicationsOutput> {
        return try client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns information about a deployment target. 
    public func getDeploymentTarget(_ input: GetDeploymentTargetInput) throws -> EventLoopFuture<GetDeploymentTargetOutput> {
        return try client.send(operation: "GetDeploymentTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers with AWS CodeDeploy a revision for the specified application.
    public func registerApplicationRevision(_ input: RegisterApplicationRevisionInput) throws {
        _ = try client.send(operation: "RegisterApplicationRevision", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a deployment group.
    public func deleteDeploymentGroup(_ input: DeleteDeploymentGroupInput) throws -> EventLoopFuture<DeleteDeploymentGroupOutput> {
        return try client.send(operation: "DeleteDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deploys an application revision through the specified deployment group.
    public func createDeployment(_ input: CreateDeploymentInput) throws -> EventLoopFuture<CreateDeploymentOutput> {
        return try client.send(operation: "CreateDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a deployment group.
    public func getDeploymentGroup(_ input: GetDeploymentGroupInput) throws -> EventLoopFuture<GetDeploymentGroupOutput> {
        return try client.send(operation: "GetDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more deployment groups.
    public func batchGetDeploymentGroups(_ input: BatchGetDeploymentGroupsInput) throws -> EventLoopFuture<BatchGetDeploymentGroupsOutput> {
        return try client.send(operation: "BatchGetDeploymentGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more on-premises instances.
    public func batchGetOnPremisesInstances(_ input: BatchGetOnPremisesInstancesInput) throws -> EventLoopFuture<BatchGetOnPremisesInstancesOutput> {
        return try client.send(operation: "BatchGetOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from one or more on-premises instances.
    public func removeTagsFromOnPremisesInstances(_ input: RemoveTagsFromOnPremisesInstancesInput) throws {
        _ = try client.send(operation: "RemoveTagsFromOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a GitHub account connection.
    public func deleteGitHubAccountToken(_ input: DeleteGitHubAccountTokenInput) throws -> EventLoopFuture<DeleteGitHubAccountTokenOutput> {
        return try client.send(operation: "DeleteGitHubAccountToken", path: "/", httpMethod: "POST", input: input)
    }

    ///    The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the applicable IAM user or AWS account. 
    public func listDeploymentInstances(_ input: ListDeploymentInstancesInput) throws -> EventLoopFuture<ListDeploymentInstancesOutput> {
        return try client.send(operation: "ListDeploymentInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///    This method works, but is considered deprecated. Use BatchGetDeploymentTargets instead.    Returns an array of instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer BatchGetDeploymentTargets works with all compute platforms. 
    public func batchGetDeploymentInstances(_ input: BatchGetDeploymentInstancesInput) throws -> EventLoopFuture<BatchGetDeploymentInstancesOutput> {
        return try client.send(operation: "BatchGetDeploymentInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a deployment configuration.  A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted. 
    public func deleteDeploymentConfig(_ input: DeleteDeploymentConfigInput) throws {
        _ = try client.send(operation: "DeleteDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more application revisions.
    public func batchGetApplicationRevisions(_ input: BatchGetApplicationRevisionsInput) throws -> EventLoopFuture<BatchGetApplicationRevisionsOutput> {
        return try client.send(operation: "BatchGetApplicationRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes information about a deployment group.
    public func updateDeploymentGroup(_ input: UpdateDeploymentGroupInput) throws -> EventLoopFuture<UpdateDeploymentGroupOutput> {
        return try client.send(operation: "UpdateDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more deployments.
    public func batchGetDeployments(_ input: BatchGetDeploymentsInput) throws -> EventLoopFuture<BatchGetDeploymentsOutput> {
        return try client.send(operation: "BatchGetDeployments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployment groups for an application registered with the applicable IAM user or AWS account.
    public func listDeploymentGroups(_ input: ListDeploymentGroupsInput) throws -> EventLoopFuture<ListDeploymentGroupsOutput> {
        return try client.send(operation: "ListDeploymentGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an application.
    public func deleteApplication(_ input: DeleteApplicationInput) throws {
        _ = try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more applications.
    public func batchGetApplications(_ input: BatchGetApplicationsInput) throws -> EventLoopFuture<BatchGetApplicationsOutput> {
        return try client.send(operation: "BatchGetApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of names for one or more on-premises instances. Unless otherwise specified, both registered and deregistered on-premises instance names will be listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
    public func listOnPremisesInstances(_ input: ListOnPremisesInstancesInput) throws -> EventLoopFuture<ListOnPremisesInstancesOutput> {
        return try client.send(operation: "ListOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an on-premises instance.  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both. 
    public func registerOnPremisesInstance(_ input: RegisterOnPremisesInstanceInput) throws {
        _ = try client.send(operation: "RegisterOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Sets the result of a Lambda validation function. The function validates one or both lifecycle events (BeforeAllowTraffic and AfterAllowTraffic) and returns Succeeded or Failed. 
    public func putLifecycleEventHookExecutionStatus(_ input: PutLifecycleEventHookExecutionStatusInput) throws -> EventLoopFuture<PutLifecycleEventHookExecutionStatusOutput> {
        return try client.send(operation: "PutLifecycleEventHookExecutionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the name of an application.
    public func updateApplication(_ input: UpdateApplicationInput) throws {
        _ = try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the names of stored connections to GitHub accounts.
    public func listGitHubAccountTokenNames(_ input: ListGitHubAccountTokenNamesInput) throws -> EventLoopFuture<ListGitHubAccountTokenNamesOutput> {
        return try client.send(operation: "ListGitHubAccountTokenNames", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an application revision.
    public func getApplicationRevision(_ input: GetApplicationRevisionInput) throws -> EventLoopFuture<GetApplicationRevisionOutput> {
        return try client.send(operation: "GetApplicationRevision", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about revisions for an application.
    public func listApplicationRevisions(_ input: ListApplicationRevisionsInput) throws -> EventLoopFuture<ListApplicationRevisionsOutput> {
        return try client.send(operation: "ListApplicationRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deregisters an on-premises instance.
    public func deregisterOnPremisesInstance(_ input: DeregisterOnPremisesInstanceInput) throws {
        _ = try client.send(operation: "DeregisterOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated BatchGetDeploymentInstances.   The type of targets returned depends on the deployment's compute platform:     EC2/On-premises - Information about EC2 instance targets.     AWS Lambda - Information about Lambda functions targets.     Amazon ECS - Information about ECS service targets.   
    public func batchGetDeploymentTargets(_ input: BatchGetDeploymentTargetsInput) throws -> EventLoopFuture<BatchGetDeploymentTargetsOutput> {
        return try client.send(operation: "BatchGetDeploymentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application.
    public func createApplication(_ input: CreateApplicationInput) throws -> EventLoopFuture<CreateApplicationOutput> {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds tags to on-premises instances.
    public func addTagsToOnPremisesInstances(_ input: AddTagsToOnPremisesInstancesInput) throws {
        _ = try client.send(operation: "AddTagsToOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }


}