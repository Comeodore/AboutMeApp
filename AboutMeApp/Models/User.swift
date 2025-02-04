//
//  User.swift
//  AboutMeApp
//
//  Created by Vladimir Maksymchuk on 04.02.2025.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "User",
            password: "123456",
            person: Person(
                name: "Vladimir",
                surname: "Maksymchuk",
                company: "Ajax",
                departament: "AQA",
                jobTitle: "Tech Lead",
                bio: """
                Владимир Максимчук — опытный IT-специалист, занимающий позицию Tech Lead в компании Ajax. Специализируясь в отделе Automated Quality Assurance (AQA), он отвечает за разработку и внедрение стратегий автоматизированного тестирования, обеспечивая высокое качество программных продуктов на всех этапах их жизненного цикла.
                Благодаря глубоким техническим знаниям и лидерским качествам, Владимир успешно управляет командой инженеров, совмещая роль наставника и архитектора сложных тестовых решений. Его экспертиза охватывает проектирование фреймворков, интеграцию инструментов CI/CD, а также оптимизацию процессов для минимизации рисков и ускорения вывода продуктов на рынок.
                """
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let departament: String
    let jobTitle: String
    let bio: String
}
