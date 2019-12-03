//
//  Day.swift
//  AdventCodeCore
//
//  Created by Arnaud Le Bourblanc on 02/12/2019.
//  Copyright © 2019 Arnaud Le Bourblanc. All rights reserved.
//

import Foundation

open class Day: Identifiable {
    open var input: [Int]!
    open var number: Int { return 0 }

    open var status: DayStatus { return .notDone }

    public init() {
        loadInput()
    }

    private func loadInput() {
        guard let url = Bundle.main.url(forResource: "Day\(number)", withExtension: "txt"),
            let data = try? String(contentsOf: url, encoding: .utf8) else {
                self.input = []
                return
        }
        let elements = data.components(separatedBy: .newlines)
        self.input = elements.compactMap({Int($0)})
    }

    open func getResult() -> String { return "" }
}
