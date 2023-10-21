![Triangle POS](public/images/logo-dark.png)
> If you find any bug or have any suggestion please create an Issue.

## about
Website tentang pengelolaan sampah daur ulang secara digital atau disebut bank sampah untuk kepentingan tugas

## feature
- Products Management & Barcode 
- Stock Management
- User Purchase Management
- Sale & expense Management
- Purchase & Sale Return Management
- Customer & Supplier Management
- User & Admin Management (Roles & Permissions)
- Product Multiple Images
- System Settings
- Currency settings
- All Reports (include profit report, payment report, sales report, purchase report, and sales return & purchase return report)

**purchase preview**
![Screenshot 2023-06-18 145118](https://github.com/addsarah/banksampah/assets/116699790/2486d57e-d7dc-45c1-9906-da48b5122c20)

**post purchase preview**
![Screenshot 2023-06-18 145140](https://github.com/addsarah/banksampah/assets/116699790/7af633d8-ea0b-4f2e-887d-890a31906070)

**after purchase preview**
![Screenshot 2023-06-18 145223](https://github.com/addsarah/banksampah/assets/116699790/f433194f-b70f-4e52-9217-8c1f93f9aa2f)

## local installation
- run ``composer install `` 
- run `` npm install ``
- run ``npm run dev``
- copy .env.example to .env
- run `` php artisan key:generate ``
- set up your database in the .env
- run `` php artisan migrate --seed ``
- run `` php artisan storage:link ``
- run `` php artisan serve ``
- then visit `` http://localhost:8000 or http://127.0.0.1:8000 ``.

## admin credential
email : admin@test.com
password : 12345678

## tech
- Laravel 8 - PHP Framework for building the admin dashboard and mobile api.
- Bootstrap 5.3.0
  
# license
[Creative Commons Attribution 4.0	cc-by-4.0](https://creativecommons.org/licenses/by/4.0/)
