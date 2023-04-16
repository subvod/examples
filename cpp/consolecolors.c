#include <stdio.h>
#include <windows.h>

int main() {
	for(int x = 0; x < 256; x++) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), x);
		printf("%i", x);
	}
}
