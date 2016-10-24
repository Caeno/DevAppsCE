//
//  GameEngine.swift
//  NaMira
//
//  Created by Rafael Veronezi on 23/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 
 */
class GameEngine {

    //
    // MARK: - Propriedades
    
    /// Pontuação total do Jogador.
    private(set) var score = 0 { didSet { scoreChangedCallback?(score) } }
    
    /// Contador de Partidas.
    private(set) var currentRound = 0 { didSet { roundChangedCallback?(currentRound) } }
    
    /// O valor que foi selecionado pelo Jogador.
    var currentValue: Int = 0
    
    /// O valor que o jogador deve tentar atingir.
    private(set) var targetValue: Int = 0 { didSet { targetValueChangedCallback?(targetValue) } }

    /// Um Callback que é acionado sempre que o valor da propriedade **targetValue** é modificado.
    var targetValueChangedCallback: ((Int) -> ())?
    
    /// Um Callback que é acionado sempre que o valor da propriedade **score** é modificado.
    var scoreChangedCallback: ((Int) -> ())?
    
    /// Um Callback que é acionado sempre que o valor da propriedade **currentRound** é modificado.
    var roundChangedCallback: ((Int) -> ())?
    
    
    //
    // MARK: - Public Methods
    
    /// Inicia uma nova partida do jogo nessa engine.
    func startNewRound() {
        currentValue = 50
        currentRound += 1
        targetValue = 1 + Int(arc4random() % 100)
    }
    
    /// Re-inicia o jogo zerando o placar e o contador de partidas.
    func startOver() {
        startNewRound()
        currentRound = 1
        score = 0
    }
    
    /**
     Tenta acertar o alvo com o valor atual.
     
     - returns: A pontuação que o jogador atingiu com o tiro.
     */
    func hit() -> Int {
        let roundScore = calculateScore()
        score += roundScore
        startNewRound()
        
        return roundScore
    }
    
    //
    // MARK: - Private Methods
    
    func calculateScore() -> Int {
        let diff = abs(targetValue - currentValue)
        return (100 - diff)
    }
    
}
