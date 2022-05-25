//
//  ContentView.swift
//  RefreshableScrollViewDemo
//
//  Created by Mathijs Bernson on 25/05/2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    List {
      Section("Lists and grids") {
        NavigationLink("List view", destination: StackView())
        NavigationLink("Grid view", destination: GridView())
      }

      Section("Views") {
        NavigationLink("Custom view", destination: CustomView())
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
