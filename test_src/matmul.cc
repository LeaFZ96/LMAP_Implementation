#include <iostream>

#define LEN 600

using namespace std;

int main() {
    int *A = (int *)malloc((long)(sizeof(int) * LEN * LEN));
    int *B = (int *)malloc((long)(sizeof(int) * 4 * LEN * LEN));
    int *C = (int *)malloc(sizeof(int) * LEN * LEN);

    cout << "Initial" << endl;
    for (int i = 0; i < LEN * LEN; i++) {
        A[i] = 2;
    }
    for (int i = 0; i < LEN * LEN * 4; i++) {
        B[i] = 3;
    }

    cout << "Start Compute" << endl;
    for (int i = 0; i < LEN; i++) {
        for (int j = 0; j < LEN; j++) {
            C[i * LEN + j] = 0;
            for (int k = 0; k < LEN; k++) {
                C[i * LEN + j] += A[i * LEN + k] * B[k * LEN + j];
            }
        }
    }

    /*
    cout << "A start address: \t" << A << endl;
    cout << "A end address: \t" << &A[(long)LEN * (long)LEN] << endl;
    cout << "B start address: \t" << B << endl;
    cout << "B end address: \t" << &B[(long)LEN * (long)LEN * 4] << endl;
    */

    return 0;
}