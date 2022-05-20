//
//  ContentView.swift
//  MainCare
//
//  Created by Anis on 20/05/2022.
//

import SwiftUI



struct LoginView: View {

    @Environment(\.openURL) var openURL

    @State var nextScreen: Bool = false
    @State var showErrorEmail: Bool = false
    @State var showErrorPass: Bool = false
    @State var email: String = "anis@email.com"
    @State var pass: String = "pass"

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "arrow.up.heart")
                    .resizable()
                    .padding()
                    .frame(width: 150, height: 150)
                Text("Pour accéder à votre application veuillez vous connecter.")
                    .font(.system(size: 20))
                FormTextfield(isSecure: false, placeholder: "Votre email", text: $email, showError: $showErrorEmail, errorMessage: "Veuillez saisir une adresse email valide")
                FormTextfield(isSecure: true, placeholder: "Votre mot de passe", text: $pass, showError: $showErrorPass, errorMessage: "Veuillez saisir un mot de passe")
                NavigationLink(destination: ListView(userName: email.firstPart),isActive: $nextScreen) {
                    Button {
                        showErrorEmail = email.isValidEmail ? false : true
                        showErrorPass = pass.isEmpty ? true : false
                        nextScreen = email.isValidEmail && !pass.isEmpty ? true : false
                    } label: {
                        Text("Me connecter")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color.red))

                    }
                }
                .buttonStyle(.plain)
                Spacer()
                Text("Besoin d'aide pour vous connecter ?")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit curabitur vitae odio es sit amet.")
                    .font(.system(size: 15))

                Button {
                    openURL(URL(string: "https://www.google.fr")!)
                } label: {
                    Text("En savoir plus")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8)
                            .fill(Color.red))
                }.buttonStyle(.plain)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
