//
//  Quran-Model.swift
//  Sacidun
//
//  Created by ayhan on 18.03.2022.
//

import Foundation
import SwiftUI

struct MyDataModel: Codable, Identifiable {
    let id = UUID()
    let Name: String
    let Reciters1: [Reciter1?]
    let Reciters2: [Reciter2?]
    let Reciters3: [Reciter3?]

    enum CodingKeys: String, CodingKey {
        case id
        case Name
        case Reciters1
        case Reciters2
        case Reciters3
    }

}

struct Reciter1: Codable {
    let id = UUID()
    let Name: String
    let image: String
    let list: [liste]
}


struct Reciter2: Codable {
    let id = UUID()
    let Name: String
    let image: String
    let list: [liste]
}
struct Reciter3: Codable {
    let id = UUID()
    let Name: String
    let image: String
    let list: [liste]
}

struct liste: Codable, Identifiable {
    let id = UUID()
    let SurahName: String
    let fileName: String
    let image: String
}


class ReadData: ObservableObject  {
    @Published var items = [MyDataModel]()

    init() {
        loadData()
    }

    func loadData()  {
        guard let url = Bundle.main.url(forResource: "audio", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        let data = try? Data(contentsOf: url)
        let items = try? JSONDecoder().decode([MyDataModel].self, from: data!)
        self.items = items!
    }

}
