//
//  BluetoothDeviceListView.swift
//  BluePower
//
//  Created by 전준영 on 4/18/25.
//

import SwiftUI

struct BluetoothDeviceListView: View {
    
    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        VStack(spacing: 0) {
            ForEach(viewModel.output.devices) { device in
                BluetoothDeviceRowView(device: device)
                
                Divider()
            }
        }
        .padding(.horizontal, 20)
    }
    
}
