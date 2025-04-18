//
//  BLEDevice.swift
//  BluePower
//
//  Created by 전준영 on 4/18/25.
//

import SwiftUI

struct BLEDevice: Identifiable, Equatable {
    let id: UUID = UUID()
    let name: String
    let isConnected: Bool
}
