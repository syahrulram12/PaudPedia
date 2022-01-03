import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/home/together_room_home_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/together_room_login_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class PopupPrivacyPage extends StatelessWidget {
  final String contentHtml = """<html>
<p><strong>Kebijakan Privasi</strong></p>

<p>Ketika Anda mengunjungi laman kami, server kami secara otomatis merekam informasi yang dikirimkan oleh browser Anda. Data ini dapat mencakup informasi seperti alamat IP perangkat Anda, jenis dan versi peramban, jenis dan versi sistem operasi, waktu yang dihabiskan untuk halaman-halaman itu, informasi yang Anda cari di Laman kami, waktu dan tanggal akses, dan statistik lainnya.</p>

<p><strong>A. Pengumpulan Informasi Pribadi</strong></p>

<p>&ldquo;Informasi Pribadi&rdquo; umumnya berarti informasi apa pun yang mengidentifikasi Anda sebagai individu, dan informasi lain yang kami kaitkan dengannya. Kami mengumpulkan beberapa kategori informasi, dari beberapa sumber berbeda:</p>

<ol>
	<li>Informasi profil dan konten lain yang Anda berikan secara sukarela kepada kami, yang mungkin termasuk:</li>
</ol>

<ul>
	<li>Nama Lengkap Pengguna dan kata sandi</li>
	<li>Informasi kontak saat Anda mendaftar di laman maupun aplikasi kami, seperti jenis kelamin, nomor ponsel, dan alamat e-mail.</li>
	<li>Konten atau kontribusi apa pun yang Anda posting di ruang bersama di Laman. Ini termasuk komentar, video dan foto yang mungkin Anda kirimkan. Jika Anda menghubungi kami melalui laman media sosial, kami dapat mengumpulkan pengenal media sosial Anda.</li>
	<li>Informasi apa pun yang Anda berikan dalam berkomunikasi dengan kami, seperti melalui media sosial atau e-mail</li>
</ul>

<ol start="2">
	<li>Informasi yang dikumpulkan secara pasif saat Anda menggunakan Laman, oleh server web kami dan alat analitik pihak ketiga yang kami gunakan:</li>
</ol>

<ul>
	<li>Log sistem kami merekam informasi tertentu tentang pengunjung ke Laman kami, termasuk alamat Internet Protocol (&quot;IP&quot;), informasi browser, interaksi dengan Laman, halaman yang dilihat, penggunaan aplikasi, dan informasi lainnya;</li>
	<li>Kami menggunakan cookie tertentu, tag piksel, dan teknologi lain untuk membantu kami memahami cara Anda menggunakan Laman dan memungkinkan kami mempersonalisasi pengalaman Anda.</li>
</ul>

<ol start="3">
	<li>Kami dapat menerima informasi dari pihak ketiga seperti database publik, dan platform media sosial, untuk melengkapi informasi yang kami terima dari konsumen kami. Jika kami melakukannya, kebijakan ini mengatur bagaimana kami dapat menggunakan informasi tersebut.</li>
	<li>Selain mengumpulkan Informasi Pribadi, kami dapat mengumpulkan informasi yang tidak mengidentifikasi Anda dan tidak terkait dengan Informasi Pribadi Anda. Kami juga dapat membatalkan identifikasi atau menganonimkan informasi sehingga tidak lagi mengidentifikasi Anda. Kami dapat mengumpulkan dan menggunakan informasi tersebut untuk terlibat dalam pemasaran dan aktivitas lain dengan cara yang melindungi konsumen kami karena informasi tersebut tidak menggunakan Informasi Pribadi mereka dan berada di luar cakupan Kebijakan Privasi ini.</li>
</ol>

<p><strong>B. Penggunaan Informasi Pribadi</strong></p>

<p>Kami dapat menggunakan Informasi Pribadi sebagaimana diizinkan oleh hukum, untuk tujuan berikut:</p>

<ul>
	<li>untuk menanggapi pertanyaan Anda dan memenuhi permintaan Anda</li>
	<li>untuk mengirim email pemberitahuan seperti pengingat kata sandi, pembaruan, dll</li>
	<li>untuk mengizinkan Anda berpartisipasi dalam berbagi sosial, termasuk kiriman langsung media sosial</li>
	<li>untuk melakukan analitik, kontrol kualitas dan menentukan keefektifan laman web dan aplikasi seluler</li>
</ul>

<p>Kami juga dapat menggunakan Informasi Pribadi yang kami yakini diperlukan atau sesuai untuk tujuan penting tertentu, termasuk:</p>

<ul>
	<li>untuk mematuhi hukum yang berlaku dan proses hukum</li>
	<li>untuk menanggapi permintaan dari publik dan otoritas pemerintah, termasuk otoritas publik dan pemerintah di luar negara tempat tinggal Anda</li>
	<li>untuk mendeteksi, mencegah, atau menyelidiki potensi insiden keamanan atau penipuan</li>
	<li>untuk memfasilitasi fungsionalitas aplikasi seluler dan laman web kami</li>
	<li>untuk menegakkan syarat dan ketentuan kami</li>
	<li>untuk melindungi operasi kami atau afiliasi kami</li>
	<li>untuk melindungi hak, privasi, keselamatan atau properti kami, keamanan dan/atau afiliasi kami, Anda atau orang lain</li>
	<li>untuk memungkinkan kami mengupayakan pemulihan yang tersedia atau membatasi kerusakan yang mungkin kami dukung</li>
</ul>

<p>Jika Anda mengirimkan Informasi Pribadi apa pun yang berkaitan dengan orang lain sehubungan dengan Laman, Anda menyatakan bahwa Anda memiliki kewenangan untuk melakukannya dan mengizinkan kami menggunakan informasi tersebut sesuai dengan Kebijakan Privasi ini.</p>

<p><strong>Pelanggaran data</strong></p>

<p>Jika kami mengetahui bahwa terjadi pelanggaran data, kami akan melakukan upaya yang wajar untuk memberi tahu orang-orang yang terkena dampak, jika kami yakin bahwa ada risiko yang wajar akan merugikan pengguna sebagai akibat dari pelanggaran tersebut atau jika pemberitahuan sebaliknya diharuskan oleh hukum. Ketika kami melakukannya, kami akan memposting pemberitahuan di Laman, mengirimi Anda email.</p>

<p><strong>Kontak kami</strong></p>

<p>Jika Anda memiliki pertanyaan, permintaan, atau ingin menghubungi kami terkait Kebijakan Privasi ini, silahkan hubungi kami melalui formulir kontak di email pengaduan.paud@kemdikbud.go.id</p>
</html>""";

  const PopupPrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: Container(
        width: getWidth(context),
        height: getHeight(context),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background_room_home.png"))),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(context) / 3,
            ),
            Text("KEBIJAKAN \nPRIVASI",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.fredokaOne(color: textDarkBlue, fontSize: 25)),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: cardLightBlue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Html(data: contentHtml)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => TogetherRoomHomePage())?.then((value) =>
                    Navigator.popUntil(
                        context,
                        (route) =>
                            route.settings.name ==
                            TogetherRoomLoginPage().toStringShort()));
              },
              child: Text("Setuju",
                  style: GoogleFonts.fredokaOne(
                      color: Colors.white, fontSize: 16)),
              style: TextButton.styleFrom(
                  backgroundColor: mainBlue, minimumSize: Size(103, 30)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
