//
//  Reciter_1.swift
//  Sacidun
//
//  Created by ayhan on 22.03.2022.
//

import SwiftUI

struct Reciter_1: View {
    let model: Reciter1
    
  @State private var showPlayer = false
  var body: some View {
        List {
          Section() {
          profile
          }
          Surah

        .listStyle(.insetGrouped)
     }
  }
  var profile: some View {
        VStack(spacing: 8) {
            //model.image
        Image(model.image)
          .resizable()
          .frame(width: 90, height: 90)
          .cornerRadius(100)
          .symbolVariant(.circle.fill )
          .font(.system(size: 32))
          .symbolRenderingMode(.palette)
          .foregroundStyle(.blue, .blue.opacity(0.3))
          .padding()
          .background(Circle() .fill(.ultraThinMaterial))
           // model.Name
          Text(model.Name)
              .font(.title.weight(.semibold))
              
        }
        .frame(maxWidth: .infinity)
        .padding()
      }
  var Surah: some View{
        ForEach(model.list) { ses in
          HStack(spacing: 12){
              NavigationLink(destination: AudioPlayerr(bilgi: ses)){
                  Button {
                      showPlayer = true
                  } label: {
                    HStack(spacing: 12){
                       // ses.image
                    Image(ses.image)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 55, height: 55)
                      .clipShape(RoundedRectangle(cornerRadius: 100, style: .continuous))
              }
                  }
                
                  VStack(alignment: .leading, spacing: 8){
                      //ses.SurahName
                    Text(ses.SurahName)
                      .fontWeight(.semibold)
                     
                    Label{
                      //  model.Name
                      Text(model.Name)
                        
                    }icon: {
                      Image(systemName: "beats.headphones")
                        .foregroundColor(.red)
                    }
                    .foregroundColor(.gray)
                    .font(.caption)
                  }
                  .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
         }
       }
    }
struct Reciter_1_Previews: PreviewProvider {
    static var previews: some View {
        Reciter_1(model: Reciter1(Name: "", image: "", list: [liste(SurahName: "", fileName: "", image: "")]))
    }
}
