# Implementasi GUI
## Stage Selection
Untuk mengimplementasikan stage selection di Godot 4, saya memanfaatkan node GUI seperti LinkButton yang dilengkapi dengan signal pressed() untuk menangani aksi pemilihan level. Setiap tombol stage memiliki variabel scene_to_load yang bisa diisi dengan nama scene level yang ingin dimuat. Dengan menempelkan script berikut pada masing-masing LinkButton, saya  mengatur agar ketika tombol ditekan, game akan langsung berpindah ke scene level yang diinginkan.

Melalui tab Inspector, saya bisa mengisi variabel scene_to_load sesuai dengan nama file scene, contohnya "Level 1". Dengan pendekatan ini, kita bisa membuat beberapa tombol stage selection, masing-masing memuat level yang berbeda hanya dengan mengubah nilai variabel tersebut. Jangan lupa juga untuk memastikan scene utama seperti MainMenu.tscn diatur sebagai Main Scene melalui menu Project -> Project Settings -> Application -> Run -> Main Scene, agar saat game dijalankan, pemain langsung diarahkan ke menu utama sebelum memilih stage.

## Main Menu Button di Scene 
Selain tombol New Game, saya menambahkan tombol Main Menu untuk memungkinkan pemain kembali ke menu utama dari scene mana pun. Caranya mirip dengan implementasi tombol stage selection sebelumnya. Gunakan node LinkButton atau Button untuk tombol Main Menu, lalu tempelkan script berikut

Pada tab Inspector, isi variabel scene_to_load dengan nama scene menu utama, misalnya "MainMenu". Dengan begitu, setiap kali pemain menekan tombol Main Menu, game akan langsung kembali ke scene menu utama. Pastikan juga scene menu utama sudah ada di folder scenes dengan nama yang sesuai agar tidak terjadi error saat berpindah scene. Pendekatan ini memudahkan pengaturan navigasi antar scene dengan lebih fleksibel.

## Pause Button
Untuk menambahkan fitur Pause dalam game, saya menggunakan sebuah tombol GUI seperti Button atau TextureButton yang ketika ditekan akan menghentikan sementara jalannya game.

Di sini, saya memanfaatkan properti get_tree().paused untuk menghentikan semua node yang bergantung pada waktu (seperti animasi, physics, dan input). Selain itu, saya menambahkan node Control seperti Panel atau VBoxContainer sebagai menu pause, berisi tombol untuk melanjutkan game, kembali ke Main Menu, atau keluar dari game. Menu pause ini diatur agar muncul hanya saat game dalam keadaan pause. Dengan pendekatan ini, pemain bisa dengan mudah menghentikan game kapan saja dan melanjutkannya kembali dengan nyaman.