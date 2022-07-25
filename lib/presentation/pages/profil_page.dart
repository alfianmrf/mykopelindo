import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  List<Map<String, dynamic>> listProfile = [
    {
      'leading': 'assets/images/icons/voucher.png',
      'title': 'Poin & Voucher',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/berita.png',
      'title': 'Event & Berita',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/dompet.png',
      'title': 'Dompet Saya',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/toko.png',
      'title': 'Toko Saya',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/keamanan.png',
      'title': 'Keamanan',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/privasi.png',
      'title': 'Kebijakan Privasi',
      'onPressed': (){},
    },
    {
      'leading': 'assets/images/icons/bantuan.png',
      'title': 'Bantuan',
      'onPressed': (){},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(32)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/pictures/dummy_profile.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Luna Maya',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('810369', style: TextStyle(color: Colors.white)),
                      Text('lunmay@gmail.com', style: TextStyle(color: Colors.white)),
                      Text('+6281230777769', style: TextStyle(color: Colors.white)),
                      Text('Nginden VI/27, Surabaya', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  children: const [
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: listProfile.length,
            itemBuilder: (BuildContext context, int index) {
              return ProfileMenuWidget(
                leading: listProfile[index]['leading'],
                title: listProfile[index]['title'],
                onPressed: listProfile[index]['onPressed'],
                isLastIndex: index == listProfile.length-1,
              );
            },
          ),
        ),
      ],
    );
  }
}
