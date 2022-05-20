//
//  Extension.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }

    var firstPart: String {
        return components(separatedBy: "@")[0]
    }
}
