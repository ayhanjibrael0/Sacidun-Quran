//
//  AudioPlayerr.swift
//  Sacidun
//
//  Created by Ayhan on 17.06.2022.
//


import SwiftUI
import AVKit

class SoundManager : ObservableObject {
    var audioPlayer: AVPlayer?

    func playSound(sound: String){
        if let url = URL(string: sound) {
            self.audioPlayer = AVPlayer(url: url)
        }
    }
}
struct AudioPlayerr: View {
    
    let bilgi: liste
    @State var song1 = false
    @StateObject private var soundManager = SoundManager()
    
    
    var body: some View {
        NavigationView{
        VStack {
            VStack{
                  //bilgi.image
                Image(bilgi.image)
                    .resizable()
                    .cornerRadius(40)
                    .frame(width: 200, height: 200)
              }
            .padding(.top, 40)
            VStack{
                //bilgi.SurahName
              Text(bilgi.SurahName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            }

            .padding(.bottom, 40)
            
            HStack{
                Image(systemName:"backward.fill")
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
                Image(systemName:"gobackward.15")
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
                Image(systemName: song1 ? "pause.circle.fill": "play.circle.fill")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                Image(systemName:"goforward.15")
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
                Image(systemName:"forward.fill")
                    .font(.system(size: 25))
                    .padding(.trailing)
                    .foregroundColor(.gray)
                                 
                                
            }
            .padding(.bottom, 190)
            .onTapGesture {
            soundManager.playSound(sound: bilgi.fileName)
                    song1.toggle()
                     if song1{
                        soundManager.audioPlayer?.play()
                    } else {
                        soundManager.audioPlayer?.pause()
                    }
                }
        }
        .background(
              Image(bilgi.image)
                    .resizable()
                    .blur(radius: 200)
                    .frame(width: 900, height: 1000).ignoresSafeArea())
        }
        .preferredColorScheme(.dark)
            }
    
        }

struct AudioPlayerr_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerr(bilgi: liste(SurahName: "", fileName: "", image: ""))
    }
}
