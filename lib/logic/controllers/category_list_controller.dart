import 'package:get/get.dart';

class CategoryListController extends GetxController {
  var categoryIndex = 0;

  void changeCategoryIndex(dynamic index) {
    categoryIndex = index;
    update();
  }

  List<String> list = ['Qur\'on darslari', 'Tajvid', 'Arab tili', 'Har xil'];

  List<dynamic> mainUiData = [
//!
//! category - 'quran' - item-0
    [
      [
        'Tajvid fani(suralar)',
        'assets/images/qo.jpg',
        'PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl',
        65,
        'quran',
        'jqn'
      ],
      [
        'Tartil online ko\'rsatuvi. Yo\'ldoshbek Ibrohim . Azon Tv',
        'assets/images/T(qoq).jpg',
        'PLY0icf9y8v8I-f96I7JbhCDuBBI89Iwri',
        16,
        'quran',
        'yit'
      ],
      [
        'Al-Fotiha. Shayx Alijon qori',
        'assets/images/qo.jpg',
        'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
        10,
        'quran',
        'alijon-alfotiha'
      ],
      [
        'Quron oqiymiz. Arabiy kanal',
        'assets/images/qo.jpg',
        'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
        22,
        'quran',
        'arabiy-quron'
      ],
      [
        'Qur\'on o\'qiymiz. Mulk surasi/. Arabiy kanal',
        'assets/images/T(qoq).jpg',
        'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
        6,
        'quran',
        'arabiy-quron-mulk'
      ],
      [
        'Shayx Alijon qori Qur\'oni Karim ',
        'assets/images/T(qoq).jpg',
        'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
        28,
        'quran',
        'alijon-quroni-karim'
      ],
      [
        'Abdulloh qori qiroatlari  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
        29,
        'quran',
        'abdulloh-qiroat'
      ],
      [
        'Turli qiroatlar. Shayx Alijon Qori  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe53yDyp_Xf88XsKZau04j-z',
        11,
        'quran',
        'alijon-turli-qiroatlar'
      ],
      [
        'Shayx Alijon Qori Qiroatlari',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe7eECzVhHGx9wfbjT3xqQRd',
        57,
        'quran',
        'alijon-qori-qiroatlari'
      ],
      [
        'Orif qori qiroatlari. AlQuranuz',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe7otT45Z4QYgVryGJ0h8QYp',
        8,
        'quran',
        'orif-qiroat'
      ],
      [
        'Shayx Alijon Qori | 30 pora. AlQuranuz',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe52OPlQpRcuFJEKEntvldC3',
        22,
        'quran',
        'alijon-qiroat-30pora'
      ],
      [
        'Qur\'on lug\'ati darslari. Minimalist Muslima',
        'assets/images/T(qoq).jpg',
        'PL1CmFDys0Apm4B1YQej7q6XUnRnY7tGa4',
        13,
        'quran',
        'minimalist-quron-lugati'
      ]
    ],
//!
//! category - 'tajvid' - item-1
    [
      [
        'Tajvid fani. Jahongir qori Nematov',
        'assets/images/Jahongir-qori.jpg',
        'PLi7SB6MZij7cUMk2vKsGIiiIGEhrwvc1m',
        32,
        'tajvid',
        'jqn-tajvid'
      ],
      [
        'Iqro - Tajvid darslari',
        'assets/images/T(qoq).jpg',
        'PLY0icf9y8v8L7MiAfjtwedErGmVbBRWzp',
        24,
        'tajvid',
        'hasanxon-tajvid'
      ],
      [
        'Tajvid darslari. Animatsion usulda, Aricha',
        'assets/images/T(qoq).jpg',
        'PLCk8C45se9qMgwv4iCuFdiWR1nqy2ObG8',
        20,
        'tajvid',
        'aricha-animat-tajvid'
      ],
      [
        'Tajvid darslari.Shayx Alijon qori',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe5DqzHG4v4qCseCCQ-pRC9f',
        10,
        'tajvid',
        'alijon-tajvid'
      ],
      [
        'Muallimi soniy. Shayx Alijon qori',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe5-rEkqEULQl-j2kg6MeJK9',
        72,
        'tajvid',
        'alijon-muallim'
      ],
      [
        'Boshlang\'ich arab tili (1-bo\'lim). Arabiy kanal',
        'assets/images/T(qoq).jpg',
        'PLxF_mNrzW1NUr2GA8-Q3GT1UIp99d7Ihc',
        29,
        'tajvid',
        'arabiy-1bolim'
      ],
      [
        'Boshlang\'ich arab tili (2-bo\'lim). Arabiy kanal',
        'assets/images/T(qoq).jpg',
        'PLxF_mNrzW1NWK4wgbVsFiatLGKWrDQKWe',
        6,
        'tajvid',
        'arabiy-2bolim'
      ],
      [
        'Tajvid darslari. Yetuk momin',
        'assets/images/T(qoq).jpg',
        'PLK-SXCrYkjTEzSL0pDQ_m2E2cH58b5zbm',
        13,
        'tajvid',
        'yetuk-tajvid'
      ],
      [
        'Muallim Soniy darslari. Qur\'on Tv',
        'assets/images/T(qoq).jpg',
        'PLwsL3NbfX09BbCbj48FuEkVC6XRSi4o3A',
        50,
        'tajvid',
        'qurontv-maullim-soniy'
      ],
      [
        'Qur\'on oyida Qur\'onni shayximiz bilan birga o\'rganamaiz.',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe5WDJ5i-3z_202TzitNXGsn',
        31,
        'tajvid',
        'alijon-quron-oyida'
      ],
      [
        'Tajvidga oid savol-javob. Shayx Alijon Qori  ',
        'assets/images/T(qoq).jpg',
        'PLi7SB6MZij7dY_vJAsa-Za4hL7gBz8D25',
        18,
        'tajvid',
        'alijon-tajvid-savol'
      ],
      [
        'Tajvid ilmiga oid savol-javob. Shayx Alijon Qori  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe6WmIX3ASykBgmw4DpM-zIz',
        27,
        'tajvid',
        'alijon-tajvid-ilmiga-oid'
      ],
      [
        'Tajvid darslari. Muhammad Odil Hamidov',
        'assets/images/T(qoq).jpg',
        'PLeB05hlz3P1gOyCFOpsPvF8tTxb5rjXDN',
        20,
        'tajvid',
        'muhammad-tajvid-darslari'
      ],
    ],
//!
//! category - 'arab tili' - item-2
    [
      [
        'Arab tili "0" dan Shams Solih. Yetuk momin',
        'assets/images/T(qoq).jpg',
        'PLK-SXCrYkjTGHxafc2GZanNZX-YceEqIi',
        11,
        'arab-tili',
        'yetuk-arabtili'
      ],
      [
        'Arab tili grammatika darslari. Yetuk momin',
        'assets/images/T(qoq).jpg',
        'PLK-SXCrYkjTH6DboCQSuSGF88prpOWiZG',
        11,
        'arab-tili',
        'yetuk-arabgramma'
      ],
      [
        'Qur\'oni Karim va Arab tilini birga o\'rganing. Muhammad Odil Hamidov',
        'assets/images/T(qoq).jpg',
        'PLK-PLeB05hlz3P1gLKev5jsmQ-Fmpmqi4Dt8c',
        14,
        'arab-tili',
        'muhammad-quron-arabtili'
      ],
      [
        'Arab tili Madina Kurs Durusul Lug\'a darsi. Muhammad Odil Hamidov',
        'assets/images/T(qoq).jpg',
        'PLK-PLeB05hlz3P1hgSmc-A3sN51Ci9jRStl52',
        30,
        'arab-tili',
        'muhammad-madina-durusul'
      ],
      [
        'Arab tili darsi. Yengil va Yangi uslubda. Muhammad Odil Hamidov',
        'assets/images/T(qoq).jpg',
        'PLeB05hlz3P1i9UH-kSXm7W0p5X-8N-VTu',
        10,
        'arab-tili',
        'muhammad-yengil-yangi'
      ],
      [
        'Arab tili lug\'ati. Minimalist Muslima',
        'assets/images/T(qoq).jpg',
        'PL1CmFDys0Apm7AaQIkU7YLZw5h_36brzH',
        16,
        'arab-tili',
        'minimalist-lug\'at'
      ],
      [
        'Madina Arab tili Darslari 1-kitob. Minimalist Muslima',
        'assets/images/T(qoq).jpg',
        'PL1CmFDys0ApkGXVH_uYqYmtglUvM4c3OB',
        75,
        'arab-tili',
        'minimalist-madina-arab'
      ],
    ],
//!
//! category - 'har xil' - item-3
    [
      [
        'Qur\'on qalb shifosi turkum suhbatlari. Shayx Alijon Qori  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe5fTC33DWTrC7x1R7UFBaVr',
        18,
        'har xil',
        'alijon-turkum-suhbat'
      ],
      [
        'Qur\'oniy duolar. AlQuranuz ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe4Drk581PwrbBTK_sl8dtt6',
        37,
        'har xil',
        'alijon-quroniy-duolar'
      ],
      [
        'Qur\'on oqib vafot etganlar. AlQuranuz  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe6sDzpYpe6v9YiPTJt14T3c',
        26,
        'har xil',
        'quron-oqib-vafot'
      ],
      [
        'Savol_Javob. AlQuranuz  ',
        'assets/images/T(qoq).jpg',
        'PL7AEFfKAwqe6WxlRlFm2SXgTlQCXh6FkK',
        115,
        'har xil',
        'alijon-savol-javob'
      ],
      [
        'Qur\'on qalb shifosi. AlQuranuz  ',
        'assets/images/T(qoq).jpg',
        'PLi7SB6MZij7dBiIr7V0eAJikNCK34yEKg',
        19,
        'har xil',
        'alijon-quron-qalb-shifosi'
      ],
    ],
//!
//!
  ];

