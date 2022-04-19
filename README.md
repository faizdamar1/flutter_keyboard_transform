# flutter_keyboard_transform

soal ini saya dapat ketika mengikuti tes mobile developer disalah satu perusahaan di surabaya

## Horizontal Flip
Transformasi ini akan membalik semua baris keyboard secara horizontal (mis., 1 akan bertukar dengan 0, 2 dengan 9, dll.)

## Vertical Flip
Transformasi ini akan membalik semua kolom keyboard secara vertikal (mis., 1 akan bertukar dengan z, q dengan a, 2 dengan x, dll.)

## Shift
Transformasi ini harus mengambil bilangan bulat N dan melakukan pergeseran linier pada keyboard. Setiap kunci harus menggeser N tempat ke kanan jika N > 0 (dan juga ke kiri jika N < 0). Jika sebuah kunci akan bergerak melewati barisnya saat ini, maka kunci tersebut harus bergeser ke baris di bawahnya, dan seterusnya. Jadi misalnya, untuk N = 5, lima kunci terakhir (nm,./ akan pindah ke 5 tempat pertama dari baris atas, 12345 akan pindah 5 tempat ke kanan, 67890 akan pindah ke awal baris ke-2 , dan seterusnya). Demikian juga, tombol geser kiri yang melewati baris saat ini akan menggesernya kembali ke baris di atas. Oleh karena itu, satu shift kanan dan kiri akan menghasilkan keyboard yang sama.	
