//
//  CoffeeDrink.swift
//  RealmRepository
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

class CoffeeDrink: Object {
    @Persisted var name = ""
    @Persisted var hotOrCold: String?
    @Persisted var rating = 0
}
