//
//  HomeView.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var datas = ReadData()
     var body: some View {
 VStack {
    
     //VStack {
         //Text("Öne Çıkanlar")
         //.fontWeight(.bold)
         // .padding(.horizontal, 20)
         //.font(.title)
         //.frame(maxWidth: .infinity, alignment: .leading)
         //}
     ScrollView(.horizontal, showsIndicators: false) {
    
   HStack(spacing: 15) {
       ForEach(datas.items) {  model in
           ForEach(model.Reciters1, id:\.?.Name) { Reciter in
               NavigationLink(destination: Reciter_1(model: Reciter!)) {
                   MCardView(title: Reciter!.Name, image: Reciter!.image)
               }
           }
       }
}
   .padding(.top, 20)
   .padding(.leading, 20)
 }
 VStack {
     Text("Okuyanlar")
         .fontWeight(.bold)
         .padding(.horizontal, 20)
         .padding(.top, 20)
         .font(.title)
         .frame(maxWidth: .infinity, alignment: .leading)
 }
   ScrollView(.horizontal,showsIndicators: false) {
   HStack(spacing: 20) {
       ForEach(datas.items) {  model in
           ForEach(model.Reciters2, id:\.?.Name) { Reciter in
               NavigationLink(destination: Reciter_2(model: Reciter!)) {
                   SCardView(title: Reciter!.Name, image: Reciter!.image)
               }
           }
       }
   }
   .padding(.leading,20)
                 }
               Divider()
                 ScrollView(.horizontal,showsIndicators: false) {
                     HStack(spacing: 15) {
                         ForEach(datas.items) {  model in
                             ForEach(model.Reciters3, id:\.?.Name) { Reciter in
                                 NavigationLink(destination: Reciter_3(model: Reciter!)) {
                                     SCardView(title: Reciter!.Name, image: Reciter!.image)
                                 }
                             }
                         }
                     }
                     .padding(.leading,20)
                 }
   
             }
     }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView()
    }
}
