import 'package:get/get.dart';
import 'package:quran_va_tajvid/model/main_ui_class.dart';

class CategoryListController extends GetxController {
  var categoryIndex = 0;
  var favoriteCatIndex = 0;

  void changeCategoryIndex(dynamic index) {
    categoryIndex = index;
    update();
  }

  void changefavoriteCatIndex(dynamic index) {
    favoriteCatIndex = index;
    update();
  }

  List<String> list = ['Qur\'on darslari', 'Tajvid', 'Arab tili', 'Har xil'];

  List<MainUiData> favoritesList = [
    MainUiData(category: 'quran', mainUi: []),
    MainUiData(category: 'tajvid', mainUi: []),
    MainUiData(category: 'arab tili', mainUi: []),
    MainUiData(category: 'har xil', mainUi: []),
  ];

  void addFavorites(MainUi playlist) {
    favoritesList[categoryIndex].mainUi.add(playlist);
    update();
  }

  // List mainUiDataItem = mainUiDatas[categoryIndex].mainUi;

  void toggleFavorite(String playlistId) {
    var item = mainUiDatas[categoryIndex]
        .mainUi
        .firstWhere((element) => element.playlistId == playlistId);
    addFavorites(item);
    update();
    print(item);
  }

//   List<dynamic> mainUiData = [
// //!
// //! category - 'quran' - item-0
//     [
//       [
//         'Tajvid fani(suralar)',
//         'assets/images/qo.jpg',
//         'PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl',
//         65,
//         'quran',
//         'jqn'
//       ],
//       [
//         'Tartil online ko\'rsatuvi. Yo\'ldoshbek Ibrohim . Azon Tv',
//         'assets/images/T(qoq).jpg',
//         'PLY0icf9y8v8I-f96I7JbhCDuBBI89Iwri',
//         50,
//         'quran',
//         'yit'
//       ],
//       [
//         'Al-Fotiha. Shayx Alijon qori',
//         'assets/images/qo.jpg',
//         'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
//         10,
//         'quran',
//         'alijon-alfotiha'
//       ],
//       [
//         'Quron oqiymiz. Arabiy kanal',
//         'assets/images/qo.jpg',
//         'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
//         22,
//         'quran',
//         'arabiy-quron'
//       ],
//       [
//         'Qur\'on o\'qiymiz. Mulk surasi/. Arabiy kanal',
//         'assets/images/T(qoq).jpg',
//         'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
//         6,
//         'quran',
//         'arabiy-quron-mulk'
//       ],
//       [
//         'Shayx Alijon qori Qur\'oni Karim ',
//         'assets/images/T(qoq).jpg',
//         'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
//         28,
//         'quran',
//         'alijon-quroni-karim'
//       ],
//       [
//         'Abdulloh qori qiroatlari  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
//         29,
//         'quran',
//         'abdulloh-qiroat'
//       ],
//       [
//         'Turli qiroatlar. Shayx Alijon Qori  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe53yDyp_Xf88XsKZau04j-z',
//         11,
//         'quran',
//         'alijon-turli-qiroatlar'
//       ],
//       [
//         'Shayx Alijon Qori Qiroatlari',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe7eECzVhHGx9wfbjT3xqQRd',
//         57,
//         'quran',
//         'alijon-qori-qiroatlari'
//       ],
//       [
//         'Orif qori qiroatlari. AlQuranuz',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe7otT45Z4QYgVryGJ0h8QYp',
//         8,
//         'quran',
//         'orif-qiroat'
//       ],
//       [
//         'Shayx Alijon Qori | 30 pora. AlQuranuz',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe52OPlQpRcuFJEKEntvldC3',
//         22,
//         'quran',
//         'alijon-qiroat-30pora'
//       ],
//       [
//         'Qur\'on lug\'ati darslari. Minimalist Muslima',
//         'assets/images/T(qoq).jpg',
//         'PL1CmFDys0Apm4B1YQej7q6XUnRnY7tGa4',
//         13,
//         'quran',
//         'minimalist-quron-lugati'
//       ]
//     ],
// //!
// //! category - 'tajvid' - item-1
//     [
//       [
//         'Tajvid fani. Jahongir qori Nematov',
//         'assets/images/Jahongir-qori.jpg',
//         'PLi7SB6MZij7cUMk2vKsGIiiIGEhrwvc1m',
//         32,
//         'tajvid',
//         'jqn-tajvid'
//       ],
//       [
//         'Iqro - Tajvid darslari',
//         'assets/images/T(qoq).jpg',
//         'PLY0icf9y8v8L7MiAfjtwedErGmVbBRWzp',
//         24,
//         'tajvid',
//         'hasanxon-tajvid'
//       ],
//       [
//         'Tajvid darslari. Animatsion usulda, Aricha',
//         'assets/images/T(qoq).jpg',
//         'PLCk8C45se9qMgwv4iCuFdiWR1nqy2ObG8',
//         20,
//         'tajvid',
//         'aricha-animat-tajvid'
//       ],
//       [
//         'Tajvid darslari.Shayx Alijon qori',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe5DqzHG4v4qCseCCQ-pRC9f',
//         10,
//         'tajvid',
//         'alijon-tajvid'
//       ],
//       [
//         'Muallimi soniy. Shayx Alijon qori',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe5-rEkqEULQl-j2kg6MeJK9',
//         72,
//         'tajvid',
//         'alijon-muallim'
//       ],
//       [
//         'Boshlang\'ich arab tili (1-bo\'lim). Arabiy kanal',
//         'assets/images/T(qoq).jpg',
//         'PLxF_mNrzW1NUr2GA8-Q3GT1UIp99d7Ihc',
//         29,
//         'tajvid',
//         'arabiy-1bolim'
//       ],
//       [
//         'Boshlang\'ich arab tili (2-bo\'lim). Arabiy kanal',
//         'assets/images/T(qoq).jpg',
//         'PLxF_mNrzW1NWK4wgbVsFiatLGKWrDQKWe',
//         6,
//         'tajvid',
//         'arabiy-2bolim'
//       ],
//       [
//         'Tajvid darslari. Yetuk momin',
//         'assets/images/T(qoq).jpg',
//         'PLK-SXCrYkjTEzSL0pDQ_m2E2cH58b5zbm',
//         13,
//         'tajvid',
//         'yetuk-tajvid'
//       ],
//       [
//         'Muallim Soniy darslari. Qur\'on Tv',
//         'assets/images/T(qoq).jpg',
//         'PLwsL3NbfX09BbCbj48FuEkVC6XRSi4o3A',
//         50,
//         'tajvid',
//         'qurontv-maullim-soniy'
//       ],
//       [
//         'Qur\'on oyida Qur\'onni shayximiz bilan birga o\'rganamaiz.',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe5WDJ5i-3z_202TzitNXGsn',
//         31,
//         'tajvid',
//         'alijon-quron-oyida'
//       ],
//       [
//         'Tajvidga oid savol-javob. Shayx Alijon Qori  ',
//         'assets/images/T(qoq).jpg',
//         'PLi7SB6MZij7dY_vJAsa-Za4hL7gBz8D25',
//         18,
//         'tajvid',
//         'alijon-tajvid-savol'
//       ],
//       [
//         'Tajvid ilmiga oid savol-javob. Shayx Alijon Qori  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe6WmIX3ASykBgmw4DpM-zIz',
//         27,
//         'tajvid',
//         'alijon-tajvid-ilmiga-oid'
//       ],
//       [
//         'Tajvid darslari. Muhammad Odil Hamidov',
//         'assets/images/T(qoq).jpg',
//         'PLeB05hlz3P1gOyCFOpsPvF8tTxb5rjXDN',
//         20,
//         'tajvid',
//         'muhammad-tajvid-darslari'
//       ],
//     ],
// //!
// //! category - 'arab tili' - item-2
//     [
//       [
//         'Arab tili "0" dan Shams Solih. Yetuk momin',
//         'assets/images/T(qoq).jpg',
//         'PLK-SXCrYkjTGHxafc2GZanNZX-YceEqIi',
//         11,
//         'arab-tili',
//         'yetuk-arabtili'
//       ],
//       [
//         'Arab tili grammatika darslari. Yetuk momin',
//         'assets/images/T(qoq).jpg',
//         'PLK-SXCrYkjTH6DboCQSuSGF88prpOWiZG',
//         11,
//         'arab-tili',
//         'yetuk-arabgramma'
//       ],
//       [
//         'Qur\'oni Karim va Arab tilini birga o\'rganing. Muhammad Odil Hamidov',
//         'assets/images/T(qoq).jpg',
//         'PLK-PLeB05hlz3P1gLKev5jsmQ-Fmpmqi4Dt8c',
//         14,
//         'arab-tili',
//         'muhammad-quron-arabtili'
//       ],
//       [
//         'Arab tili Madina Kurs Durusul Lug\'a darsi. Muhammad Odil Hamidov',
//         'assets/images/T(qoq).jpg',
//         'PLK-PLeB05hlz3P1hgSmc-A3sN51Ci9jRStl52',
//         30,
//         'arab-tili',
//         'muhammad-madina-durusul'
//       ],
//       [
//         'Arab tili darsi. Yengil va Yangi uslubda. Muhammad Odil Hamidov',
//         'assets/images/T(qoq).jpg',
//         'PLeB05hlz3P1i9UH-kSXm7W0p5X-8N-VTu',
//         10,
//         'arab-tili',
//         'muhammad-yengil-yangi'
//       ],
//       [
//         'Arab tili lug\'ati. Minimalist Muslima',
//         'assets/images/T(qoq).jpg',
//         'PL1CmFDys0Apm7AaQIkU7YLZw5h_36brzH',
//         16,
//         'arab-tili',
//         'minimalist-lug\'at'
//       ],
//       [
//         'Madina Arab tili Darslari 1-kitob. Minimalist Muslima',
//         'assets/images/T(qoq).jpg',
//         'PL1CmFDys0ApkGXVH_uYqYmtglUvM4c3OB',
//         75,
//         'arab-tili',
//         'minimalist-madina-arab'
//       ],
//     ],
// //!
// //! category - 'har xil' - item-3
//     [
//       [
//         'Qur\'on qalb shifosi turkum suhbatlari. Shayx Alijon Qori  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe5fTC33DWTrC7x1R7UFBaVr',
//         18,
//         'har xil',
//         'alijon-turkum-suhbat'
//       ],
//       [
//         'Qur\'oniy duolar. AlQuranuz ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe4Drk581PwrbBTK_sl8dtt6',
//         37,
//         'har xil',
//         'alijon-quroniy-duolar'
//       ],
//       [
//         'Qur\'on oqib vafot etganlar. AlQuranuz  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe6sDzpYpe6v9YiPTJt14T3c',
//         26,
//         'har xil',
//         'quron-oqib-vafot'
//       ],
//       [
//         'Savol_Javob. AlQuranuz  ',
//         'assets/images/T(qoq).jpg',
//         'PL7AEFfKAwqe6WxlRlFm2SXgTlQCXh6FkK',
//         115,
//         'har xil',
//         'alijon-savol-javob'
//       ],
//       [
//         'Qur\'on qalb shifosi. AlQuranuz  ',
//         'assets/images/T(qoq).jpg',
//         'PLi7SB6MZij7dBiIr7V0eAJikNCK34yEKg',
//         19,
//         'har xil',
//         'alijon-quron-qalb-shifosi'
//       ],
//     ],
// //!
// //!
//   ];

