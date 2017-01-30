//
//  MainViewController.swift
//  NaMira
//
//  Created by Rafael Veronezi on 23/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 View Controller responsável por gerenciar a tela principal do Jogo.
 */
class MainViewController: UIViewController {

    //
    // MARK: - Propriedades
    
    /// Propriedade que referência o Modelo do jogo, representado pela classe **GameEngine**.
    var engine = GameEngine()
    
    
    //
    // MARK: - Outlet
    
    /// Outlet para o Slider onde o usuário vai tentar encontrar o valor de alvo
    @IBOutlet weak var gameSlider: UISlider!
    
    /// Label de pontuação do Jogador
    @IBOutlet weak var scoreLabel: UILabel!
    
    /// Label de contador da partida do Jogador
    @IBOutlet weak var roundLabel: UILabel!
    
    /// Label que apresenta o número alvo da partida atual
    @IBOutlet weak var targetLabel: UILabel!

    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configura o Slider com as imagens personalizadas
        gameSlider.setThumbImage(UIImage(named: "targetThumb"), for: .normal)
        gameSlider.setMinimumTrackImage(UIImage(named: "minTrack")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 5, left: 11, bottom: 9, right: 11)), for: .normal)
        gameSlider.setMaximumTrackImage(UIImage(named: "maxTrack")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 12, bottom: 9, right: 12)), for: .normal)
        
        // Configura os Callbacks e Inicia a primeira rodada do jogo.
        engine.targetValueChangedCallback = { self.targetLabel.text = "\($0)" }
        engine.scoreChangedCallback = { self.scoreLabel.text = "Pontuação: \($0)" }
        engine.roundChangedCallback = { self.roundLabel.text = "Rodada: \($0)" }
        engine.startNewRound()
    }
    
    
    //
    // MARK: - Action Methods
    
    /// Action Method acionado sempre que o usuário muda o indicador do Slider de posição.
    @IBAction func sliderChanged(_ sender: UISlider) {
        engine.currentValue = lround(Double(sender.value))
    }
    
    /// Action Method acionado quando o usuário toca no botão "Acertar".
    @IBAction func hitTouched(_ sender: UIButton) {
        // Envia a instrução de tiro para o Modelo do jogo
        let score = engine.hit()
        
        // Exibe o alerta
        let alert = UIAlertController(title: "Na Mira!", message: "Você acertou no número \(lround(Double(gameSlider.value))) e fez \(score) pontos!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
        // Volta a Mira para o centro do Slider
        self.gameSlider.value = 50
    }
    
    /// Action Method acionado quando o usuário toca no botão para iniciar uma nova rodada.
    @IBAction func startOverTouched(_ sender: UIButton) {
        engine.startOver()
    }
    
    
}
