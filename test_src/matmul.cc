#include <iostream>

#define LEN 600

using namespace std;

int main() {
    int *A = (int *)malloc((long)(sizeof(int) * 4 * LEN * LEN));
    int *B = (int *)malloc((long)(sizeof(int) * 4 * LEN * LEN));

    cout << "Initial" << endl;
    for (int i = 0; i < LEN * LEN * 4; i++) {
        A[i] = 2;
    }
    for (int i = 0; i < LEN * LEN * 4; i++) {
        B[i] = 3;
    }

    int a = 0, b = 0, c = 0;
    cout << "Start Compute" << endl;
    for (int i = 0; i < LEN; i++) {
        for (int j = 0; j < LEN; j++) {
            for (int k = 0; k < LEN; k++) {
                a = A[i * LEN + k];
                b = B[k * LEN + j];
                c = a * b;
            }
        }
    }

    return 0;
}