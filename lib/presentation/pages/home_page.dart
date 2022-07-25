import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/pages/pages.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int index = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 2 ? AppBar(
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            color: AppColors.accent,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: AppStrings.fontFamily,
            fontWeight: FontWeight.w500,
          ),
          indicatorColor: AppColors.accent,
          indicatorWeight: 4,
          tabs: <Widget>[
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Pesan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  // const SizedBox(width: 5),
                  // Container(
                  //   decoration: const BoxDecoration(
                  //     color: AppColors.accent,
                  //     shape: BoxShape.circle,
                  //   ),
                  //   width: 10,
                  //   height: 10,
                  // ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Riwayat',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.accent,
                      shape: BoxShape.circle,
                    ),
                    width: 10,
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ) : appBar[index],
      backgroundColor: index < 2 ? AppColors.primary : Colors.white,
      body: index == 2 ? NotifikasiPage(tabController: _tabController) : pages[index],
      bottomNavigationBar: bottomNavBar(context),
    );
  }

  List<PreferredSizeWidget?> appBar = [
    null,
    null,
    null,
    AppBar(
      title: const Text(
        'Profil Saya',
        style: TextStyle(
          color: AppColors.accent,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      elevation: 0,
    ),
  ];

  List<Widget?> pages = [
    const BerandaPage(),
    const TokopelindoPage(),
    null,
    const ProfilPage(),
  ];

  Widget bottomNavBar(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: index < 2 ? Colors.white : AppColors.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavBarIconWidget(
            onPressed: () => setState(() => index = 0),
            isActive: index == 0,
            index: index,
            activeIcon: 'assets/images/icons/beranda_active.png',
            icon: 'assets/images/icons/beranda.png',
            size: 28,
          ),
          BottomNavBarIconWidget(
            onPressed: () => setState(() => index = 1),
            isActive: index == 1,
            index: index,
            activeIcon: 'assets/images/icons/tokopelindo_active.png',
            icon: 'assets/images/icons/tokopelindo.png',
            size: 28,
          ),
          BottomNavBarIconWidget(
            onPressed: () => setState(() => index = 2),
            isActive: index == 2,
            index: index,
            activeIcon: 'assets/images/icons/notifikasi_active.png',
            icon: 'assets/images/icons/notifikasi.png',
            size: 26,
            notification: 2,
          ),
          BottomNavBarIconWidget(
            onPressed: () => setState(() => index = 3),
            isActive: index == 3,
            index: index,
            activeIcon: 'assets/images/icons/profil_active.png',
            icon: 'assets/images/icons/profil.png',
            size: 24,
          ),
        ],
      ),
    );
  }
}
