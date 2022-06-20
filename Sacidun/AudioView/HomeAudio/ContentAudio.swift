//
//  ContentAudio.swift
//  Sacidun
//
//  Created by Ayhan on 18.06.2022.
//

import SwiftUI

struct ContentAudio: View {
    var body: some View {
        NavigationView {
          VStack {
            ScrollView{
               Divider()
               HomeView()
            }
          }
          .navigationTitle("Sacidun")
        }
        .preferredColorScheme(.dark)
      }
}

struct ContentAudio_Previews: PreviewProvider {
    static var previews: some View {
        ContentAudio()
          
    }
}
