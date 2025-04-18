//
//  MainView.swift
//  BluePower
//
//  Created by 전준영 on 4/14/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        VStack(spacing: viewModel.output.isSearching ? 16 : 32) {
            Spacer()
            
            VStack(spacing: 12) {
                if viewModel.output.isSearching {
                    Text("검색 중...")
                        .font(.headline)
                        .foregroundStyle(.gray)
                        .transition(.opacity)
                }
                
                ImageView(image: .main)
                    .frame(
                        width: Device.screenWidth * (viewModel.output.isSearching ? 0.65 : 0.8),
                        height: Device.screenWidth * (viewModel.output.isSearching ? 0.65 : 0.8)
                    )
                    .animation(.easeInOut,
                               value: viewModel.output.isSearching)
                
                if viewModel.output.isSearching {
                    HStack{
                        Text("주변 기기")
                            .font(.title)
                            .foregroundStyle(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    
                    BluetoothDeviceListView(viewModel: viewModel)
                        .transition(.opacity)
                    
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .animation(.easeInOut,
                       value: viewModel.output.isSearching)
            
            Spacer()
            
            if !viewModel.output.isSearching {
                MainUnderButtonsView(viewModel: viewModel)
            }
        }
        .animation(.easeInOut,
                   value: viewModel.output.isSearching)
    }
}

#Preview {
    MainView()
}
