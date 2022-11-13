 **Prim's Algorithm** merupakan salah satu *greedy algorithm* yang terkenal. Algoritma ini digunakan untuk mencari *Minimum Spanning Tree (MST)* pada suatu graph. Syarat penggunaanya harus berupa graph yang memiliki berat tiap node, saling terhubung, dan tidak terarah.


Implementasi dengan *Adjacency Matrix* :
1.  Menambah sebuah vertex  $O(v^2)$ 
2.  Menghapus sebuah vertex $O(v^2)$ 
3.  Menambah sebuah edge `O(1)`
4.  Menghapus sebuah edge `O(1)`
5.  Mengubah informasi tiap edge `O(1)`
6.  Menjalani tiap vertex untuk mencari tetangga lainnya `O(v)`

Dengan demikian, waktu kompleksitas yang dihasilkan *Adjacency Matrix* adalah sebesar $O(v^2)$


Implementasi dengan Binary Heap :
1. Menciptakan Heap `O(1)`
2. Insert `O(log n)`
3. Minimum `O(1)`
4. Extract node terkecil `O(log n)`
5. Union `O(n)`
6. Decrease `O(log n)`
7. Delete `O(log n)`

Dengan demikian, waktu kompleksitas yang dihasilkan *Binary Heap* adalah sebesar `O(log n)`



**Dijkstra's Algorithm** merupakan *graph algorithm* yang digunakan untuk mencari jalur tercepat dari sumber node ke node lainnya pada graph. *Time Complexity* yang dihasilkan algoritma ini adalah sebesar $O(V^2)$. 

Implementasi : 
1. Mencari verteks yang belum dilewati `O(v)`
2. Memperbaharui setiap informasi jalur verteks tetangga `O(1)`, namun setiap verteks berkemungkinan untuk memiliki tetangga sebanyak `V-1`. Oleh karena itu menjalani setiap tetangga dibutuhkan waktu sebesar  `O(v) * O(1) = O(v)`

Dengan demikian, kompleksitas waktu yang dihasilkan oleh *Dijkstra's Algorithm* adalah sebesar `O(v) * O(v) =` $O(v^2)$ 








