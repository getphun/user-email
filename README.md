# user-email

Adalah modul yang menyediakan database `user_email`. Modul ini adalah modul static
yang sebenarnya tidak melakukan apa-apa kecuali menyediakan tabel.

Tabel `user_email` dipartisi menjadi 50 dengan key `user`, sehingga sangat disarankan
menggunakan where kondisi dengan field `user` ketika melakukan operasi pada tabel.

```php
// Lebih lambat
\UserEmail\Model\UserEmail::get(1);
\UserEmail\Model\UserEmail::get(['email' => 'lorem@ipsum.com']);

// Lebih cepat
\UserEmail\Model\UserEmail::get(['id' => 1, 'user' => 1]);
\UserEmail\Model\UserEmail::get(['email' => 'lorem@ipsum.com', 'user'=>2]);
```

Pada tabel `user_email` terdapat kolom `code` yang disediakan untuk menyimpan 
informasi verifikasi email. Kolom tersebut tidak digunakan oleh modul ini, dan
dipersiapkan untuk digunakan oleh modul lain.