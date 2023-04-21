#include <Windows.h>
#include <stdio.h>

void showPointer(void* pointer) {
    printf("%p\n", pointer);
}

void printString(void *pointer) {
    printf("%s\n", (char *)pointer);
}

void printWndClass(WNDCLASSA *C)
{
    printf("\n");
    printf("style: %d\n", C->style);
    printf("lpfnWndProc: %p\n", C->lpfnWndProc);
    printf("cbClsExtra: %d\n", C->cbClsExtra);
    printf("cbWndExtra: %d\n", C->cbWndExtra);
    printf("hInstance: %p\n", C->hInstance);
    printf("hIcon: %p\n", C->hIcon);
    printf("hCursor: %p\n", C->hCursor);
    printf("hbrBackground: %p\n", C->hbrBackground);
    printf("lpszMenuName: %s\n", C->lpszMenuName);
    printf("lpszClassName: %s\n", C->lpszClassName);
    printf("\n");
}

void sizeCheck()
{
    printf("void *: %d\n", sizeof(void *));
    printf("UINT: %d\n", sizeof(UINT));
    printf("WNDPROC: %d\n", sizeof(WNDPROC));
    printf("WNDCLASSA: %d\n", sizeof(WNDCLASSA));
}