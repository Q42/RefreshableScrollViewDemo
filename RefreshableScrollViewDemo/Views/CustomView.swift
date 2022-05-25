//
//  CustomView.swift
//  RefreshableScrollViewDemo
//
//  Created by Mathijs Bernson on 25/05/2022.
//

import SwiftUI
import SafariServices
import RefreshableScrollView

/// Custom view example
struct CustomView: View {
  @State var isPresentingWebView = false

  var body: some View {
    RefreshableScrollView {
      VStack {
        Text("Hello, World!")

        Button("Show web view") {
          isPresentingWebView = true
        }
        .sheet(isPresented: $isPresentingWebView) {
          WebView(url: URL(string: "https://q42.nl")!)
        }
      }
    }
    .navigationTitle("Custom view")
    .refreshable {
      await Task.sleep(seconds: 2)
    }
  }
}

private struct WebView: UIViewControllerRepresentable {
  let url: URL

  func makeUIViewController(context: Context) -> SFSafariViewController {
    SFSafariViewController(url: url)
  }

  func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
  }
}

struct CustomView_Previews: PreviewProvider {
  static var previews: some View {
    CustomView()
  }
}
