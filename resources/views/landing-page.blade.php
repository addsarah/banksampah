<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bank Sampah</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{ asset("/assets/img/logo-only-website-bank-sampah.png") }}" rel="icon">
  <link href="{{ asset("/assets/img/logo-only-website-bank-sampah.png") }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;1,400;1,500;1,600&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{ asset("/assets/vendor/animate.css/animate.min.css") }}" rel="stylesheet">
  <link href="{{ asset("/assets/vendor/bootstrap/css/bootstrap.min.css") }}" rel="stylesheet">
  <link href="{{ asset("/assets/vendor/bootstrap-icons/bootstrap-icons.css") }}" rel="stylesheet">
  <link href="{{ asset("/assets/vendor/boxicons/css/boxicons.min.css") }}" rel="stylesheet">
  <link href="{{ asset("/assets/vendor/glightbox/css/glightbox.min.css") }}" rel="stylesheet">
  <link href="{{ asset("/assets/vendor/swiper/swiper-bundle.min.css") }}" rel="stylesheet">

  <link href="{{ asset("/assets/css/style.css") }}" rel="stylesheet">
</head>

<body>

  <!-- ======= Top Bar ======= -->
  

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <div class="logo me-auto">
        <h1><a href="{{ url("/") }}">Kumpulin</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="{{ url("/") }}"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">Tentang Kami</a></li>
          <li><a class="nav-link scrollto" href="#menu">Kategori</a></li>
          <li><a class="nav-link scrollto" href="#gallery">Galeri</a></li>
          <li><a class="nav-link scrollto" href="#contact">Kontak Kami</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="{{ url('/login')  }}" class="book-a-table-btn scrollto">Sign In</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
          <!-- Slide 1 -->
          <div class="carousel-item active col-lg-12 d-flex justify-content-center" style="background-image: url(assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>Bank Sampah</span></h2>
                <p class="animate__animated animate__fadeInUp">Kumpulin adalah website pengelolaan sampah berkelanjutan. Kumpulin dimulai dengan memberikan layanan jemput untuk sampah yang dapat didaur ulang. </p>
                <div>
                  <a href="{{ url('/login')  }}" class="btn-menu animate__animated animate__fadeInUp scrollto">Sign In</a>
                  <a href="{{ url('/login')  }}" class="btn-book animate__animated animate__fadeInUp scrollto">Sign Up</a>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </section>
  <!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("assets/img/about.png");'>
            <a href="{{ url('https://youtu.be/8KYX7LOVqAc') }}" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <p>
                Kumpulin adalah website pengelolaan sampah berkelanjutan. Kumpulin dimulai dengan memberikan layanan jemput untuk sampah yang dapat didaur ulang. Website Kumpulin memandu user untuk melakukan pemilahan sampah sesuai jenisnya, kemudian sampah terpilah diposting dalam website. Kolektor yang terdekat akan mendapatkan notifikasi dan melayani postingan sampah terpilah yang sudah diupload di website.
              </p>
              <p class="fst-italic">
                Kumpulin mendorong untuk melakukan pengelolaan sampah dengan cara pemilahan setiap jenis. Kumpulin menawarkan berbagai solusi sehingga klien Kumpulin Bisnis menyadari bahwa dengan memilah sampah, mereka bisa mendapatkan nilai lebih dari sampah tersebut, dan membuat biaya pengelolaan sampah menjadi minimal.
              </p>
              <p>
                Berkontribusi pada perbaikan lingkungan melalui penerapan ekonomi sirkular dengan menyediakan sistem pengelolaan sampah berkelanjutan dari hulu ke hilir.
              </p>
            </div>

          </div>

        </div>

      </div>

      
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="section-title">
          <h2>Kenapa Harus <span>Menggunakan Layanan Kami</span></h2>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box">
              <span>01</span>
              <h4>Memanfaatkan Teknologi</h4>
              <p>Menjadi Pengelola sampah terbaik dengan memanfaatkan teknologi</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>02</span>
              <h4>Pelayanan dan solusi terbaik</h4>
              <p>Memberikan pelayanan dan solusi terbaik, yang memiliki nilai tambah di bidang lingkungan untuk semua pemangku kepentingan</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>03</span>
              <h4>Meningkatkan kesadaran dan tanggung jawab</h4>
              <p>Meningkatkan kesadaran dan tanggung jawab terhadap lingkungan dan sosial</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Kategori Section ======= -->
    <section id="menu" class="menu">
      <div class="container">

        <div class="section-title">
          <h2>Kategori Sampah</h2>
          <p>Beberapa jenis sampah yang dapat kami kumpulin</p>
        </div>  

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
              <li data-filter="*" class="filter-active">Semua</li>
              <li data-filter=".filter-organik">Organik</li>
              <li data-filter=".filter-kertas">Kertas</li>
              <li data-filter=".filter-plastik">Plastik</li>
              <li data-filter=".filter-elektronik">Barang Elektronik</li>
              <li data-filter=".filter-kaca">Kaca</li>
            </ul>
          </div>
        </div>

        <div class="row menu-container">

          <div class="col-lg-6 menu-item filter-organik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Minyak Jelantah</a><span>Rp 3.500 /kg</span>
            </div>
            <div class="menu-ingredients">
              Minyak bekas penggorengan. Baik setelah proses penggorengan pertama, kedua, dan seterusnya
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-organik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Sumpit Kayu</a><span>Rp 3.000 /kg</span>
            </div>
            <div class="menu-ingredients">
              Sumpit yang terbuat dari kayu, termasuk sumpit bambu
            </div>
          </div>
          
          <div class="col-lg-6 menu-item filter-kertas">
            <div class="menu-content">
              <a href="{{ url("#") }}">Kertas Buram</a><span>Rp 3.500 /kg</span>
            </div>
            <div class="menu-ingredients">
              Kertas yang mempunyai ciri warna kusam atau buram. Contohnya: kertas buram pada buku lembar kerja siswa (LKS), arsip dan dokumen berbahan kertas buram
            </div>
          </div>
          
          <div class="col-lg-6 menu-item filter-kertas">
            <div class="menu-content">
              <a href="{{ url("#") }}">HVS</a><span>Rp 2.400 /kg<span>
            </div>
            <div class="menu-ingredients">
              Mempunyai ciri: berwarna putih, tidak berlapis plastik/mengkilap, hanya tinta hitam dan tidak ada bekas cetakan berwarna. Contoh: arsip, buku, dokumen, naskah skripsi tanpa bagian depan
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-kertas">
            <div class="menu-content">
              <a href="{{ url("#") }}">Karton bekas minum</a><span>Rp 1.400 /kg</span>
            </div>
            <div class="menu-ingredients">
              Kertas kemasan minuman atau makanan yang mempunyai ciri berlapis-lapis, seperti kotak kemasan susu, teh, & kopi kotak
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-kertas">
            <img src="{{ asset("/") }}" alt="" class="menu-img">
            <div class="menu-content">
              <a href="{{ url("#") }}">Koran</a><span>RP 2.500 /kg</span>
            </div>
            <div class="menu-ingredients">
              Koran bekas yang masih utuh dan bersih
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-kertas">
            <div class="menu-content">
              <a href="{{ url("#") }}">Kardus</a><span>Rp 2.750 /kg</span>
            </div>
            <div class="menu-ingredients">
              Kertas dengan ciri berwarna coklat, tebal, berlapis-lapis. Contoh: kardus mie instan, kardus elektronik, kardus air mineral, kardus buah, dan lain-lain
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Plastik HDPE</a><span>Rp 2.600 /kg</span>
            </div>
            <div class="menu-ingredients">
              Mempunyai Kode 2 (HDPE) bersifat lentur, tebal, tidak mudah patah, biasa digunakan untuk kemasan minuman, botol shampo, sabun, plastik ember cat
            </div>
          </div>


          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Pet Botol Berwarna</a><span>Rp 2.900 /kg</span>
            </div>
            <div class="menu-ingredients">
              Botol plastik bekas minuman yang berwarna dan mempunyai Kode 1 (PET)
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Pet Botol</a><span>Rp 3.600 /kg</span>
            </div>
            <div class="menu-ingredients">
              Botol plastik bekas minuman yang tidak berwarna (bening) atau tidak bersablon, dan mempunyai Kode 1 (PET)
            </div>
          </div>
          
          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Galon Air Mineral</a><span>Rp 3.500 /kg</span>
            </div>
            <div class="menu-ingredients">
              Galon air mineral kondisi bersih
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Pipa PVC</a><span>Rp 1.400 /kg</span>
            </div>
            <div class="menu-ingredients">
              Pipa paralon PVC bekas
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">PS Kaca</a><span>Rp 3.000 /unit</span>
            </div>
            <div class="menu-ingredients">
              Tempat kaset, tempat CD, toples Nastar, dan plastik berbahan transparan yang tidak lentur dan mudah patah
            </div>
          </div>


          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">PP Gelas</a><span>Rp 4.000 /kg</span>
            </div>
            <div class="menu-ingredients">
              Gelas Plastik minuman yang tidak berwarna(bening) dan tidak bersablon(cap), mempunyai Kode Plastik 5 (PP)
            </div>
          </div>
          
          <div class="col-lg-6 menu-item filter-plastik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Compact Disc (CD) Bekas</a><span>Rp 3.000 /kg</span>
            </div>
            <div class="menu-ingredients">
              Piringan cakram mengkilat CD, DVD, dll.
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-elektronik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Mesin Cuci Bekas</a><span>Rp 14.000 /unit</span>
            </div>
            <div class="menu-ingredients">
              Mesin cuci bekas (cek kondisi dahulu)
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-elektronik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Kulkas Bekas</a><span>Rp 13.500 /unit</span>
            </div>
            <div class="menu-ingredients">
              Kulkas bekas (cek kondisi dahulu)
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-elektronik">
            <div class="menu-content">
              <a href="{{ url("#") }}">Televisi Bekas</a><span>Rp 13.800 /unit</span>
            </div>
            <div class="menu-ingredients">
              Televisi Berwarna (cek kondisi dahulu)
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-kaca">
            <div class="menu-content">
              <a href="{{ url("#") }}">Botol Beling Bening</a><span>Rp 5.000 /kg</span>
            </div>
            <div class="menu-ingredients">
              Botol beling tidak berwarna atau bening, masih utuh. Biasa digunakan untuk botol minuman, saos, kecap, sirup, dan lain-lain
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-kaca">
            <div class="menu-content">
              <a href="{{ url("#") }}">Botol Beling Berwarna</a><span>Rp 4.500 /kg</span>
            </div>
            <div class="menu-ingredients">
              Botol beling berwarna, masih utuh. Biasa digunakan untuk botol minuman, saos, kecap, sirup, dan lain-lain
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Kategori Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container-fluid">

        <div class="section-title">
          <h2>Galeri Kami</h2>
        </div>

        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-1.jpg") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-1.jpg") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-2.png") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-2.png") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-3.jpg") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-3.jpg") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-4.png") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-4.png") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-5.png") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-5.png") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-6.jpg") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-6.jpg") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-7.png") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-7.png") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="{{ url("assets/img/gallery/gallery-8.jpg") }}" class="gallery-lightbox">
                <img src="{{ asset("/assets/img/gallery/gallery-8.jpg") }}" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Kontak</span> Kami</h2>
        </div>
      </div>

      
      <div class="map">
        <div class="mapouter">
          <div class="gmap_canvas">
            <iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=1088&amp;height=369&amp;hl=en&amp;q=smk 46 jakarta&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
            <a href="https://pdflist.com/" alt="pdf download">Pdf download</a>
          </div>
          <style>.mapouter{
            position:relative;text-align:right;width:100%;height:369px;
            }.gmap_canvas 
            {
              overflow:hidden;background:none!important;width:100%;height:369px;
              }
              .gmap_iframe 
              {
                height:369px!important;
                }</style>
        </div>
      </div>

      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="bi bi-geo-alt"></i>
              <h4>Lokasi:</h4>
              <p>Cipinang Besar Utara<br>Jakarta Timur</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-clock"></i>
              <h4>Jam Operasional:</h4>
              <p>Senin-Jumat:<br>07:00 AM - 05:00 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>admin@kumpulin.id<br>kontak@kumpulin.id</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-phone"></i>
              <h4>Telepon:</h4>
              <p>021 5589 88554<br>+628 1230 034552</p>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>Kumpulin</h3>
      <div class="social-links">
        <a href="{{ url("#") }}" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="{{ url("#") }}" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="{{ url("#") }}" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="{{ url("#") }}" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; 2023 Copyright <strong><span>Kumpulin</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="{{ url("#") }}" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{ asset("/assets/vendor/bootstrap/js/bootstrap.bundle.min.js") }}"></script>
  <script src="{{ asset("/assets/vendor/glightbox/js/glightbox.min.js") }}"></script>
  <script src="{{ asset("/assets/vendor/isotope-layout/isotope.pkgd.min.js") }}"></script>
  <script src="{{ asset("/assets/vendor/swiper/swiper-bundle.min.js") }}"></script>
  <script src="{{ asset("/assets/vendor/php-email-form/validate.js") }}"></script>

  <!-- Template Main JS File -->
  <script src="{{ asset("/assets/js/main.js") }}"></script>

</body>

</html>