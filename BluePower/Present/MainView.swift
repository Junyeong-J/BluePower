//
//  MainView.swift
//  BluePower
//
//  Created by 전준영 on 4/14/25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        VStack(spacing: 32) {
            Spacer()
            ImageView(image: .main)
                .frame(width: Device.screenWidth * 0.8, height: Device.screenWidth * 0.8)
            
            Spacer()
            
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
                        
                    }
                )
                
                CommonButton(
                    icon: nil,
                    backgroundColor: .gray.opacity(0.2),
                    text: "연결된 기기 보기",
                    textColor: .black,
                    symbolColor: nil,
                    cornerRadius: 12,
                    isEnabled: true,
                    action: {
                        
                    }
                )
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
    }
    
}

#Preview {
    MainView()
}
