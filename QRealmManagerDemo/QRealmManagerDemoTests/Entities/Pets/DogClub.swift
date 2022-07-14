//
//  DogClub.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

class DogClub: Object {
    @Persisted var name = ""
    @Persisted var members: List<Person>
}
