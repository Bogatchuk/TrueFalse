//
//  AllQuestions.swift
//  TrueOrFalse
//
//  Created by Bogatchuk Roman on 4/26/19.
//  Copyright © 2019 Bogatchuk Roman. All rights reserved.
//

import Foundation

class AllQuestions {
    var allQuestions = [Question]()
    
    init() {
        allQuestions.append(Question(question: "... Шарль Перро, автор «Красной Шапочки», написал сказку «Любовь циркуля и линейки»?", answer: true))
        allQuestions.append(Question(question: "... Наполеон Бонапарт писал математические работы?", answer: true))
        allQuestions.append(Question(question: "... Л.Н.Толстой, автор « Войны и мира», был автором учебника математики?", answer: true))
        allQuestions.append(Question(question: "один из языков программирования называется Ада, в честь Ады Байрон, дочери известного английского поэта?", answer: true))
        allQuestions.append(Question(question: "... любой прямоугольный треугольник называется египетским?", answer: false))
        allQuestions.append(Question(question: "... великий русский поэт М.Ю.Лермонтов увлекался математикой и мог до поздней ночи решать какую – нибудь математическую задачу?", answer: true))
        allQuestions.append(Question(question: "... Пифагор принимал участие в кулачном бою на 58 Олимпиаде, которая проходила в 548 г. до н.э.?", answer: true))
        allQuestions.append(Question(question: "... есть книга, в которой содержатся 370 различных способов доказательства теоремы Пифагора?", answer: true))
        allQuestions.append(Question(question: "... английская королева. прочитав сказку Льюиса Керрола  «Алиса в стране Чудес», так увлеклась ею, что приказала доставить ей все книги этого сказочника?", answer: true))
        allQuestions.append(Question(question: "... испанский математик, решивший уравнение четвертой степени, был отправлен за это на костер?", answer: true))
        allQuestions.append(Question(question: "... теорему Фалеса называли «ослиный мост»?", answer: false))
        allQuestions.append(Question(question: "... братья Гримм, авторы сказки «Бременские музыканты», написали сказку «Удивительные приключения треугольника»?", answer: false))
        allQuestions.append(Question(question: "... в Африке в некоторых племенах за новорожденным ухаживают и кормят его грудью несколько женщин?", answer: true))
        allQuestions.append(Question(question: "... в Голландии и Дании родители полагают, что полноценный отдых важнее, чем развитие интеллекта. Считается, что ребенок вполне развит, если к двум годам он может самостоятельно катать игрушку-каталку?", answer: true))
        allQuestions.append(Question(question: "... в Корее не принято отмечать первый день рождения ребенка, так как это может привлечь злых духов, которые испортят ребенку всю жизнь?", answer: false))
        allQuestions.append(Question(question: "... y одного из народов Африки дети первые три-пять месяцев жизни проводят в сидячем положении — их устраивают в специальных отверстиях, проделанных в земле?", answer: true))
        allQuestions.append(Question(question: "... в Спарте воспитанием девочек не занимались вообще, считалось, что женой и матерью можно быть и без особых навыков?", answer: false))
        allQuestions.append(Question(question: "... в Древнем Китае мать отвечала и за воспитание у дочери «четырех добродетелей»: супружеской верности, честности, скромности и усердия?", answer: false))
        allQuestions.append(Question(question: "... в Англии не поощряется, чтобы взрослый делал замечания чужому ребенку. Если ребенок шалит или делает что-то нехорошее, то по английским правилам нужно сказать об этом родителям шалуна, а не одергивать малыша?", answer: true ))
        allQuestions.append(Question(question: "... на Руси отлучали от груди ребенка не постепенно, а в один день. И в этот же день было принято гадать о будущем малыша. Перед ребенком на полу раскладывали разные предметы: хлеб, веретено, деньги, ножик и смотрели, к чему потянется кроха?", answer: true))
       
    }
}
