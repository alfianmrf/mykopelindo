import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

class TokopelindoPage extends StatefulWidget {
  const TokopelindoPage({Key? key}) : super(key: key);

  @override
  State<TokopelindoPage> createState() => _TokopelindoPageState();
}

class _TokopelindoPageState extends State<TokopelindoPage> {
  List<String> produk = [
    'Perlengkapan Rumah',
    'Elektronik & Gadget',
    'Pakaian & Aksesoris',
    'Kesehatan & Perawatan',
    'Hobi & Koleksi',
    'Otomotif',
    'Properti',
    'Lain-lain',
  ];

  List<String> jasa = [
    'Tukang Bangunan',
    'Mekanik Kendaraan',
    'Servis Elektronik',
    'Cleaning & Disinfektan',
    'Lain-lain',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(32)),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(32)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 7,
                        offset: const Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/icons/tokopelindo_active.png',
                            width: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'ToKopelindo',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Penuhi  Apapun Kebutuhan Kita, \nOleh Kita, Untuk Kita.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: InputWidget(
                    hint: 'Cari Apapun Di Sini',
                    color: Colors.white.withOpacity(0.15),
                    prefixIcon: Icons.search,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(text: 'Penawaran Spesial untuk Kamu!'),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return OfferingCardWidget(
                            image: 'assets/images/pictures/dummy_offering.png',
                            description: 'Dijual: Rumah Tipe 40, Gedangan-Sidoarjo. -Rp400JT',
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    const TitleWidget(text: 'Produk Terbaik'),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 107,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        itemCount: produk.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryWidget(
                            title: produk[index],
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    const TitleWidget(text: 'Jasa Terpercaya'),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 107,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        itemCount: jasa.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryWidget(
                            title: jasa[index],
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
