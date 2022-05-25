//
//  GridView.swift
//  RefreshableScrollViewDemo
//
//  Created by Mathijs Bernson on 25/05/2022.
//

import SwiftUI
import RefreshableScrollView

/// Lazy grid example
struct GridView: View {
  let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

  var body: some View {
    RefreshableScrollView {
      LazyVGrid(columns: columns) {
        ForEach((0...79), id: \.self) { i in
          let codepoint = i + 0x1f600
          let codepointString = String(format: "%02X", codepoint)
          Text("\(codepointString)")
          let emoji = String(Character(UnicodeScalar(codepoint)!))
          Text("\(emoji)")
        }
      }.font(.largeTitle)
    }
    .navigationTitle("Lazy VGrid")
    .refreshable {
      await Task.sleep(seconds: 2)
    }
  }
}

struct GridView_Previews: PreviewProvider {
  static var previews: some View {
    GridView()
  }
}
