//
//  UserProfile.swift
//  Restaurant
//
//  Created by William Bodily on 4/2/25.
//

import SwiftUI

struct UserProfile: View {
    @Environment(\.presentationMode) var presentation
    
    @State private var firstName = UserDefaults.standard.string(forKey: kFirstName) ?? ""
    @State private var lastName = UserDefaults.standard.string(forKey: kLastName) ?? ""
    @State private var email = UserDefaults.standard.string(forKey: kEmail) ?? ""
    @State private var phone = UserDefaults.standard.string(forKey: kPhone) ?? ""
    @State private var emailOrderStatus = UserDefaults.standard.bool(forKey: kEmailOrderStatus)
    @State private var emailPasswordChanges = UserDefaults.standard.bool(forKey: kEmailPasswordChanges)
    @State private var emailSpecialOffers = UserDefaults.standard.bool(forKey: kEmailSpecialOffers)
    @State private var emailNewsletter = UserDefaults.standard.bool(forKey: kEmailNewsletter)
    @State private var isLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
    
    @State private var showFormInvalidMessage = false
    @State private var errorMessage = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Personal Information")
                    .font(Font.cfLLCardTitle)
                HStack(spacing: 28) {
                    VStack {
                        Text("Avatar")
                            .font(Font.cfLLParagraphRegularSmall)
                        Image("Profile")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    Button() {
                        // TODO: Implement avatar photo change functionality
                    } label: {
                        Text("Change")
                            .frame(maxWidth: .infinity, maxHeight: 18)
                            .foregroundColor(Color(hex: Color.scLLWhite))
                            .padding()
                    }
                        .buttonStyle(PlainButtonStyle())
                        .buttonStyle(.bordered)
                        .background(Color(hex: Color.pcLLGreen))
                        .cornerRadius(8)
                        .controlSize(.large)
                    Button() {
                        // TODO: Implement avatar photo removal functionality
                    } label: {
                        Text("Remove")
                            .frame(maxWidth: .infinity, maxHeight: 18)
                            .foregroundColor(Color(hex: Color.scLLBlack))
                            .padding()
                    }
                        .buttonStyle(PlainButtonStyle())
                        .buttonStyle(.bordered)
                        .background(Color(hex: Color.scLLWhite))
                        .cornerRadius(8)
                        .controlSize(.large)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(hex: Color.pcLLGreen), lineWidth: 1)
                        )
                }
            }
            VStack(alignment: .leading) {
                Text("First Name *")
                    .font(Font.cfLLParagraphRegularSmall)
                    .font(.system(size: 10))
                TextField("First Name", text: $firstName)
                    .font(Font.cfLLParagraphRegular)
                Text("Last Name *")
                    .font(Font.cfLLParagraphRegularSmall)
                    .font(.system(size: 10))
                TextField("Last Name", text: $lastName)
                    .font(Font.cfLLParagraphRegular)
                Text("Email *")
                    .font(Font.cfLLParagraphRegularSmall)
                    .font(.system(size: 10))
                TextField("Email", text: $email)
                    .font(Font.cfLLParagraphRegular)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                Text("Phone Number")
                    .font(Font.cfLLParagraphRegularSmall)
                    .font(.system(size: 10))
                TextField("(111) 111-1111", text: $phone)
                    .font(Font.cfLLParagraphRegular)
                    .keyboardType(.numberPad)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .disableAutocorrection(true)
            
            VStack {
                Toggle("Order Statuses", isOn: $emailOrderStatus)
                    .font(Font.cfLLParagraphRegular)
                Toggle("Password Changes", isOn: $emailPasswordChanges)
                    .font(Font.cfLLParagraphRegular)
                Toggle("Special Offers", isOn: $emailSpecialOffers)
                    .font(Font.cfLLParagraphRegular)
                Toggle("Newsletter", isOn: $emailNewsletter)
                    .font(Font.cfLLParagraphRegular)
            }
            
            VStack(spacing: 10) {
                Button {
                    UserDefaults.standard.set("", forKey: kFirstName)
                    UserDefaults.standard.set("", forKey: kLastName)
                    UserDefaults.standard.set("", forKey: kEmail)
                    UserDefaults.standard.set("", forKey: kPhone)
                    UserDefaults.standard.set(true, forKey: kEmailOrderStatus)
                    UserDefaults.standard.set(true, forKey: kEmailPasswordChanges)
                    UserDefaults.standard.set(true, forKey: kEmailSpecialOffers)
                    UserDefaults.standard.set(true, forKey: kEmailNewsletter)
                    isLoggedIn = false
                    UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                    self.presentation.wrappedValue.dismiss()
                } label: {
                    Text("Logout")
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
                HStack(spacing: 20) {
                    Button() {
                        firstName = UserDefaults.standard.string(forKey: kFirstName) ?? ""
                        lastName = UserDefaults.standard.string(forKey: kLastName) ?? ""
                        email = UserDefaults.standard.string(forKey: kEmail) ?? ""
                        phone = UserDefaults.standard.string(forKey: kPhone) ?? ""
                        emailOrderStatus = UserDefaults.standard.bool(forKey: kEmailOrderStatus)
                        emailPasswordChanges = UserDefaults.standard.bool(forKey: kEmailPasswordChanges)
                        emailSpecialOffers = UserDefaults.standard.bool(forKey: kEmailSpecialOffers)
                        emailNewsletter = UserDefaults.standard.bool(forKey: kEmailNewsletter)
                    } label: {
                        Text("Discard Changes")
                            .frame(maxWidth: .infinity, maxHeight: 18)
                            .foregroundColor(Color(hex: Color.scLLBlack))
                            .padding()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .buttonStyle(.bordered)
                    .background(Color(hex: Color.scLLWhite))
                    .cornerRadius(8)
                    .controlSize(.large)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(hex: Color.pcLLGreen), lineWidth: 1)
                    )
                    
                    Button() {
                        if (!firstName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty && !lastName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty && !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
                            validateEmail(email)) {
                            UserDefaults.standard.set(firstName, forKey: kFirstName)
                            UserDefaults.standard.set(lastName, forKey: kLastName)
                            UserDefaults.standard.set(email, forKey: kEmail)
                            UserDefaults.standard.set(phone, forKey: kPhone)
                            UserDefaults.standard.set(emailOrderStatus, forKey: kEmailOrderStatus)
                            UserDefaults.standard.set(emailPasswordChanges, forKey: kEmailPasswordChanges)
                            UserDefaults.standard.set(emailSpecialOffers, forKey: kEmailSpecialOffers)
                            UserDefaults.standard.set(emailNewsletter, forKey: kEmailNewsletter)
                        } else {
                            validateForm()
                        }
                    } label: {
                        Text("Save Changes")
                            .frame(maxWidth: .infinity, maxHeight: 18)
                            .foregroundColor(Color(hex: Color.scLLWhite))
                            .padding()
                    }
                    .alert("ERROR", isPresented: $showFormInvalidMessage, actions: {
                        Button("OK", role: .cancel) { }
                    }, message: {
                        Text(self.errorMessage)
                    })
                    .buttonStyle(PlainButtonStyle())
                    .buttonStyle(.bordered)
                    .background(Color(hex: Color.pcLLGreen))
                    .cornerRadius(8)
                    .controlSize(.large)
                }
            }
            Spacer()
        }
        .padding()
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
            
            self.errorMessage = "Found these errors in the form:\n\n \(invalidFirstNameMessage)\(invalidLsstNameMessage)\(invalidEmailMessage)"
            
            showFormInvalidMessage.toggle()
            return
        }
        
        // dismiss this view
        self.presentation.wrappedValue.dismiss()
    }
}

#Preview {
    UserProfile()
}
