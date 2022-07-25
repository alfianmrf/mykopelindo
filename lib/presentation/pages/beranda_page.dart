import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/pages/pages.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool _isVisible = false;
  
  List<String> imgList = [
    'assets/images/pictures/banner.png',
    'assets/images/pictures/banner.png',
    'assets/images/pictures/banner.png',
    'assets/images/pictures/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {
        'title': 'Pembiayaan',
        'image': 'assets/images/icons/pembiayaan.png',
        'onPressed': () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PembiayaanPage()));
        },
      },
      {
        'title': 'Menabung',
        'image': 'assets/images/icons/menabung.png',
        'onPressed': () {},
      },
      {
        'title': 'Pembayaran',
        'image': 'assets/images/icons/pembayaran.png',
        'onPressed': () {},
      },
      {
        'title': 'Penarikan',
        'image': 'assets/images/icons/penarikan.png',
        'onPressed': () {},
      },
    ];

    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              CarouselSlider(
                items: imgList.map((e) => SizedBox(
                  width: double.infinity,
                  child: Image.asset(e, fit: BoxFit.cover),
                )).toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: category.asMap().entries.map((e) {
                              return CategoryWidget(
                                title: e.value['title']!,
                                image: e.value['image']!,
                                fontSize: 12,
                                onPressed: e.value['onPressed'],
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 30),
                        TitleWidget(
                          text: 'Update Kopelindo',
                          onPressedReadMore: () {},
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 148,
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return SummaryCardWidget(
                                image: 'assets/images/pictures/dummy_offering.png',
                                description: 'Coworking Space Keren di Pelindo Place',
                                onPressed: () {},
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        TitleWidget(
                          text: 'Promo Kopelindo',
                          onPressedReadMore: () {},
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 148,
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return SummaryCardWidget(
                                image: 'assets/images/pictures/dummy_offering.png',
                                description: 'Coworking Space Keren di Pelindo Place',
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
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.width/2-70,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((e) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(e.key),
                      child: Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == e.key ? Colors.white : Colors.black.withOpacity(0.3),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Halo Luna Maya,',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Estimasi SHU yang diperoleh',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Poin Anda',
                                style: TextStyle(
                                  color: AppColors.accent,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '750',
                                    style: TextStyle(
                                      color: AppColors.accent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  ImageIcon(
                                    AssetImage('assets/images/icons/point.png'),
                                    color: AppColors.accent,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Rp 77,000,000',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Material(
                                type: MaterialType.transparency,
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      _isVisible = !_isVisible;
                                    });
                                  },
                                  child: const Text(
                                    'Lihat Detail\u25BC',
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              ButtonWidget(
                                text: 'Tukar Poin',
                                fontSize: 11,
                                borderRadius: 8,
                                padding: 6,
                                icon: Icons.arrow_circle_right,
                                onPressed: (){},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: _isVisible,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 7,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Estimasi SHU Tahun 2022',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Rp 99,999,000',
                          style: TextStyle(
                            color: AppColors.accent,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Simpanan Khusus',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Rp 2,590,000',
                                  style: TextStyle(
                                    color: AppColors.accent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  'Sisa Hasil Usaha',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Rp 5,180,000',
                                  style: TextStyle(
                                    color: AppColors.accent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
