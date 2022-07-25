import 'package:flutter/material.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

class NotifikasiPage extends StatefulWidget {
  TabController tabController;
  NotifikasiPage({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  List<Map<String, dynamic>> pesan = [
    {
      'isNew': true,
      'icon': 'assets/images/icons/pesan_hadiah.png',
      'title': 'Selamat! Kamu dapat Voucher 50rb dari Cankruan Petekan!',
      'content': 'Berlaku sampai dengan 1 Januari 2022. Buruan, pakai sekarang!',
      'date': '12-12-2021  12:30',
    },
    {
      'isNew': false,
      'icon': 'assets/images/icons/pesan_jadwal.png',
      'title': 'Ayo Ikutan! Live Streaming Rapat Anggota di Youtube Kopelindo.',
      'content': 'Hari Jumat, 18 Desember 2021, 14.00 WIB. Banyak Doorprize menarik loh!',
      'date': '12-12-2021  12:30',
    },
    {
      'isNew': false,
      'icon': 'assets/images/icons/pesan_notifikasi.png',
      'title': 'Ting Tong! Ada yang mau beli di Toko kamu tuh. Ayo segera tanggapi.',
      'content': 'Michael Zony Johnson ingin membeli Telur Asin.',
      'date': '12-12-2021  12:30',
    },
    {
      'isNew': false,
      'icon': 'assets/images/icons/pesan_promo.png',
      'title': 'Promo Seru! Investasi Emas Syariah mulai dari 100rb Rupiah!',
      'content': 'Berkah buat kalian semua, kini bisa nabung Emas aman dan murah!',
      'date': '12-12-2021  12:30',
    },
  ];

  List<Map<String, dynamic>> riwayat = [
    {
      'icon': 'assets/images/icons/riwayat_sukses.png',
      'title': 'Sukses! Pembiayaan telah disetujui.',
      'date': '12-12-2021  12:30',
    },
    {
      'icon': 'assets/images/icons/riwayat_gagal.png',
      'title': 'Mohon Maaf, Pengajuan gagal.',
      'date': '12-12-2021  12:30',
    },
    {
      'icon': 'assets/images/icons/riwayat_proses.png',
      'title': 'Pembiayaan sedang diproses.',
      'date': '12-12-2021  12:30',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children:<Widget> [
        ListView.builder(
          itemCount: pesan.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCardWidget(
              isNew: pesan[index]['isNew'],
              icon: pesan[index]['icon'],
              title: pesan[index]['title'],
              content: pesan[index]['content'],
              date: pesan[index]['date'],
            );
          },
        ),
        ListView.builder(
          itemCount: riwayat.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCardWidget(
              icon: riwayat[index]['icon'],
              title: riwayat[index]['title'],
              date: riwayat[index]['date'],
            );
          },
        ),
      ],
    );
  }
}
