//
//  MainUnderButtonsView.swift
//  BluePower
//
//  Created by 전준영 on 4/18/25.
//

import SwiftUI

struct MainUnderButtonsView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        VStack(spacing: 16) {
            CommonButton(
                icon: nil,
                backgroundColor: .main,
                text: "주변 기기 찾기",
                textColor: .white,
                symbolColor: nil,
                cornerRadius: 12,
                isEnabled: true,
                action: {
                    withAnimation {
                        viewModel.action(.isSearching)
                    }
                }
            )
            .accessibilityIdentifier("nearbySearchButton")
            
            CommonButton(
                icon: nil,
                backgroundColor: .gray.opacity(0.2),
                text: "연결된 기기 보기",
                textColor: .black,
                symbolColor: nil,
                cornerRadius: 12,
                isEnabled: true,
                action: {
                    // 연결된 기기 보기 액션
                }
            )
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 40)
        .transition(.move(edge: .bottom).combined(with: .opacity))
    }
    
}
