//
//  MCardView.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//
import SwiftUI

struct MCardView: View {
    var title: String
    var image: String
    var body: some View {
        ZStack{
          VStack{
            Image(image)
                .resizable()
                .frame(width: 270, height: 300, alignment: .top)
                .blur(radius: 25)
                .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
          }
            VStack(alignment: .leading){
                Image(image)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(100)
                    .padding(.leading)
                    .padding(.bottom, 30)
                
            }
            VStack{
                Text(title)
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding(.leading, 10)
                    .padding(.top, 150)
            }
        }
    }
}

struct MCardView_Previews: PreviewProvider {
    static var previews: some View {
        MCardView(title: "", image: "")
            
    }
}
