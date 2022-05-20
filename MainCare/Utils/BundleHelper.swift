//
//  BundleHelper.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import Foundation

struct BundleHelper<T: Codable> {
    static func readFile (_ name: String, _ type: String) -> T? {
        guard let path = Bundle.main.path(forResource: name, ofType: type) else { return nil }
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONDecoder().decode(T.self, from: data)
                return jsonResult
            } catch {
                return nil
            }
    }
}
