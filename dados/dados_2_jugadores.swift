//dados con 2 jugadores
import Foundation
//control del dado
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
//nombre de jugadores
let namePlayer1 = "Leo"
let namePlayer2 = "Steban"
var checkout = true
//ciclo de juego
while checkout {
    let resultPlayer1Dice1 = rollDice()
    let resultPlayer1Dice2 = rollDice()
    let player1Total = resultPlayer1Dice1 + resultPlayer1Dice2
    
    let resultPlayer2Dice1 = rollDice()
    let resultPlayer2Dice2 = rollDice()
    let player2Total = resultPlayer2Dice1 + resultPlayer2Dice2
//resultados 
    print ("RESULTADOS:")
    print("\(namePlayer1): en el primer dado tienes \(resultPlayer1Dice1), y en el otro \(resultPlayer1Dice2). para un total: \(player1Total)")
    print("\(namePlayer2): en el primer dado tienes \(resultPlayer2Dice1), y en el otro \(resultPlayer2Dice2). para un total: \(player2Total)\n")
    
    if player1Total > player2Total {
        print("Muy bien \(namePlayer1) ganaste esta ronda\n")
    } else if player2Total > player1Total {
        print("Muy bien \(namePlayer2) ganaste esta ronda\n")
    } else {
        print("Es un empate, muy bien a los dos ganadores\n")
    }
//salida
print ("¿Desea volver a jugar? (escribe si en minuscila y sin signos adicionales para seguir jugando)")
print ("Cualquier otra entrada finaliza el programa")

if let input = readLine(), input.lowercased() != "si" {
 print ("Gracias por usar la aplicacion")
        checkout = false }

}