  // List<MainUiData> mainUiDatas = [
  //   MainUiData(
  //     category: 'quran',
  //     mainUi: [
  //       MainUi(
  //         title: 'Tajvid fani(suralar)',
  //         imgPath: 'assets/images/qo.jpg',
  //         token: 'PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl',
  //         count: 65,
  //         type: 'quran',
  //         author: 'jqn',
  //       ),
  //       MainUi(
  //         title: 'Tartil online ko\'rsatuvi. Yo\'ldoshbek Ibrohim . Azon Tv',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PLY0icf9y8v8I-f96I7JbhCDuBBI89Iwri',
  //         count: 16,
  //         type: 'quran',
  //         author: 'yit',
  //       ),
  //     ],
  //   ),
  //   MainUiData(
  //     category: 'tajvid',
  //     mainUi: [
  //       MainUi(
  //         title: 'Al-Fotiha. Shayx Alijon qori',
  //         imgPath: 'assets/images/qo.jpg',
  //         token: 'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
  //         count: 10,
  //         type: 'quran',
  //         author: 'alijon-alfotiha',
  //       ),
  //       MainUi(
  //         title: 'Quron oqiymiz. Arabiy kanal',
  //         imgPath: 'assets/images/qo.jpg',
  //         token: 'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
  //         count: 22,
  //         type: 'quran',
  //         author: 'arabiy-quron',
  //       ),
  //       MainUi(
  //         title: 'Qur\'on o\'qiymiz. Mulk surasi/. Arabiy kanal',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
  //         count: 6,
  //         type: 'quran',
  //         author: 'arabiy-quron-mulk',
  //       ),
  //     ],
  //   ),
  //   MainUiData(
  //     category: 'arab tili',
  //     mainUi: [
  //       MainUi(
  //         title: 'Shayx Alijon qori Qur\'oni Karim ',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
  //         count: 28,
  //         type: 'quran',
  //         author: 'alijon-quroni-karim',
  //       ),
  //       MainUi(
  //         title: 'Abdulloh qori qiroatlari  ',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
  //         count: 29,
  //         type: 'quran',
  //         author: 'abdulloh-qiroat',
  //       ),
  //     ],
  //   ),
  //   MainUiData(
  //     category: 'har xil',
  //     mainUi: [
  //       MainUi(
  //         title: 'Al-Fotiha. Shayx Alijon qori',
  //         imgPath: 'assets/images/qo.jpg',
  //         token: 'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
  //         count: 10,
  //         type: 'quran',
  //         author: 'alijon-alfotiha',
  //       ),
  //       MainUi(
  //         title: 'Quron oqiymiz. Arabiy kanal',
  //         imgPath: 'assets/images/qo.jpg',
  //         token: 'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
  //         count: 22,
  //         type: 'quran',
  //         author: 'arabiy-quron',
  //       ),
  //       MainUi(
  //         title: 'Qur\'on o\'qiymiz. Mulk surasi/. Arabiy kanal',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
  //         count: 6,
  //         type: 'quran',
  //         author: 'arabiy-quron-mulk',
  //       ),
  //       MainUi(
  //         title: 'Shayx Alijon qori Qur\'oni Karim ',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
  //         count: 28,
  //         type: 'quran',
  //         author: 'alijon-quroni-karim',
  //       ),
  //       MainUi(
  //         title: 'Abdulloh qori qiroatlari  ',
  //         imgPath: 'assets/images/T(qoq).jpg',
  //         token: 'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
  //         count: 29,
  //         type: 'quran',
  //         author: 'abdulloh-qiroat',
  //       ),
  //     ],
  //   ),
  // ];
}
