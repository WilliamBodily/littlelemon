//
//  Onboarding.swift
//  LittleLemon
//
//  Created by William Bodily on 3/31/25.
//

import SwiftUI

let kFirstName = "kFirstName"
let kLastName = "kLastName"
let kEmail = "kEmail"
let kPhone = "kPhoneNumber"
let kEmailOrderStatus = "kEmailOrderStatus"
let kEmailPasswordChanges = "kEmailPasswordChanges"
let kEmailSpecialOffers = "kEmailSpecialOffers"
let kEmailNewsletter = "kEmailNewsletter"
let kIsLoggedIn = "kIsLoggedIn"

struct Onboarding: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var emailOrderStatus = true
    @State private var emailPasswordChanges = true
    @State private var emailSpecialOffers = true
    @State private var emailNewsletter = true
    @State var isLoggedIn: Bool = false
    
    @State var showFormInvalidMessage = false
    @State var errorMessage = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Header(isLoggedIn: $isLoggedIn)
            NavigationView {
                VStack(alignment: .leading) {
                    Hero(isLoggedIn: $isLoggedIn)
                    VStack(alignment: .leading, spacing: 4) {
                        NavigationLink(destination: Home(), isActive: $isLoggedIn) { EmptyView() }
                        HStack(alignment: .top) {
                            VStack {
                                Image(systemName: "person.fill")
                                    .foregroundColor(Color(hex: Color.scLLGray))
                                    .frame(width: 25, height: 25, alignment: .top)
                                    .padding(.top, 4)
                                    .padding(.leading, 1)
                            }
                            VStack {
                                TextField("First Name *", text: $firstName)
                                    .textFieldStyle(.plain)
                                Divider()
                                TextField("Last Name *", text: $lastName)
                                    .textFieldStyle(.plain)
                                    .padding(.top, 4)
                                Divider()
                            }
                        }
                        .padding(.bottom, 1)
                        HStack {
                            VStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(Color(hex: Color.scLLGray))
                            }
                            VStack {
                                TextField("Email *", text: $email)
                                    .keyboardType(.emailAddress)
                                    .textInputAutocapitalization(.never)
                                    .textFieldStyle(.plain)
                                    .padding(.top, 8)
                                Divider()
                            }
                        }
                        Button {
                            if (!firstName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty && !lastName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty && !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
                                validateEmail(email)) {
                                isLoggedIn = true
                                UserDefaults.standard.set(firstName, forKey: kFirstName)
                                UserDefaults.standard.set(lastName, forKey: kLastName)
                                UserDefaults.standard.set(email, forKey: kEmail)
                                UserDefaults.standard.set(phone, forKey: kPhone)
                                UserDefaults.standard.set(emailOrderStatus, forKey: kEmailOrderStatus)
                                UserDefaults.standard.set(emailPasswordChanges, forKey: kEmailPasswordChanges)
                                UserDefaults.standard.set(emailSpecialOffers, forKey: kEmailSpecialOffers)
                                UserDefaults.standard.set(emailNewsletter, forKey: kEmailNewsletter)
                                UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                            } else {
                                validateForm()
                            }
                        } label: {
                            Text("Register")
                                .frame(maxWidth: .infinity)
                                .font(Font.cfLLCardTitle)
                                .foregroundColor(Color(hex: Color.scLLBlack))
                        }
                        .buttonStyle(.bordered)
                        .background(Color(hex: Color.pcLLYellow))
                        .cornerRadius(8)
                        .controlSize(.large)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(hex: Color.pcLLGreen), lineWidth: 1)
                        )
                        .alert("ERROR", isPresented: $showFormInvalidMessage, actions: {
                            Button("OK", role: .cancel) { }
                        }, message: {
                            Text(self.errorMessage)
                        })
                        .disableAutocorrection(true)
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .padding(.top, 16)
                        Spacer()
                    }
                    .disableAutocorrection(true)
                    .ignoresSafeArea(.keyboard)
                    .padding()
                } .onAppear() {
                    if (UserDefaults.standard.bool(forKey: kIsLoggedIn)) {
                        isLoggedIn = true
                    } else {
                        firstName = ""
                        lastName = ""
                        email = ""
                    }
                }
            }
            //.frame(alignment: .top)
        }
    }
    
    private func validateForm() {
        
        let firstNameIsValid = firstName.isEmpty
        let lastNameIsValid = lastName.isEmpty
        let emailIsValid = email.isEmpty
        
        guard !firstNameIsValid && !lastNameIsValid && !emailIsValid
        else {
            var invalidFirstNameMessage = ""
            if (firstName.isEmpty) {
                invalidFirstNameMessage = "First Name cannot be blank.\n\n"
            }
            
            var invalidLsstNameMessage = ""
            if (lastName.isEmpty) {
                invalidLsstNameMessage = "Last Name cannot be blank.\n\n"
            }
            
            var invalidEmailMessage = ""
            if (email.isEmpty) {
                invalidEmailMessage = "Email cannot be blank.\n\n"
            }
            
//            var invalidPhoneMessage = ""
//            if customerEmail.isEmpty {
//                invalidPhoneMessage = "The phone number cannot be blank.\n\n"
//            }
            
//            var invalidEmailMessage = ""
//            if !customerEmail.isEmpty || !isValid(email: customerEmail) {
//                invalidEmailMessage = "The e-mail is invalid and cannot be blank."
//            }
            
            self.errorMessage = "Found these errors in the form:\n\n \(invalidFirstNameMessage)\(invalidLsstNameMessage)\(invalidEmailMessage)"
            
            showFormInvalidMessage.toggle()
            return
        }
        
        // dismiss this view
        self.presentationMode.wrappedValue.dismiss()
    }

}

#Preview {
    Onboarding()
}
