//
//  Dog.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

class Dog: Object {
    @Persisted var name = ""
    @Persisted var age = 0
    @Persisted var color = ""
    @Persisted var currentCity = ""
    // To-one relationship
    @Persisted var favoriteToy: DogToy?
}
