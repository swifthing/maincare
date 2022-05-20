//
//  ListView.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import SwiftUI

struct ListView: View {

    var userName: String

    var viewModel: ListViewModel = ListViewModel()

    var body: some View {
        List (viewModel.list, id:\.id) { list in
            HStack {
                Image(systemName: "person")
                    .frame(width: 50, height: 50)

                VStack {
                    Text(list.titre)
                    Text(list.type)
                }
                Spacer()
                VStack {
                    Text(list.messages.first?.date ?? "")
                    Text("messages")
                }
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button { } label: {
                    Image(systemName: list.favorite ? "star" : "star.fill")
                }
                .tint(.gray)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                Button { } label: {
                    Image(systemName: "trash")
                }
                .tint(.red)
            }
            .navigationTitle(userName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button { } label: {
                        Image(systemName: "bell")
                    }
                    Button { } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }
        }
    }
}
