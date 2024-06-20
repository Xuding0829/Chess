<template>
  <div id="app">
    <div class="board">
      <div v-for="(row, rowIndex) in board" :key="rowIndex" class="board-row">
        <div
          v-for="(col, colIndex) in row"
          :key="colIndex"
          class="board-cell"
          @click="handleClick(rowIndex, colIndex)"
          :class="{
            'stone-black': col === 'B',
            'stone-white': col === 'W',
          }"
        ></div>
      </div>
    </div>
    <div v-if="gameOver" class="game-result">
      <p v-if="winner === 'B'">Black wins!</p>
      <p v-else-if="winner === 'W'">White wins!</p>
      <p v-else>It's a draw!</p>
    </div>
    <button @click="restartGame">Restart Game</button>
  </div>
</template>
  
  <script>
import { request } from "@/api";
import { mapState } from "vuex";
export default {
  name: "PlayPage",
  data() {
    return {
      boardSize: 9,
      board: [],
      currentPlayer: "B", // 'B' for Black, 'W' for White
      gameOver: false,
      winner: null, // To store the winner: 'B', 'W', or null (for draw)
    };
  },
  computed: {
    ...mapState({ user: "user" }),
  },
  created() {
    this.initializeBoard();
  },
  methods: {
    // Initialize an empty board
    initializeBoard() {
      this.board = Array.from({ length: this.boardSize }, () =>
        Array.from({ length: this.boardSize }, () => ".")
      );
    },
    // Handle player's move
    handleClick(row, col) {
      if (this.gameOver || this.board[row][col] !== ".") return;

      // Update board
      this.$set(this.board[row], col, this.currentPlayer);

      // Check for game over or switch turn
      if (this.checkGameOver(row, col)) {
        this.gameOver = true;
        this.winner = this.currentPlayer;
        this.user.coin += 100;
        this.user.score += 100;
        request.afterGame(this.user.id);
        return;
      } else {
        this.switchPlayer();
        this.computerMove(); // Computer makes a move
      }
    },
    // Switch player turn
    switchPlayer() {
      this.currentPlayer = this.currentPlayer === "B" ? "W" : "B";
    },
    // Check if the game is over (simple game-over check: no legal moves)
    checkGameOver(row, col) {
      // Placeholder logic: simply check if there are no empty spaces left
      for (let i = 0; i < this.boardSize; i++) {
        for (let j = 0; j < this.boardSize; j++) {
          if (this.board[i][j] === ".") {
            return false; // Game is not over yet
          }
        }
      }
      return true; // Game over: no empty spaces left
    },
    // Computer makes a random move
    computerMove() {
      if (this.gameOver) return;

      let availableMoves = [];
      // Collect all available moves
      for (let i = 0; i < this.boardSize; i++) {
        for (let j = 0; j < this.boardSize; j++) {
          if (this.board[i][j] === ".") {
            availableMoves.push({ row: i, col: j });
          }
        }
      }

      // Randomly select a move
      if (availableMoves.length > 0) {
        let randomMove =
          availableMoves[Math.floor(Math.random() * availableMoves.length)];
        this.$set(this.board[randomMove.row], randomMove.col, "W"); // Computer is always white
        // Check for game over or switch turn
        if (this.checkGameOver(randomMove.row, randomMove.col)) {
          this.gameOver = true;
          this.winner = "W";
          return;
        } else {
          this.switchPlayer();
        }
      }
    },
    // Restart the game
    restartGame() {
      this.initializeBoard();
      this.currentPlayer = "B";
      this.gameOver = false;
      this.winner = null;
    },
  },
};
</script>
  
  <style>
button {
  width: 100px;
  height: 35px;
  background-color: orange;
  border: none;
  border-radius: 5%;
}
.board {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
}

.board-row {
  display: flex;
}

.board-cell {
  width: 40px;
  height: 40px;
  border: 1px solid #333;
}

.stone-black {
  background-color: #333;
  border-radius: 50%;
}

.stone-white {
  background-color: #f0f0f0;
  border-radius: 50%;
}

.game-result {
  margin-top: 20px;
  font-size: 1.2em;
}
</style>
  