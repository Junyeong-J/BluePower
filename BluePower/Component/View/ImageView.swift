//
//  ImageView.swift
//  BluePower
//
//  Created by 전준영 on 4/14/25.
//

import SwiftUI

struct ImageView: View {
    let image: AppImage
    
    var body: some View {
        Image(image.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
