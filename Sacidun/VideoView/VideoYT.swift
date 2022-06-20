//
//  VideoYT.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI
import WebKit

struct VideoYT: View {
  let ID: String
    var body: some View {
      Video(videoID: ID)
             .frame(width: 350, height: 190)
             .cornerRadius(12)
             .padding(.horizontal,24)
    }
}

struct VideoYT_Previews: PreviewProvider {
    static var previews: some View {
        VideoYT(ID: "")
    }
}
struct Video: UIViewRepresentable {
  let videoID: String
  func makeUIView(context: Context) -> some WKWebView {
    return WKWebView()
  }
  func updateUIView(_ uiView: UIViewType, context: Context) {
    guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")else {return}


    uiView.scrollView.isScrollEnabled = false
    uiView.load(URLRequest(url: youtubeURL))
  }
}
