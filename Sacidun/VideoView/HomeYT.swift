//
//  HomeYT.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI

struct HomeYT: View {
    var body: some View {
      NavigationView{
        ScrollView{
          VStack{
            Divider()
            Text("Ankebut Suresi")
              .font(.system(size: 25))
              .fontWeight(.bold)
              .padding(.trailing, 150)
            VideoYT(ID: "SkjIe2PWuDc")
            Text("İbrahim Suresi")
              .font(.system(size: 25))
              .fontWeight(.bold)
              .padding(.trailing, 150)
            VideoYT(ID: "1pLcAetMETg")
            Text("Ankebut Suresi")
              .font(.system(size: 25))
              .fontWeight(.bold)
              .padding(.trailing, 150)
            VideoYT(ID: "P9CPGQBzqsM")
            Text("Müddessir Suresi")
              .font(.system(size: 25))
              .fontWeight(.bold)
              .padding(.trailing, 150)
            VideoYT(ID: "Skqqhe5fvZQ")
              
        }
        }

        .navigationTitle("Sacidun")
      }
    }
}
struct HomeYT_Previews: PreviewProvider {
    static var previews: some View {
        HomeYT()
    }
}
