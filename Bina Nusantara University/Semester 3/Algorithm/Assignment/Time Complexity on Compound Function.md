
Diketahui *f*a() memiliki time complexity sebesar `O(n)` 

Bagaimana dengan time complexity pada *f*c() ?

```
%% input = x
%% output = y

BEGIN

	y = 0 
	for j = 1 to x steps (j*2) do 
		y =+ A(j)
	end for
	return y

END
```
Dapat diketahui input x dan variable y membawa time complexity `O(1)`, dan *for-loop* membawa time complexity `O(n)` namun terdapat argument bahwa increament akan menggunakan rumus `(j*2)` atau **2^k** sehingga kompleksitas waktu yang dihasilkan adalah sebesar `O(log n)` dan selesai.

Dengan kompleksitas waktu yang sudah didapatkan yaitu `*f*a() = O(n)` dan `*f*c() = O(log n)` maka akan didapatkan time complexity sebesar `O(n * log n)*` 
