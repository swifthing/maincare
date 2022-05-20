//
//  CorrespondancesListModel.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import Foundation

struct CorrespondancesListModel: Codable {
    let correspondances: [Correspondance]
}

struct Correspondance: Codable {
    let id: Int
    let titre, type: String
    let favorite: Bool
    let recipients: [Recipient]
    let messages: [Message]
}

struct Message: Codable {
    let senderID: Int
    let date, text: String
    let attachments: [Attachment]

    enum CodingKeys: String, CodingKey {
        case senderID = "sender_id"
        case date, text, attachments
    }
}

struct Attachment: Codable {
    let url, miniature: String
    let mimetype: String
}

struct Recipient: Codable {
    let firstname, lastname, image: String
    let id: Int
}
