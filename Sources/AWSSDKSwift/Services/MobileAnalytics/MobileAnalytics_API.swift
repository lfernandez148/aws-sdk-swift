// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.
*/
public struct MobileAnalytics {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mobileanalytics",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2014-06-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MobileAnalyticsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.
    @discardableResult public func putEvents(_ input: PutEventsInput) -> Future<Void> {
        return client.send(operation: "PutEvents", path: "/2014-06-05/events", httpMethod: "POST", input: input)
    }
}