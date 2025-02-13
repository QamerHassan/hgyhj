import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils.dart';

class GameScreen extends StatefulWidget {
  final String player1;
  final String player2;

  GameScreen({required this.player1, required this.player2});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late List<List<String>> board;
  late String currentPlayer;
  late bool gameOver;
  late String winner;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  void _resetGame() {
    setState(() {
      board = List.generate(3, (_) => List.generate(3, (_) => ""));
      currentPlayer = "X";
      gameOver = false;
      winner = "";
    });
  }

  void _makeMove(int row, int col) {
    if (board[row][col] != "" || gameOver) return;

    setState(() {
      board[row][col] = currentPlayer;

      if (Utils.checkWinner(board, currentPlayer)) {
        winner = currentPlayer == "X" ? widget.player1 : widget.player2;
        gameOver = true;
      } else if (Utils.isBoardFull(board)) {
        winner = "It's a tie!";
        gameOver = true;
      } else {
        currentPlayer = currentPlayer == "X" ? "O" : "X";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                gameOver
                    ? "Winner: $winner"
                    : "Turn: ${currentPlayer == 'X' ? widget.player1 : widget.player2}",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              _buildBoard(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _resetGame,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text("Restart Game",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBoard() {
    return Column(
      children: List.generate(3, (row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (col) {
            return GestureDetector(
              onTap: () => _makeMove(row, col),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  board[row][col],
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
