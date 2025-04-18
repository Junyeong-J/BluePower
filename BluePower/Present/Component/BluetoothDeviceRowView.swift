//
//  BluetoothDeviceRowView.swift
//  BluePower
//
//  Created by 전준영 on 4/18/25.
//

import SwiftUI

struct BluetoothDeviceRowView: View {
    
    let device: BLEDevice

    var body: some View {
        HStack {
            Text(device.name)
                .font(.body)
                .foregroundColor(.black)

            Spacer()

            Text(device.isConnected ? "연결됨" : "연결 안 됨")
                .font(.caption)
                .foregroundColor(device.isConnected ? .green : .gray)
        }
        .padding(.vertical, 12)
    }
    
}
