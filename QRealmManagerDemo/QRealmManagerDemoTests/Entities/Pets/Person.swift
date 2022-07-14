//
//  Person.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

class Person: Object {
    @Persisted(primaryKey: true) var id = 0
    @Persisted var name = ""
    // To-many relationship - a person can have many dogs
    @Persisted var dogs: List<Dog>
    // Inverse relationship - a person can be a member of many clubs
    @Persisted(originProperty: "members") var clubs: LinkingObjects<DogClub>
}
