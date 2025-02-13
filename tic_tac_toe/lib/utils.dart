class Utils {
  static bool checkWinner(List<List<String>> board, String player) {
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == player &&
          board[i][1] == player &&
          board[i][2] == player) return true;
      if (board[0][i] == player &&
          board[1][i] == player &&
          board[2][i] == player) return true;
    }
    if (board[0][0] == player && board[1][1] == player && board[2][2] == player)
      return true;
    if (board[0][2] == player && board[1][1] == player && board[2][0] == player)
      return true;
    return false;
  }

  static bool isBoardFull(List<List<String>> board) {
    return board.every((row) => row.every((cell) => cell.isNotEmpty));
  }
}
