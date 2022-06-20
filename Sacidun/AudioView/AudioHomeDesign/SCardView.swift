//
//  SCardView.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI

struct SCardView: View {
    var title: String
    var image: String
    var body: some View {
        VStack{
            ZStack{
                Image(image)
                   .resizable()
                   .frame(width: 88, height: 88)
                   .cornerRadius(100)
                Text(title)
                   .font(.system(size: 15))
                   .fontWeight(.light)
                   .padding(.top, 130)
                   .foregroundColor((Color("BG")))
           }
        }
   }
}
struct SCardView_Previews: PreviewProvider {
    static var previews: some View {
        SCardView(title: "", image: "")
    }
}
