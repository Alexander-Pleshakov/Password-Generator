//
//  User.swift
//  GeneratePassword
//
//  Created by Александр Плешаков on 14.11.2023.
//

import Foundation

public struct User {
    public var id: String?
    public var password: String?
    
    public mutating func generatePassword() {
        let russianLetters = ["Ё", "Й", "Ц", "У", "К", "Е", "Н", "Г", "Ш", "Щ", "З", "Х", "Ъ", "Ф", "Ы", "В", "А", "П", "Р", "О", "Л", "Д", "Ж", "Э", "Я", "Ч", "С", "М", "И", "Т", "Ь", "Б", "Ю"]
        let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        let symbols = ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*"]
        let n = Int.random(in: 0...10)

        let b1 = russianLetters[Int.random(in: 0..<33)]
        let b2 = russianLetters[Int.random(in: 0..<33)]
        let b3 = String((n * n) % 10)
        let b4 = numbers[Int.random(in: 0..<10)]
        let b5 = symbols[Int.random(in: 0..<10)]
        let b6 = russianLetters[Int.random(in: 0..<33)].lowercased()

        password = b1 + b2 + b3 + String(b4) + b5 + b6
    }
}
