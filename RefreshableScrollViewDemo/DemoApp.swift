//
//  DemoApp.swift
//  RefreshableScrollViewDemo
//
//  Created by Mathijs Bernson on 25/05/2022.
//

import SwiftUI

@main
struct DemoApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
          .navigationTitle("Refresh demo")
          .navigationBarTitleDisplayMode(.inline)
      }
    }
  }
}
