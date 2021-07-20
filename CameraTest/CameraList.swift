//
//  CameraList.swift
//  CameraTest
//
//  Created by Alexander v. Below on 28.06.21.
//

import Foundation
import AVFoundation

func getDevices() -> [String] {
    var result = [String]()
    var deviceTypes: [AVCaptureDevice.DeviceType] = [.builtInWideAngleCamera]
    #if os(OSX)
    deviceTypes.append(.externalUnknown)
    #else
    deviceTypes.append(contentsOf: [.builtInDualCamera,
                                    .builtInDualWideCamera,
                                    .builtInTelephotoCamera,
                                    .builtInTripleCamera,
                                    .builtInTrueDepthCamera,
                                    .builtInUltraWideCamera])
    #endif
    let discoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: deviceTypes,
        mediaType: nil, position: .unspecified)

    result = discoverySession.devices.map { device in
        device.localizedName
    }
    return result
}
