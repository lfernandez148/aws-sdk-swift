// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon WorkSpaces Service Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.
*/
public struct WorkSpaces {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "WorkspacesService",
            service: "workspaces",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-04-08",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [WorkSpacesErrorType.self]
        )
    }

    ///  Reboots the specified WorkSpaces. You cannot reboot a WorkSpace unless its state is AVAILABLE or UNHEALTHY. This operation is asynchronous and returns before the WorkSpaces have rebooted.
    public func rebootWorkspaces(_ input: RebootWorkspacesRequest) throws -> EventLoopFuture<RebootWorkspacesResult> {
        return try client.send(operation: "RebootWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the state of the specified WorkSpace. To maintain a WorkSpace without being interrupted, set the WorkSpace state to ADMIN_MAINTENANCE. WorkSpaces in this state do not respond to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace in this state is not stopped. Users can log into a WorkSpace in the ADMIN_MAINTENANCE state.
    public func modifyWorkspaceState(_ input: ModifyWorkspaceStateRequest) throws -> EventLoopFuture<ModifyWorkspaceStateResult> {
        return try client.send(operation: "ModifyWorkspaceState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your IP access control groups.
    public func describeIpGroups(_ input: DescribeIpGroupsRequest) throws -> EventLoopFuture<DescribeIpGroupsResult> {
        return try client.send(operation: "DescribeIpGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Rebuilds the specified WorkSpace. You cannot rebuild a WorkSpace unless its state is AVAILABLE, ERROR, or UNHEALTHY. Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see Rebuild a WorkSpace. This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.
    public func rebuildWorkspaces(_ input: RebuildWorkspacesRequest) throws -> EventLoopFuture<RebuildWorkspacesResult> {
        return try client.send(operation: "RebuildWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes the configuration of bring your own license (BYOL) for the specified account.
    public func describeAccount(_ input: DescribeAccountRequest) throws -> EventLoopFuture<DescribeAccountResult> {
        return try client.send(operation: "DescribeAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest) throws -> EventLoopFuture<DescribeWorkspacesResult> {
        return try client.send(operation: "DescribeWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the properties of the specified Amazon WorkSpaces client.
    public func modifyClientProperties(_ input: ModifyClientPropertiesRequest) throws -> EventLoopFuture<ModifyClientPropertiesResult> {
        return try client.send(operation: "ModifyClientProperties", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified image from your account. To delete an image, you must first delete any bundles that are associated with the image. 
    public func deleteWorkspaceImage(_ input: DeleteWorkspaceImageRequest) throws -> EventLoopFuture<DeleteWorkspaceImageResult> {
        return try client.send(operation: "DeleteWorkspaceImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the configuration of bring your own license (BYOL) for the specified account.
    public func modifyAccount(_ input: ModifyAccountRequest) throws -> EventLoopFuture<ModifyAccountResult> {
        return try client.send(operation: "ModifyAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the available AWS Directory Service directories that are registered with Amazon WorkSpaces.
    public func describeWorkspaceDirectories(_ input: DescribeWorkspaceDirectoriesRequest) throws -> EventLoopFuture<DescribeWorkspaceDirectoriesResult> {
        return try client.send(operation: "DescribeWorkspaceDirectories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified images, if the image identifiers are provided. Otherwise, all images in the account are described. 
    public func describeWorkspaceImages(_ input: DescribeWorkspaceImagesRequest) throws -> EventLoopFuture<DescribeWorkspaceImagesResult> {
        return try client.send(operation: "DescribeWorkspaceImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    public func describeWorkspaceBundles(_ input: DescribeWorkspaceBundlesRequest) throws -> EventLoopFuture<DescribeWorkspaceBundlesResult> {
        return try client.send(operation: "DescribeWorkspaceBundles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates the specified tags for the specified WorkSpace.
    public func createTags(_ input: CreateTagsRequest) throws -> EventLoopFuture<CreateTagsResult> {
        return try client.send(operation: "CreateTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified WorkSpace properties.
    public func modifyWorkspaceProperties(_ input: ModifyWorkspacePropertiesRequest) throws -> EventLoopFuture<ModifyWorkspacePropertiesResult> {
        return try client.send(operation: "ModifyWorkspaceProperties", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified IP access control group. You cannot delete an IP access control group that is associated with a directory.
    public func deleteIpGroup(_ input: DeleteIpGroupRequest) throws -> EventLoopFuture<DeleteIpGroupResult> {
        return try client.send(operation: "DeleteIpGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more WorkSpaces. This operation is asynchronous and returns before the WorkSpaces are created.
    public func createWorkspaces(_ input: CreateWorkspacesRequest) throws -> EventLoopFuture<CreateWorkspacesResult> {
        return try client.send(operation: "CreateWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified IP access control group from the specified directory.
    public func disassociateIpGroups(_ input: DisassociateIpGroupsRequest) throws -> EventLoopFuture<DisassociateIpGroupsResult> {
        return try client.send(operation: "DisassociateIpGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an IP access control group. An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using AuthorizeIpRules. There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.
    public func createIpGroup(_ input: CreateIpGroupRequest) throws -> EventLoopFuture<CreateIpGroupResult> {
        return try client.send(operation: "CreateIpGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the connection status of the specified WorkSpaces.
    public func describeWorkspacesConnectionStatus(_ input: DescribeWorkspacesConnectionStatusRequest) throws -> EventLoopFuture<DescribeWorkspacesConnectionStatusResult> {
        return try client.send(operation: "DescribeWorkspacesConnectionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports the specified Windows 7 or Windows 10 bring your own license (BYOL) image into Amazon WorkSpaces. The image must be an already licensed EC2 image that is in your AWS account, and you must own the image. 
    public func importWorkspaceImage(_ input: ImportWorkspaceImageRequest) throws -> EventLoopFuture<ImportWorkspaceImageResult> {
        return try client.send(operation: "ImportWorkspaceImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified tags for the specified WorkSpace.
    public func describeTags(_ input: DescribeTagsRequest) throws -> EventLoopFuture<DescribeTagsResult> {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified IP access control group with the specified directory.
    public func associateIpGroups(_ input: AssociateIpGroupsRequest) throws -> EventLoopFuture<AssociateIpGroupsResult> {
        return try client.send(operation: "AssociateIpGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more rules to the specified IP access control group. This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.
    public func authorizeIpRules(_ input: AuthorizeIpRulesRequest) throws -> EventLoopFuture<AuthorizeIpRulesResult> {
        return try client.send(operation: "AuthorizeIpRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Terminates the specified WorkSpaces. Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace. You can terminate a WorkSpace that is in any state except SUSPENDED. This operation is asynchronous and returns before the WorkSpaces have been completely terminated.
    public func terminateWorkspaces(_ input: TerminateWorkspacesRequest) throws -> EventLoopFuture<TerminateWorkspacesResult> {
        return try client.send(operation: "TerminateWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags from the specified WorkSpace.
    public func deleteTags(_ input: DeleteTagsRequest) throws -> EventLoopFuture<DeleteTagsResult> {
        return try client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable bring your own license (BYOL).  The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
    public func listAvailableManagementCidrRanges(_ input: ListAvailableManagementCidrRangesRequest) throws -> EventLoopFuture<ListAvailableManagementCidrRangesResult> {
        return try client.send(operation: "ListAvailableManagementCidrRanges", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
    public func describeClientProperties(_ input: DescribeClientPropertiesRequest) throws -> EventLoopFuture<DescribeClientPropertiesResult> {
        return try client.send(operation: "DescribeClientProperties", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes modifications to the configuration of bring your own license (BYOL) for the specified account.
    public func describeAccountModifications(_ input: DescribeAccountModificationsRequest) throws -> EventLoopFuture<DescribeAccountModificationsResult> {
        return try client.send(operation: "DescribeAccountModifications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more rules from the specified IP access control group.
    public func revokeIpRules(_ input: RevokeIpRulesRequest) throws -> EventLoopFuture<RevokeIpRulesResult> {
        return try client.send(operation: "RevokeIpRules", path: "/", httpMethod: "POST", input: input)
    }

    ///   Stops the specified WorkSpaces. You cannot stop a WorkSpace unless it has a running mode of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.
    public func stopWorkspaces(_ input: StopWorkspacesRequest) throws -> EventLoopFuture<StopWorkspacesResult> {
        return try client.send(operation: "StopWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified WorkSpaces. You cannot start a WorkSpace unless it has a running mode of AutoStop and a state of STOPPED.
    public func startWorkspaces(_ input: StartWorkspacesRequest) throws -> EventLoopFuture<StartWorkspacesResult> {
        return try client.send(operation: "StartWorkspaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces the current rules of the specified IP access control group with the specified rules.
    public func updateRulesOfIpGroup(_ input: UpdateRulesOfIpGroupRequest) throws -> EventLoopFuture<UpdateRulesOfIpGroupResult> {
        return try client.send(operation: "UpdateRulesOfIpGroup", path: "/", httpMethod: "POST", input: input)
    }


}