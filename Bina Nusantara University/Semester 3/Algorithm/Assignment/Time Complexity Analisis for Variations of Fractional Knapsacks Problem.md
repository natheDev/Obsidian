
**Bounded Fractional** dilakukan menggunakan _Greedy Algorithm_ dengan cara **menghitung nilai rasio/bobot untuk setiap item** dan **mengurutkan item** bedasarkan rasio masing-masing item. Selanjutnya dengan terus menambahkan item dengan rasio tertinggi ke dalam _knapsack_ sampai item tersebut tidak dapat ditambahkan kembali dan dilanjutkan dengan menambahkan item selanjutnya sampai memenuhi target.

*Time Complexity* dari **Bounded Fractional** ini pun dapat dihitung sebesar `O(n log n)` oleh karena terjadinya proses menghitung nilai rasio/bobot tiap item dan mengurutkannya sehingga menghasilan tc sebesar `O(lg n)` dan diikuti dengan penambahan items dengan rasio tertinggi akan menghasilkan tc sebesar `o(n)`. Dengan demikiran kedua tc tersebut akan menghasilkan total berupa `O(n log n)`.


**Unbounded Fractional** memiliki konsep yang sama namun perbedaan yg signifikan yaitu tidak dibatasi pengambilan itemnya. Sehingga secara singkat, unbounded fractional akan berjalan sejauh banyak data sampai mencapai target knapsack tersebut yang berarti time complexity dari unbounded fractional merupakan linear terhadap banyak data yang diproses atau `O(n)`.