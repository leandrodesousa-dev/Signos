//
//  BancoFake.swift
//  Signos
//
//  Created by Leandro de Sousa Silva on 10/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import Foundation
import UIKit

class Signos {
    fileprivate var name: String
    fileprivate var meaning: String
    
    init(name: String, meaning: String) {
        self.name = name
        self.meaning = meaning
    }
}

func dateContent() -> [Signos]{
    
    let contentCell: [Signos] = [
        Signos.init(name: "Áries", meaning: "Quem tem sol em Áries costuma viver no agora; além de possuir um grande prazer em existir, ação e decisão também podem ser algumas de suas marcas. A liderança é uma característica forte no signo, que pode ser usada para o empreendedorismo."),
        Signos.init(name: "Touro", meaning: "Quem tem sol em Touro costuma não abrir mão do que traz conforto e bem-estar, mas pode ter a possessividade em evidência. O signo preza pela beleza física e pela gula. A satisfação de Touro vem do contato com todos os cinco sentidos."),
        Signos.init(name: "Gêmeos", meaning: "Quem tem sol em Gêmeos costuma apreciar novas ideias, novos lugares e novas pessoas. Gêmeos tem carisma de sobra e tende a fazer amigos com muita facilidade. A superficialidade e a inconsequência também podem ser algumas das marcas do signo."),
        Signos.init(name: "Câncer", meaning: "Quem tem sol em Câncer costuma buscar o que lhe traz segurança. O signo é maternal e emotivo e tem uma proximidade com o apego ao passado. Câncer costuma ter a intuição acentuada, sentir as coisas no ar e captar tudo logo no primeiro olhar."),
        Signos.init(name: "Leão", meaning: "Quem tem sol em Leão costuma amar plateias e aplausos. O signo tem a coragem e o humor como marcas registradas, mas também o orgulho e o autoritarismo. Leão geralmente valoriza as oportunidades e aproveita cada momento, sabe amar e ter generosidade."),
        Signos.init(name: "Virgem", meaning: "Quem tem sol em Virgem costuma buscar constantemente a perfeição, tudo sempre poderia estar um pouco melhor. Signo observador, que costuma identificar o detalhe que ninguém mais percebe. Virgem tem praticidade e organização, mas também pode ser frio e cético.")]
    
    
    return contentCell
}

func getContent(ofSignos signos: Signos,whatKey key: String) -> String{
    var nameText: String
    var meagingText: String
    
    nameText = signos.name
    meagingText = signos.meaning
    
    if key == "name"{
    return nameText
    } else if key == "meagin"{
        return meagingText
    } else {
        return ""
    }
}

