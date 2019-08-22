// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for EC2InstanceConnect
public enum EC2InstanceConnectErrorType: AWSErrorType {
    case authException(message: String?)
    case eC2InstanceNotFoundException(message: String?)
    case invalidArgsException(message: String?)
    case serviceException(message: String?)
    case throttlingException(message: String?)
}

extension EC2InstanceConnectErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthException":
            self = .authException(message: message)
        case "EC2InstanceNotFoundException":
            self = .eC2InstanceNotFoundException(message: message)
        case "InvalidArgsException":
            self = .invalidArgsException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}