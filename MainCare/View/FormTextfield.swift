//
//  FormTextfield.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import SwiftUI

struct FormTextfield: View {

    var isSecure: Bool
    var placeholder: String
    @Binding var text: String
    @Binding var showError: Bool
    var errorMessage: String

    var body: some View {
        if isSecure {
            SecureField(placeholder, text: $text)
                .frame(height: 30)
        } else {
            TextField(placeholder, text: $text)
                .frame(height: 30)
        }
        if showError == true {
            Text(errorMessage)
                .foregroundColor(.red)
                .frame(alignment: .leading)
        }
    }
}
