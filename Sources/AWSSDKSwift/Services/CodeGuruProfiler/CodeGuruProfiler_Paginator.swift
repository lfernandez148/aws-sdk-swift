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

import NIO

//MARK: Paginators

extension CodeGuruProfiler {

    ///  List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    public func listProfileTimesPaginator(
        _ input: ListProfileTimesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProfileTimesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProfileTimes, tokenKey: \ListProfileTimesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists profiling groups.
    public func listProfilingGroupsPaginator(
        _ input: ListProfilingGroupsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProfilingGroupsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProfilingGroups, tokenKey: \ListProfilingGroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CodeGuruProfiler.ListProfileTimesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.ListProfileTimesRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            orderBy: self.orderBy,
            period: self.period,
            profilingGroupName: self.profilingGroupName,
            startTime: self.startTime
        )

    }
}

extension CodeGuruProfiler.ListProfilingGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.ListProfilingGroupsRequest {
        return .init(
            includeDescription: self.includeDescription,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

