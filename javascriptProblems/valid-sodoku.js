/**
 * @param {character[][]} board
 * @return {boolean}
 */

const extractColumns = (board) => 
    board[0].map((_, colIndex) => board.map(row => row[colIndex]));

const extractSubgrid = (board, startRow, startCol) => 
    board.slice(startRow, startRow + 3)
        .flatMap(row => row.slice(startCol, startCol + 3));

const isValidUnit = (unit) => {
    const validCells = unit.filter(cell => cell !== '.');
    const uniqueCells = new Set(validCells);
    return validCells.length === uniqueCells.size &&
           validCells.every(cell => cell >= '1' && cell <= '9');
};

const isValidSudoku = (board) => {
    // Check rows
    if (board.some(row => !isValidUnit(row))) return false;

    // Check columns
    const columnsBoard = extractColumns(board);
    if (columnsBoard.some(col => !isValidUnit(col))) return false;
    
    // Check 3x3 sub grids
    for (let i = 0; i < 9; i += 3) {
        for (let j = 0; j < 9; j += 3) {
            const subGrid = extractSubgrid(board, i, j);
            if (!isValidUnit(subGrid)) return false;
        }
    }
    return true;
};