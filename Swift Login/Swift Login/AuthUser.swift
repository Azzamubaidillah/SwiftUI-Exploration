//
//  AuthUser.swift
//  Swift Login
//
//  Created by azzam on 26/11/22.
//

import Foundation

class AuthUser: ObservableObject {
    @Published var isLoggedIn : Bool = false
    @Published var isCorrect : Bool = true
}