  List<MainUiData> mainUiDatas = [
    MainUiData(
      category: 'quran',
      mainUi: [
        MainUi(
          title: 'Tajvid fani(suralar)',
          imgPath: 'assets/images/qo.jpg',
          playlistId: 'PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl',
          count: 65,
          collection: 'quran',
          doc: 'jqn',
        ),
        MainUi(
          title: 'Tartil online ko\'rsatuvi. Yo\'ldoshbek Ibrohim . Azon Tv',
          imgPath: 'assets/images/T(qoq).jpg',
          playlistId: 'PLY0icf9y8v8I-f96I7JbhCDuBBI89Iwri',
          count: 50,
          collection: 'quran',
          doc: 'yit',
        ),
        MainUi(
          title: 'Al-Fotiha. Shayx Alijon qori',
          imgPath: 'assets/images/qo.jpg',
          playlistId: 'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
          count: 10,
          collection: 'quran',
          doc: 'alijon-alfotiha',
        ),
        MainUi(
          title: 'Quron oqiymiz. Arabiy kanal',
          imgPath: 'assets/images/qo.jpg',
          playlistId: 'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
          count: 22,
          collection: 'quran',
          doc: 'arabiy-quron',
        ),
        MainUi(
          title: 'Qur\'on o\'qiymiz. Mulk surasi/. Arabiy kanal',
          imgPath: 'assets/images/T(qoq).jpg',
          playlistId: 'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
          count: 6,
          collection: 'quran',
          doc: 'arabiy-quron-mulk',
        ),
        MainUi(
          title: 'Shayx Alijon qori Qur\'oni Karim ',
          imgPath: 'assets/images/T(qoq).jpg',
          playlistId: 'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
          count: 28,
          collection: 'quran',
          doc: 'alijon-quroni-karim',
        ),
        MainUi(
          title: 'Abdulloh qori qiroatlari  ',
          imgPath: 'assets/images/T(qoq).jpg',
          playlistId: 'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
          count: 29,
          collection: 'quran',
          doc: 'abdulloh-qiroat',
        ),
        MainUi(
            title: 'Turli qiroatlar. Shayx Alijon Qori  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe53yDyp_Xf88XsKZau04j-z',
            count: 11,
            collection: 'quran',
            doc: 'alijon-turli-qiroatlar'),
        MainUi(
            title: 'Shayx Alijon Qori Qiroatlari',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe7eECzVhHGx9wfbjT3xqQRd',
            count: 57,
            collection: 'quran',
            doc: 'alijon-qori-qiroatlari'),
        MainUi(
            title: 'Orif qori qiroatlari. AlQuranuz',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe7otT45Z4QYgVryGJ0h8QYp',
            count: 8,
            collection: 'quran',
            doc: 'orif-qiroat'),
        MainUi(
            title: 'Shayx Alijon Qori | 30 pora. AlQuranuz',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe52OPlQpRcuFJEKEntvldC3',
            count: 22,
            collection: 'quran',
            doc: 'alijon-qiroat-30pora'),
        MainUi(
            title: 'Qur\'on lug\'ati darslari. Minimalist Muslima',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL1CmFDys0Apm4B1YQej7q6XUnRnY7tGa4',
            count: 13,
            collection: 'quran',
            doc: 'minimalist-quron-lugati')
      ],
    ),
    MainUiData(
      category: 'tajvid',
      mainUi: [
        MainUi(
            title: 'Tajvid fani. Jahongir qori Nematov',
            imgPath: 'assets/images/Jahongir-qori.jpg',
            playlistId: 'PLi7SB6MZij7cUMk2vKsGIiiIGEhrwvc1m',
            count: 32,
            collection: 'tajvid',
            doc: 'jqn-tajvid'),
        MainUi(
            title: 'Iqro - Tajvid darslari',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLY0icf9y8v8L7MiAfjtwedErGmVbBRWzp',
            count: 24,
            collection: 'tajvid',
            doc: 'hasanxon-tajvid'),
        MainUi(
            title: 'Tajvid darslari. Animatsion usulda, Aricha',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLCk8C45se9qMgwv4iCuFdiWR1nqy2ObG8',
            count: 20,
            collection: 'tajvid',
            doc: 'aricha-animat-tajvid'),
        MainUi(
            title: 'Tajvid darslari.Shayx Alijon qori',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe5DqzHG4v4qCseCCQ-pRC9f',
            count: 10,
            collection: 'tajvid',
            doc: 'alijon-tajvid'),
        MainUi(
            title: 'Muallimi soniy. Shayx Alijon qori',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe5-rEkqEULQl-j2kg6MeJK9',
            count: 72,
            collection: 'tajvid',
            doc: 'alijon-muallim'),
        MainUi(
            title: 'Boshlang\'ich arab tili (1-bo\'lim). Arabiy kanal',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLxF_mNrzW1NUr2GA8-Q3GT1UIp99d7Ihc',
            count: 29,
            collection: 'tajvid',
            doc: 'arabiy-1bolim'),
        MainUi(
            title: 'Boshlang\'ich arab tili (2-bo\'lim). Arabiy kanal',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLxF_mNrzW1NWK4wgbVsFiatLGKWrDQKWe',
            count: 6,
            collection: 'tajvid',
            doc: 'arabiy-2bolim'),
        MainUi(
            title: 'Tajvid darslari. Yetuk momin',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLK-SXCrYkjTEzSL0pDQ_m2E2cH58b5zbm',
            count: 13,
            collection: 'tajvid',
            doc: 'yetuk-tajvid'),
        MainUi(
            title: 'Muallim Soniy darslari. Qur\'on Tv',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLwsL3NbfX09BbCbj48FuEkVC6XRSi4o3A',
            count: 50,
            collection: 'tajvid',
            doc: 'qurontv-maullim-soniy'),
        MainUi(
            title:
                'Qur\'on oyida Qur\'onni shayximiz bilan birga o\'rganamaiz.',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe5WDJ5i-3z_202TzitNXGsn',
            count: 31,
            collection: 'tajvid',
            doc: 'alijon-quron-oyida'),
        MainUi(
            title: 'Tajvidga oid savol-javob. Shayx Alijon Qori  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLi7SB6MZij7dY_vJAsa-Za4hL7gBz8D25',
            count: 18,
            collection: 'tajvid',
            doc: 'alijon-tajvid-savol'),
        MainUi(
            title: 'Tajvid ilmiga oid savol-javob. Shayx Alijon Qori  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe6WmIX3ASykBgmw4DpM-zIz',
            count: 27,
            collection: 'tajvid',
            doc: 'alijon-tajvid-ilmiga-oid'),
        MainUi(
            title: 'Tajvid darslari. Muhammad Odil Hamidov',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLeB05hlz3P1gOyCFOpsPvF8tTxb5rjXDN',
            count: 20,
            collection: 'tajvid',
            doc: 'muhammad-tajvid-darslari'),
      ],
    ),
    MainUiData(
      category: 'arab tili',
      mainUi: [
        MainUi(
            title: 'Arab tili "0" dan Shams Solih. Yetuk momin',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLK-SXCrYkjTGHxafc2GZanNZX-YceEqIi',
            count: 11,
            collection: 'arab-tili',
            doc: 'yetuk-arabtili'),
        MainUi(
            title: 'Arab tili grammatika darslari. Yetuk momin',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLK-SXCrYkjTH6DboCQSuSGF88prpOWiZG',
            count: 11,
            collection: 'arab-tili',
            doc: 'yetuk-arabgramma'),
        MainUi(
            title:
                'Qur\'oni Karim va Arab tilini birga o\'rganing. Muhammad Odil Hamidov',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLK-PLeB05hlz3P1gLKev5jsmQ-Fmpmqi4Dt8c',
            count: 14,
            collection: 'arab-tili',
            doc: 'muhammad-quron-arabtili'),
        MainUi(
            title:
                'Arab tili Madina Kurs Durusul Lug\'a darsi. Muhammad Odil Hamidov',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLK-PLeB05hlz3P1hgSmc-A3sN51Ci9jRStl52',
            count: 30,
            collection: 'arab-tili',
            doc: 'muhammad-madina-durusul'),
        MainUi(
            title:
                'Arab tili darsi. Yengil va Yangi uslubda. Muhammad Odil Hamidov',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLeB05hlz3P1i9UH-kSXm7W0p5X-8N-VTu',
            count: 10,
            collection: 'arab-tili',
            doc: 'muhammad-yengil-yangi'),
        MainUi(
            title: 'Arab tili lug\'ati. Minimalist Muslima',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL1CmFDys0Apm7AaQIkU7YLZw5h_36brzH',
            count: 16,
            collection: 'arab-tili',
            doc: 'minimalist-lug\'at'),
        MainUi(
            title: 'Madina Arab tili Darslari 1-kitob. Minimalist Muslima',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL1CmFDys0ApkGXVH_uYqYmtglUvM4c3OB',
            count: 75,
            collection: 'arab-tili',
            doc: 'minimalist-madina-arab'),
      ],
    ),
    MainUiData(
      category: 'har xil',
      mainUi: [
        MainUi(
            title:
                'Qur\'on qalb shifosi turkum suhbatlari. Shayx Alijon Qori  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe5fTC33DWTrC7x1R7UFBaVr',
            count: 18,
            collection: 'har xil',
            doc: 'alijon-turkum-suhbat'),
        MainUi(
            title: 'Qur\'oniy duolar. AlQuranuz ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe4Drk581PwrbBTK_sl8dtt6',
            count: 37,
            collection: 'har xil',
            doc: 'alijon-quroniy-duolar'),
        MainUi(
            title: 'Qur\'on oqib vafot etganlar. AlQuranuz  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe6sDzpYpe6v9YiPTJt14T3c',
            count: 26,
            collection: 'har xil',
            doc: 'quron-oqib-vafot'),
        MainUi(
            title: 'Savol_Javob. AlQuranuz  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PL7AEFfKAwqe6WxlRlFm2SXgTlQCXh6FkK',
            count: 115,
            collection: 'har xil',
            doc: 'alijon-savol-javob'),
        MainUi(
            title: 'Qur\'on qalb shifosi. AlQuranuz  ',
            imgPath: 'assets/images/T(qoq).jpg',
            playlistId: 'PLi7SB6MZij7dBiIr7V0eAJikNCK34yEKg',
            count: 19,
            collection: 'har xil',
            doc: 'alijon-quron-qalb-shifosi'),
      ],
    ),
  ];
}
