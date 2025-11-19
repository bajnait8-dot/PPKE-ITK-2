#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <limits>
#include <vector>

/**    ----- Konstansok -----   **/
constexpr size_t N = 10000;             // A nagyteszt merete

using namespace std;

/**    ----- Segéd függvény -----    **/
template <class T> void printArray(T *A, size_t len) {
    cout << "{";
    for (size_t i = 0; i < len; i++) {
        cout << (i == 0 ? "" : ", ") << A[i];
    }
    cout << "}" << endl;
}

void forditas(int* arr, int k) {
    for (int i=0; i<k/2; i++) {
        swap(arr[i], arr[k-i-1]);
    }
}

void palacsintaRendezes(int * arr, size_t size) {
    for (size_t n=size; n>0; n--) {
        // max ker
        int k = 0;
        for (size_t j=0; j<n; j++) {
            if (arr[k]<arr[j]) k=j;
        }
        forditas(arr, k+1);
        forditas(arr, n);
    };
}

/**    ----- Rendezett? -----    **/
bool isSorted(const int *a, size_t len) {
    for (size_t i = 1; i < len; ++i) {
        if (a[i - 1] > a[i]) {
            return false;
        }
    }
    return true;
}
bool isSame(const int *a, const int *b, size_t len) {
    for (size_t i = 0; i < len; ++i) {
        if (a[i] != b[i]) {
            return false;
        }
    }
    return true;
}
/**    ----- Beépített rendező -----    **/
void stdSort(int *a, size_t len) { std::sort(a, a + len); }

/**    ----- Tesztelő segédfüggvény -----    **/
void testOnArray(int *a, size_t len) {
    vector<int> tmp(a, a + len);
    if (len < 20) {
        cout << "Eredeti tomb: .. ";
        printArray(a, len);
    }
    stdSort(tmp.data(), len);
    palacsintaRendezes(a,len);
    if (len < 20) {
        cout << "Palacsinta : ... ";
        printArray(a, len);
    }
    cout << "Rendezettseg      : [ " << (isSorted(a, len)?"OK":"HIBA!") << " ]" << endl;
    cout << "Elemek megegyzenek: [ " << (isSame(a, tmp.data(), len)?"OK":"HIBA!") << " ]" << endl;
    cout << "----------------------------------" << endl;
}


int main() {
    // Teszteléshez mindig érdemes reprodukálható méréseket végezni, különben
    // nagyon nehéz debuggolni.
    srand(0);

    /** saját teszt eleje
    const int n = 6;
    int arr[n];
    arr[0] = 4;
    arr[1] = 18;
    arr[2] = 21;
    arr[3] = 3;
    arr[4] = 54;
    arr[5] = 45;

    palacsintaRendezes(arr, n);
    return 0;

    // saját teszt vege **/

    std::cout << "===================================================="
              << std::endl;
    std::cout << "Kisebb tesztek:" << std::endl;
    {
        // Kiiras pelda
        vector<int> test_array{4,7,5,2,1};
        testOnArray(test_array.data(), test_array.size());
    }

    {
        // Üres tömb
        vector<int> test_array{};
        testOnArray(test_array.data(), 0);
    }

    {
        // Egy elem
        vector<int> test_array{1};
        testOnArray(test_array.data(), 1);
    }

    {
        // Két elem, rendezett
        vector<int> test_array{1, 4};
        testOnArray(test_array.data(), 2);
    }

    {
        // Két elem, rendezetlen
        vector<int> test_array{5, 2};
        testOnArray(test_array.data(), 2);
    }

    {
        // Kevés elem
        vector<int> test_array{1, 3, 4, 2, 0, -1};
        testOnArray(test_array.data(), 6);
    }

    {
        // Végéről visszavinni az első elemet
        vector<int> test_array{2, 3, 4, 5, 1};
        testOnArray(test_array.data(), 5);
    }

    {
        // 3 elem, nem kell felosztani
        vector<int> test_array{2, 1, 3};
        testOnArray(test_array.data(), 3);
    }

    {
        // 3 elem, fel kell osztani
        vector<int> test_array{2, 3, 1};
        testOnArray(test_array.data(), 3);
    }

    {
        std::cout << "===================================================="
                  << std::endl;
        std::cout << "Kis véletlenszerű:" << std::endl;
        std::vector<int> test_array(N);
        for (size_t i = 0; i < 128; ++i) {
            // Így pont nem fog a speciális swap-unk túlcsordulni.
            test_array[i] = rand() % (std::numeric_limits<int>::max() / 2);
        }
        testOnArray(test_array.data(), 1000);
    }

    {
        std::cout << "===================================================="
                  << std::endl;
        std::cout << "Rendezett:" << std::endl;
        std::vector<int> test_array(N);
        for (size_t i = 0; i < N; ++i) {
            test_array[i] = i;
        }
        testOnArray(test_array.data(), N);
    }

    {
        std::cout << "===================================================="
                  << std::endl;
        std::cout << "Fordítva rendezett:" << std::endl;
        std::vector<int> test_array(N);
        for (size_t i = 0; i < N; ++i) {
            test_array[i] = N - i;
        }
        testOnArray(test_array.data(), N);
    }

    {
        std::cout << "===================================================="
                  << std::endl;
        std::cout << "Véletlenszerű:" << std::endl;
        std::vector<int> test_array(N);
        for (size_t i = 0; i < N; ++i) {
            // Így pont nem fog a speciális swap-unk túlcsordulni.
            test_array[i] = rand() % (std::numeric_limits<int>::max() / 2);
        }
        testOnArray(test_array.data(), 1000);
    }

    {
        std::cout << "===================================================="
                  << std::endl;
        std::cout << "Ugyanakkora:" << std::endl;
        std::vector<int> test_array(N);
        for (size_t i = 0; i < N; ++i) {
            // Így pont nem fog a speciális swap-unk túlcsordulni.
            test_array[i] = std::numeric_limits<int>::max() / 2;
        }
        testOnArray(test_array.data(), 1000);
    }
    return 0;
}
