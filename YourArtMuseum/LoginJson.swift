import UIKit
import Foundation

struct User: Codable {
    var login: String
    var password: String

//    func save(_ users: User) {
//        // Путь и имя файла
//        let jsonUrl = try! FileManager.default.url(for: . documentDirectory, in: .allDomainsMask,
//                                                   appropriateFor: nil, create: true)
//            .appending (path: "nameFile.json")
//
//        let jsonEncoder = JSONEncoder()
//        jsonEncoder.outputFormatting = .prettyPrinted
//        jsonEncoder.dateEncodingStrategy = .iso8601
//
//        guard let result = try? jsonEncoder.encode(users) else {
//            print("Error")
//            return
//        }
//
//        try? result.write(to: jsonUrl)
//    }
}

