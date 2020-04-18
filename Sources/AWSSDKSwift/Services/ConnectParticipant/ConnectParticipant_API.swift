//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ConnectParticipant service.

Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Amazon Connect enables customer contacts through voice or chat. The APIs described here are used by chat participants, such as agents and customers.
*/
public struct ConnectParticipant {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ConnectParticipant client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "participant.connect",
            signingName: "execute-api",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-07",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ConnectParticipantErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.
    public func createParticipantConnection(_ input: CreateParticipantConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParticipantConnectionResponse> {
        return client.send(operation: "CreateParticipantConnection", path: "/participant/connection", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func disconnectParticipant(_ input: DisconnectParticipantRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisconnectParticipantResponse> {
        return client.send(operation: "DisconnectParticipant", path: "/participant/disconnect", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func getTranscript(_ input: GetTranscriptRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTranscriptResponse> {
        return client.send(operation: "GetTranscript", path: "/participant/transcript", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func sendEvent(_ input: SendEventRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendEventResponse> {
        return client.send(operation: "SendEvent", path: "/participant/event", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func sendMessage(_ input: SendMessageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMessageResponse> {
        return client.send(operation: "SendMessage", path: "/participant/message", httpMethod: "POST", input: input, on: eventLoop)
    }
}