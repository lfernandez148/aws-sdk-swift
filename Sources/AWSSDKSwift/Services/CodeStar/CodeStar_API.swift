// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:    DeleteProject, which deletes a project.    DescribeProject, which lists the attributes of a project.    ListProjects, which lists all projects associated with your AWS account.    ListResources, which lists the resources associated with a project.    ListTagsForProject, which lists the tags associated with a project.    TagProject, which adds tags to a project.    UntagProject, which removes tags from a project.    UpdateProject, which updates the attributes of a project.   Teams and team members, by calling the following:    AssociateTeamMember, which adds an IAM user to the team for a project.    DisassociateTeamMember, which removes an IAM user from the team for a project.    ListTeamMembers, which lists all the IAM users in the team for a project, including their roles and attributes.    UpdateTeamMember, which updates a team member's attributes in a project.   Users, by calling the following:    CreateUserProfile, which creates a user profile that contains data associated with the user across all projects.    DeleteUserProfile, which deletes all user profile information across all projects.    DescribeUserProfile, which describes the profile of a user.    ListUserProfiles, which lists all user profiles.    UpdateUserProfile, which updates the profile for a user.  
*/
public struct CodeStar {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "CodeStar_20170419",
            service: "codestar",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CodeStarErrorType.self]
        )
    }

    ///  Adds an IAM user to the team for an AWS CodeStar project.
    public func associateTeamMember(_ input: AssociateTeamMemberRequest) throws -> Future<AssociateTeamMemberResult> {
        return try client.send(operation: "AssociateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.
    public func createProject(_ input: CreateProjectRequest) throws -> Future<CreateProjectResult> {
        return try client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    public func createUserProfile(_ input: CreateUserProfileRequest) throws -> Future<CreateUserProfileResult> {
        return try client.send(operation: "CreateUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
    public func deleteProject(_ input: DeleteProjectRequest) throws -> Future<DeleteProjectResult> {
        return try client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
    public func deleteUserProfile(_ input: DeleteUserProfileRequest) throws -> Future<DeleteUserProfileResult> {
        return try client.send(operation: "DeleteUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a project and its resources.
    public func describeProject(_ input: DescribeProjectRequest) throws -> Future<DescribeProjectResult> {
        return try client.send(operation: "DescribeProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a user in AWS CodeStar and the user attributes across all projects.
    public func describeUserProfile(_ input: DescribeUserProfileRequest) throws -> Future<DescribeUserProfileResult> {
        return try client.send(operation: "DescribeUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.
    public func disassociateTeamMember(_ input: DisassociateTeamMemberRequest) throws -> Future<DisassociateTeamMemberResult> {
        return try client.send(operation: "DisassociateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all projects in AWS CodeStar associated with your AWS account.
    public func listProjects(_ input: ListProjectsRequest) throws -> Future<ListProjectsResult> {
        return try client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists resources associated with a project in AWS CodeStar.
    public func listResources(_ input: ListResourcesRequest) throws -> Future<ListResourcesResult> {
        return try client.send(operation: "ListResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the tags for a project.
    public func listTagsForProject(_ input: ListTagsForProjectRequest) throws -> Future<ListTagsForProjectResult> {
        return try client.send(operation: "ListTagsForProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all team members associated with a project.
    public func listTeamMembers(_ input: ListTeamMembersRequest) throws -> Future<ListTeamMembersResult> {
        return try client.send(operation: "ListTeamMembers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the user profiles configured for your AWS account in AWS CodeStar.
    public func listUserProfiles(_ input: ListUserProfilesRequest) throws -> Future<ListUserProfilesResult> {
        return try client.send(operation: "ListUserProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds tags to a project.
    public func tagProject(_ input: TagProjectRequest) throws -> Future<TagProjectResult> {
        return try client.send(operation: "TagProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from a project.
    public func untagProject(_ input: UntagProjectRequest) throws -> Future<UntagProjectResult> {
        return try client.send(operation: "UntagProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a project in AWS CodeStar.
    public func updateProject(_ input: UpdateProjectRequest) throws -> Future<UpdateProjectResult> {
        return try client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
    public func updateTeamMember(_ input: UpdateTeamMemberRequest) throws -> Future<UpdateTeamMemberResult> {
        return try client.send(operation: "UpdateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar. 
    public func updateUserProfile(_ input: UpdateUserProfileRequest) throws -> Future<UpdateUserProfileResult> {
        return try client.send(operation: "UpdateUserProfile", path: "/", httpMethod: "POST", input: input)
    }
}
