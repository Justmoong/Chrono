//
//  UserProfile.swift
//  Chrono
//
//  Created by 윤무영 on 11/8/24.
//

import Foundation

class UserData: ObservableObject {
    @Published var name: String
    @Published var birthday: Date
    @Published var deathDate: Date
    @Published var age: Int
    @Published var deathAge: Int
    @Published var sex: String
    
    init(name: String = "", birthday: Date = Date(), deathDate: Date = Date(), age: Int = 0, deathAge: Int = 0, sex: String = "") {
        self.name = name
        self.birthday = birthday
        self.deathDate = deathDate
        self.age = age
        self.deathAge = deathAge
        self.sex = sex
    }
}

