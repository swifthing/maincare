//
//  DateHelper.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import Foundation

struct DateHelper {
    static func convert (from source: String, to destination: String) {
        let date = Date()
        let format = date.getFormattedDate(format: "yyyy-MM-dd HH:mm:ss")
        print(format)
    }
}

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
