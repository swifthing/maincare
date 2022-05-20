//
//  ListViewModel.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import Foundation

class ListViewModel {
    var list : [Correspondance]

    init () {
        guard let json = BundleHelper<CorrespondancesListModel>.readFile("data", "json")
        else {
            list = []
            return
        }
        
        list = json.correspondances
    }
}
