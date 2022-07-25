import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';
import 'package:collection/collection.dart';

class PembiayaanPage extends StatefulWidget {
  const PembiayaanPage({Key? key}) : super(key: key);

  @override
  State<PembiayaanPage> createState() => _PembiayaanPageState();
}

class _PembiayaanPageState extends State<PembiayaanPage> {
  FocusNode focusNode = FocusNode();
  int _selectedIndex = 0;
  int _plafonIndex = 0;
  int _tenorIndex = 0;

  List<Map<String, List<dynamic>>> pembiayaan = [
    {
      'category': ['Instan', 'Max. 5 Jt', 'Ang. 10x'],
      'plafon': [1, 2, 3, 4, 5],
      'tenor': [1, 2, 3, 4, 5],
    },
    {
      'category': ['Reguler', '10-50 Jt', 'Max. 10 Th'],
      'plafon': [10, 20, 30, 40, 50],
      'tenor': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    },
    {
      'category': ['Mitra', '> 50 Jt', 'Max. 15 Th'],
      'plafon': [60, 70, 80, 90, 100],
      'tenor': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener((){
      setState((){});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pembiayaan Multiguna',
          style: TextStyle(
            color: AppColors.accent,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: pembiayaan.mapIndexed((i, e) => InkWell(
                  onTap: () {
                    setState((){
                      _selectedIndex = i;
                      _plafonIndex = 0;
                      _tenorIndex = 0;
                    });
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: _selectedIndex == i ? AppColors.primary : null,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: _selectedIndex == i ? AppColors.primary : AppColors.grey, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e['category']![0],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: _selectedIndex == i ? Colors.white : AppColors.grey,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e['category']![1],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: _selectedIndex == i ? Colors.white : AppColors.grey,
                              ),
                            ),
                            Text(
                              e['category']![2],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: _selectedIndex == i ? Colors.white : AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )).toList(),
              ),
            ),
            Container(
              color: AppColors.white,
              height: 10,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Plafon',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        Text(
                          'Rp ${pembiayaan[_selectedIndex]['plafon']![_plafonIndex]},000,000',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.accent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 48,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: pembiayaan[_selectedIndex]['plafon']!.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return FinancingCardWidget(
                          text: '${pembiayaan[_selectedIndex]['plafon']![index]} Jt',
                          isActive: index == _plafonIndex,
                          onPressed: () {
                            setState((){
                              _plafonIndex = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Tenor',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        Text(
                          '${pembiayaan[_selectedIndex]['tenor']![_tenorIndex]} Tahun',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.accent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 48,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: pembiayaan[_selectedIndex]['tenor']!.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return FinancingCardWidget(
                          text: '${pembiayaan[_selectedIndex]['tenor']![index]} Th',
                          isActive: index == _tenorIndex,
                          onPressed: () {
                            setState((){
                              _tenorIndex = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.white,
              height: 10,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Promo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),
                    child: TextFormField(
                      focusNode: focusNode,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppStrings.fontFamily,
                        letterSpacing: 0.5,
                        color: AppColors.primary,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Gunakan Promo yang Tersedia',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppStrings.fontFamily,
                          letterSpacing: 0.5,
                          color: AppColors.grey,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            color: focusNode.hasFocus ? AppColors.primary : AppColors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.white,
              height: 10,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Detail Pembiayaan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonWidget(
              text: 'Ajukan Pembiayaan',
              fontSize: 12,
              borderRadius: 10,
              padding: 10,
              fontWeight: FontWeight.w700,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
