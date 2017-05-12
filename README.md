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