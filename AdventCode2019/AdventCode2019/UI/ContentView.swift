//
//  ContentView.swift
//  AdventCode2019
//
//  Created by Arnaud Le Bourblanc on 02/12/2019.
//  Copyright © 2019 Arnaud Le Bourblanc. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        return List(Days.all, rowContent: DayRow.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
