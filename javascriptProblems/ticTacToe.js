import React, { useState } from "react";
import { createRoot } from "react-dom/client";

const rowStyle = {
    display: "flex",
};

const squareStyle = {
    width: "60px",
    height: "60px",
    backgroundColor: "#ddd",
    margin: "4px",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    fontSize: "20px",
    color: "white",
};

const boardStyle = {
    backgroundColor: "#eee",
    width: "208px",
    alignItems: "center",
    justifyContent: "center",
    display: "flex",
    flexDirection: "column",
    border: "3px #eee solid",
};

const containerStyle = {
    display: "flex",
    alignItems: "center",
    flexDirection: "column",
};

const instructionsStyle = {
    marginTop: "5px",
    marginBottom: "5px",
    fontWeight: "bold",
    fontSize: "16px",
};

const buttonStyle = {
    marginTop: "15px",
    marginBottom: "16px",
    width: "80px",
    height: "40px",
    backgroundColor: "#8acaca",
    color: "white",
    fontSize: "16px",
};

function Square({ index, makeMove, val, currPlayer }) {
    return (
        <div className="square" style={squareStyle}>
            <button onClick={() => makeMove(index, currPlayer)}>
                <span>{val}</span>
            </button>
        </div>
    );
}

const winnerCheck = (boardState, currentPlayer) => {
    // How many ways to win?
    const winPossibilities = [
        // Horizontal
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        // Vertical
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        // Diagonal
        [0, 4, 8],
        [2, 4, 6],
    ];

    // 8 Ways to win
    for (const [a, b, c] of winPossibilities) {
        if (
            boardState[a] === currentPlayer &&
            boardState[b] === currentPlayer &&
            boardState[c] === currentPlayer
        ) {
            return true;
        }
    }
    return false;
};

function Board() {
    // State Variables
    const [boardState, setBoardState] = useState(new Array(9).fill(null));
    const [currentPlayer, setCurrentPlayer] = useState("x");
    const [winner, setWinner] = useState("None");

    const makeMove = (index, currPlayer) => {
        if (winner !== "None") {
            alert("Reset to play again");
            console.log("Reset to play again");
            return;
        }

        const updatedBoard = [...boardState];

        if (!updatedBoard[index]) {
            updatedBoard[index] = currPlayer;
            setBoardState(updatedBoard);

            const isWinner = winnerCheck(updatedBoard, currPlayer);

            if (isWinner) {
                console.log(
                    "We have a new world champion: Player ",
                    currPlayer
                );
                setWinner(`Player: ${currPlayer}`);
                return;
            }
            setCurrentPlayer(currentPlayer === "x" ? "o" : "x");
        }
    };

    const reset = () => {
        setBoardState(new Array(9).fill(null));
        setCurrentPlayer("x");
        setWinner("None");
    };

    return (
        <div style={containerStyle} className="gameBoard">
            <div id="statusArea" className="status" style={instructionsStyle}>
                Next player: <span>{currentPlayer === "x" ? "x" : "o"}</span>
            </div>
            <div id="winnerArea" className="winner" style={instructionsStyle}>
                Winner: <span>{winner}</span>
            </div>
            <button style={buttonStyle} onClick={reset}>
                Reset
            </button>
            <div style={boardStyle}>
                <div className="board-row" style={rowStyle}>
                    <Square
                        index={0}
                        val={boardState[0]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={1}
                        val={boardState[1]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={2}
                        val={boardState[2]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                </div>
                <div className="board-row" style={rowStyle}>
                    <Square
                        index={3}
                        val={boardState[3]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={4}
                        val={boardState[4]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={5}
                        val={boardState[5]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                </div>
                <div className="board-row" style={rowStyle}>
                    <Square
                        index={6}
                        val={boardState[6]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={7}
                        val={boardState[7]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                    <Square
                        index={8}
                        val={boardState[8]}
                        currPlayer={currentPlayer}
                        makeMove={makeMove}
                    />
                </div>
            </div>
        </div>
    );
}

function Game() {
    return (
        <div className="game">
            <div className="game-board">
                <Board />
            </div>
        </div>
    );
}

const container = document.getElementById("root");
const root = createRoot(container);
root.render(<Game />);
