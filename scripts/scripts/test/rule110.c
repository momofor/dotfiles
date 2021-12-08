#include <stdio.h>

#define BOARD_CAP 100
static int board[BOARD_CAP];

int main()
{
    board[BOARD_CAP - 2] = 1;

    for (size_t i = 0; i < BOARD_CAP - 2; ++i) {
        for (size_t j = 0; j < BOARD_CAP; ++j) {
            fputc(" *"[board[j]], stdout);
        }
        fputc('\n', stdout);

        int pattern = (board[0] << 1) | board[1];
        for (size_t j = 1; j < BOARD_CAP - 1; ++j) {
            pattern = ((pattern << 1) & 7) | board[j + 1];
            board[j] = (110 >> pattern) & 1;
        }
    }
    return 0;
}

void test() {
	printf("BYE WORLD");
};
