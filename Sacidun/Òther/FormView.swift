//
//  FormView.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import SwiftUI

struct FormView: View {
  @State var isDark = false
    var body: some View {
        NavigationView {
            List {
                profile
                links
            }
           .navigationTitle("Sacidun")
           .listStyle(.plain)
        }
    }
    var profile: some View {
        VStack (spacing: 8){
            Image("LogoS")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
                .cornerRadius(100)
                .padding(.top, -0)
            
            HStack{
            Text("Sacidun")
                .font(.title.weight(.semibold))
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(.blue)
             }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    var links: some View{
        Section {
                Link(destination: URL(string: "https://www.instagram.com/sacidun.comm/")! ) {
                    HStack {
                        Text("Instagram")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
            Link(destination: URL(string: "https://www.youtube.com/c/Sacidun07/featured")! ) {
                HStack {
                    Text("YouTube")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            Link(destination: URL(string: "https://twitter.com/saciduncomm")! ) {
                HStack {
                    Text("Twitter")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            Link(destination: URL(string: "https://t.me/sacidun?utm_medium=social&utm_source=heylink.me")! ) {
                HStack {
                    Text("Telegram")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            Link(destination: URL(string: "https://www.facebook.com/sacidun.comm?utm_medium=social&utm_source=heylink.me")! ) {
                HStack {
                   Text("Facebook")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            Link(destination: URL(string: "https://www.tiktok.com/@sacidun.comm")! ) {
                HStack {
                    Text("TikTok")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
        }
        .accentColor(.primary)
    }

}
struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
            .preferredColorScheme(.light)

    }
}
