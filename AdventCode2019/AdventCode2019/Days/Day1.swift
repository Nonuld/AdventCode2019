//
//  Day1.swift
//  AdventCode2019
//
//  Created by Arnaud Le Bourblanc on 02/12/2019.
//  Copyright © 2019 Arnaud Le Bourblanc. All rights reserved.
//

import AdventCodeCore

class Day1: Day {
    override var number: Int { return 1 }

    override var status: DayStatus { return .done }

    override func getResult() -> String {
        var total = 0
        for module in input {
            var masses = [module]
            while let fuelMasse = masses.last, fuelMasse > 6 {
                let newFuelMasse = calculateFuel(from: fuelMasse)
                masses.append(newFuelMasse)
            }
            masses.removeFirst()
            total += masses.reduce(0, {$0+$1})
        }
        print(total)
        return "\(total)"
    }

    private func calculateFuel(from element: Int) -> Int {
        let mass = floor(Double(element) / 3.0) - 2
        return Int(mass)
    }
}
