//
//  StackView.swift
//  RefreshableScrollViewDemo
//
//  Created by Mathijs Bernson on 25/05/2022.
//

import SwiftUI
import RefreshableScrollView

/// Lazy stack example
struct StackView: View {
  @State var items: [Item] = Array(1...100).map(Item.init)
  @State var count = 100

  var body: some View {
    RefreshableScrollView {
      LazyVStack(alignment: .leading) {
        ForEach(items) { item in
          Text("Row \(item.id)")
        }
      }
    }
    .navigationTitle("Lazy VStack")
    .refreshable {
      await Task.sleep(seconds: 2)
      count += 1
      items.insert(Item(id: count), at: 0)
    }
  }

  struct Item: Identifiable {
    let id: Int
  }
}

struct StackView_Previews: PreviewProvider {
  static var previews: some View {
    StackView()
  }
}
