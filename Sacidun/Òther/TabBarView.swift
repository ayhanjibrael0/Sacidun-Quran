//
//  TABBAR.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI

struct TABBAR: View {
    var body: some View {
          TabView {
            ContentAudio()
                .tabItem {
                    Image(systemName: "airpodsmax")
                        Text("AnaSayfa")
                }
          HomeYT()
                .tabItem {
                    
                    Image(systemName: "rectangle.stack")
                        Text("İzle")
                }
          FormView()
                .tabItem {
                    Image(systemName: "person.fill")
                    
                    Text("SosyalMedya")
                }
        }
          .accentColor(Color.red)
    }
}
struct TABBAR_Previews: PreviewProvider {
    static var previews: some View {
        TABBAR()
        
   }
}
