// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension SageMakerRuntime {

    public struct InvokeEndpointInput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "Accept", location: .header(locationName: "Accept"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string), 
            AWSShapeMember(label: "EndpointName", location: .uri(locationName: "EndpointName"), required: true, type: .string)
        ]
        /// The MIME type of the input data in the request body.
        public let contentType: String?
        /// Provides input data, in the format specified in the ContentType request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see Common Data Formats—Inference.
        public let body: Data
        /// The desired MIME type of the inference in the response.
        public let accept: String?
        public let customAttributes: String?
        /// The name of the endpoint that you specified when you created the endpoint using the CreateEndpoint API. 
        public let endpointName: String

        public init(contentType: String? = nil, body: Data, accept: String? = nil, customAttributes: String? = nil, endpointName: String) {
            self.contentType = contentType
            self.body = body
            self.accept = accept
            self.customAttributes = customAttributes
            self.endpointName = endpointName
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case body = "Body"
            case accept = "Accept"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case endpointName = "EndpointName"
        }
    }

    public struct InvokeEndpointOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "InvokedProductionVariant", location: .header(locationName: "x-Amzn-Invoked-Production-Variant"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string)
        ]
        /// The MIME type of the inference returned in the response body.
        public let contentType: String?
        /// Includes the inference provided by the model. For information about the format of the response body, see Common Data Formats—Inference.
        public let body: Data
        /// Identifies the production variant that was invoked.
        public let invokedProductionVariant: String?
        public let customAttributes: String?

        public init(contentType: String? = nil, body: Data, invokedProductionVariant: String? = nil, customAttributes: String? = nil) {
            self.contentType = contentType
            self.body = body
            self.invokedProductionVariant = invokedProductionVariant
            self.customAttributes = customAttributes
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case body = "Body"
            case invokedProductionVariant = "x-Amzn-Invoked-Production-Variant"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
        }
    }

}