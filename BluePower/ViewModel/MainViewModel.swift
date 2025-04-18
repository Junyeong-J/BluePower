//
//  MainViewModel.swift
//  BluePower
//
//  Created by 전준영 on 4/18/25.
//

import Foundation
import Combine

final class MainViewModel: ViewModelType {
    
    var cancellables = Set<AnyCancellable>()
    
    var input = Input() {
        didSet {
            transform()
        }
    }
    
    @Published
    var output = Output()
    
    init() {
        setupBindings()
        transform()
    }
    
    private func setupBindings() {
        
    }
}

// MARK: - Input & Output
extension MainViewModel {
    
    struct Input {
        let findButtonTapped = PassthroughSubject<Void, Never>()
    }
    
    struct Output {
        var isSearching: Bool = false
        var devices: [BLEDevice] = []
    }
    
    func transform() {
        
    }
    
}

// MARK: - Action
extension MainViewModel {
    
    enum Action {
        case isSearching
    }
    
    func action(_ action: Action) {
        switch action {
        case .isSearching:
            Task { @MainActor in
                output.isSearching = true
                output.devices = [
                    BLEDevice(name: "AirPods Pro", isConnected: true),
                    BLEDevice(name: "Bluetooth Mouse", isConnected: false)
                ]
            }
        }
    }
    
}
