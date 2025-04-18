//
//  BluePowerTests.swift
//  BluePowerTests
//
//  Created by 전준영 on 4/18/25.
//

import Testing
@testable import BluePower

struct MainViewModelTests {

    @Test
    func testIsSearchingToggles() async throws {
        let viewModel = MainViewModel()

        // 초기 상태 확인
        #expect(viewModel.output.isSearching == false)

        // 액션 발생
        viewModel.action(.isSearching)

        // 상태 변경 확인
        #expect(viewModel.output.isSearching == true)
    }
}
