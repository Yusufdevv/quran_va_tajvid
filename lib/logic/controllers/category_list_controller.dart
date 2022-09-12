import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quran_va_tajvid/model/playlists.dart';

class CategoryListController extends GetxController {
  var categoryIndex = 0;
  var favoriteCatIndex = 0;

  List<Playlists> playlistsList = [];
  late Box<Playlists> playlistBox;

  CategoryListController() {
    playlistBox = Hive.box('playlistBox');
    print(playlistBox.get('playlistBox') == null);
    if (playlistBox.get('playlistBox') == null) {
      playlists.forEach((element) {
        playlistBox.add(element);
      });
    }
    playlistsList = [];
    for (int i = 0; i < playlistBox.values.length; i++) {
      playlistsList.add(playlistBox.getAt(i)!);
    }
  }

  // List<Playlists> get favoritesPlaylists {
  //   return playlistsList.where((element) => element)
  // }

  void changeCategoryIndex(dynamic index) {
    categoryIndex = index;
    update();
  }

  void changefavoriteCatIndex(dynamic index) {
    favoriteCatIndex = index;
    update();
  }

  // void addFavorites(MainUi playlist) {
  // favoritesList[categoryIndex].mainUi.add(item);
  //   update();
  // }

  // void toggleFavorite(String playlistId) {
  //   var item = mainUiDatas[categoryIndex]
  //       .mainUi
  //       .firstWhere((element) => element.playlistId == playlistId);
  //       favoritesList[categoryIndex].mainUi.add(item);
  //   // addFavorites(item);
  //   update();
  // }

  void toggleFavorite(Playlist playlist, bool isFavoriteScreen) {
    int playlistsIndex = isFavoriteScreen ? favoriteCatIndex : categoryIndex;
    int index = playlistsList[playlistsIndex].playlist.indexOf(playlist);
    playlistsList[playlistsIndex].playlist[index].isFavorite =
        !playlistsList[playlistsIndex].playlist[index].isFavorite;
    playlistsList[playlistsIndex].playlist[index].save();
    update();
  }

  static registerAdapter() {
    Hive.registerAdapter(PlaylistsAdapter());
    Hive.registerAdapter(PlaylistAdapter());
  }

  List<String> categoryList = [
    'Tajvid darslari',
    'Qur\'on darslari',
    'Arab tili',
    'Har xil'
  ];

  List<Playlists> playlists = [
    Playlists(
      category: 'tajvid',
      playlist: [
        Playlist(
            title: 'Tajvid fani. Jahongir qori Nematov',
            imgPath: 'assets/images/tajvid-fani-jqn.jpg',
            playlistId: 'PLi7SB6MZij7cUMk2vKsGIiiIGEhrwvc1m',
            count: 32,
            collection: 'tajvid',
            doc: 'jqn-tajvid'),
        Playlist(
            title: 'Iqro - Tajvid darslari',
            imgPath: 'assets/images/iqro-azontv.jpg',
            playlistId: 'PLY0icf9y8v8L7MiAfjtwedErGmVbBRWzp',
            count: 24,
            collection: 'tajvid',
            doc: 'hasanxon-tajvid'),
        Playlist(
            title: 'Tajvid darslari. Animatsion usulda',
            imgPath: 'assets/images/taj-animatsion-usulda-aricha.jpg',
            playlistId: 'PLCk8C45se9qMgwv4iCuFdiWR1nqy2ObG8',
            count: 20,
            collection: 'tajvid',
            doc: 'aricha-animat-tajvid'),
        Playlist(
            title: 'Tajvid darslari. Shayx Alijon qori',
            imgPath: 'assets/images/taj-darslari-sh-ali-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe5DqzHG4v4qCseCCQ-pRC9f',
            count: 10,
            collection: 'tajvid',
            doc: 'alijon-tajvid'),
        Playlist(
            title: 'Muallimi soniy. Shayx Alijon qori',
            imgPath: 'assets/images/muallim-s-sh-ali-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe5-rEkqEULQl-j2kg6MeJK9',
            count: 72,
            collection: 'tajvid',
            doc: 'alijon-muallim'),
        Playlist(
            title: 'Boshlang\'ich arab tili (1-bo\'lim). Arabiy kanal',
            imgPath: 'assets/images/bosh-arabtili-1-bolim-arabiy kanal.jpg',
            playlistId: 'PLxF_mNrzW1NUr2GA8-Q3GT1UIp99d7Ihc',
            count: 29,
            collection: 'tajvid',
            doc: 'arabiy-1bolim'),
        Playlist(
            title: 'Boshlang\'ich arab tili (2-bo\'lim). Arabiy kanal',
            imgPath: 'assets/images/bosh-arabtili-2-bolim-arabiy.jpg',
            playlistId: 'PLxF_mNrzW1NWK4wgbVsFiatLGKWrDQKWe',
            count: 6,
            collection: 'tajvid',
            doc: 'arabiy-2bolim'),
        Playlist(
            title: 'Tajvid darslari. Yetuk momin',
            imgPath: 'assets/images/taj-darslari-yetuk-momin.jpg',
            playlistId: 'PLK-SXCrYkjTEzSL0pDQ_m2E2cH58b5zbm',
            count: 13,
            collection: 'tajvid',
            doc: 'yetuk-tajvid'),
        Playlist(
            title: 'Muallim Soniy darslari. Qur\'on Tv',
            imgPath: 'assets/images/muallim soniy-qurontv.jpg',
            playlistId: 'PLwsL3NbfX09BbCbj48FuEkVC6XRSi4o3A',
            count: 50,
            collection: 'tajvid',
            doc: 'qurontv-maullim-soniy'),
        // image
        Playlist(
            title:
                'Qur\'on oyida Qur\'onni shayximiz bilan birga o\'rganamiz.',
            imgPath: 'assets/images/quron-oyida-quronni-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe5WDJ5i-3z_202TzitNXGsn',
            count: 31,
            collection: 'tajvid',
            doc: 'alijon-quron-oyida'),
        Playlist(
            title: 'Tajvidga oid savol-javob. Shayx Alijon Qori  ',
            imgPath: 'assets/images/taj-oid-savol-javob-alquran.jpg',
            playlistId: 'PLi7SB6MZij7dY_vJAsa-Za4hL7gBz8D25',
            count: 18,
            collection: 'tajvid',
            doc: 'alijon-tajvid-savol'),
        Playlist(
            title: 'Tajvid ilmiga oid savol-javob. Shayx Alijon Qori  ',
            imgPath: 'assets/images/taj-ilmiga-oid-savol-j-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe6WmIX3ASykBgmw4DpM-zIz',
            count: 27,
            collection: 'tajvid',
            doc: 'alijon-tajvid-ilmiga-oid'),
        Playlist(
            title: 'Tajvid darslari. Muhammad Odil Hamidov',
            imgPath: 'assets/images/taj-darslari-muhammad-odil.jpg',
            playlistId: 'PLeB05hlz3P1gOyCFOpsPvF8tTxb5rjXDN',
            count: 20,
            collection: 'tajvid',
            doc: 'muhammad-tajvid-darslari'),
      ],
    ),
    Playlists(
      category: 'quran',
      playlist: [
        Playlist(
          title: 'Tajvid fani(suralar)',
          imgPath: 'assets/images/Jahongir-qori.jpg',
          playlistId: 'PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl',
          count: 65,
          collection: 'quran',
          doc: 'jqn',
        ),
        Playlist(
          title: 'Tartil online ko\'rsatuvi. Yo\'ldoshbek Ibrohim . Azon Tv',
          imgPath: 'assets/images/tartil-onlayn-azontv.jpg',
          playlistId: 'PLY0icf9y8v8I-f96I7JbhCDuBBI89Iwri',
          count: 50,
          collection: 'quran',
          doc: 'yit',
        ),
        Playlist(
          title: 'Al-Fotiha. Shayx Alijon qori',
          imgPath: 'assets/images/al-fotiha-alquran.jpg',
          playlistId: 'PL7AEFfKAwqe6iCny_Lrw1bi87Ivh4Vp3V',
          count: 10,
          collection: 'quran',
          doc: 'alijon-alfotiha',
        ),
        Playlist(
          title: 'Qur\'on o\'qiymiz',
          imgPath: 'assets/images/quron-oqiymiz-arabiy.jpg',
          playlistId: 'PLxF_mNrzW1NV36-rNFZmjuaQCLPxjYNdf',
          count: 22,
          collection: 'quran',
          doc: 'arabiy-quron',
        ),
        Playlist(
          title: 'Qur\'on o\'qiymiz. Mulk surasi',
          imgPath: 'assets/images/quron-oqiymiz-mulk-arabiy.jpg',
          playlistId: 'PLxF_mNrzW1NX7QvGZwD1RW35qWalvvnii',
          count: 6,
          collection: 'quran',
          doc: 'arabiy-quron-mulk',
        ),
        Playlist(
            title: 'Qur\'on lug\'ati darslari',
            imgPath: 'assets/images/quron-lugati-minimalist.jpg',
            playlistId: 'PL1CmFDys0Apm4B1YQej7q6XUnRnY7tGa4',
            count: 13,
            collection: 'quran',
            doc: 'minimalist-quron-lugati'),
        Playlist(
          title: 'Shayx Alijon qori Qur\'oni Karim ',
          imgPath: 'assets/images/shaxy-ali-quroni-karim-alquran.jpg',
          playlistId: 'PLi7SB6MZij7fXcdVTqth-AcXJk-eCqarV',
          count: 28,
          collection: 'quran',
          doc: 'alijon-quroni-karim',
        ),
        Playlist(
          title: 'Abdulloh qori qiroatlari',
          imgPath: 'assets/images/abdulloh-qori-alquran.jpg',
          playlistId: 'PL7AEFfKAwqe5_3D4HqLEzZ2SOZ91ecioL',
          count: 29,
          collection: 'quran',
          doc: 'abdulloh-qiroat',
        ),
        Playlist(
            title: 'Turli qiroatlar. Shayx Alijon Qori',
            imgPath: 'assets/images/turli-qiroatlar-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe53yDyp_Xf88XsKZau04j-z',
            count: 11,
            collection: 'quran',
            doc: 'alijon-turli-qiroatlar'),
        Playlist(
            title: 'Shayx Alijon Qori Qiroatlari',
            imgPath: 'assets/images/shaxy-ali-qiroatlari-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe7eECzVhHGx9wfbjT3xqQRd',
            count: 57,
            collection: 'quran',
            doc: 'alijon-qori-qiroatlari'),
        Playlist(
            title: 'Orif qori qiroatlari',
            imgPath: 'assets/images/orif-qori-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe7otT45Z4QYgVryGJ0h8QYp',
            count: 8,
            collection: 'quran',
            doc: 'orif-qiroat'),
        Playlist(
            title: 'Shayx Alijon Qori | 30 pora',
            imgPath: 'assets/images/shayx-ali-30pora-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe52OPlQpRcuFJEKEntvldC3',
            count: 22,
            collection: 'quran',
            doc: 'alijon-qiroat-30pora'),
      ],
    ),
    Playlists(
      category: 'arab tili',
      playlist: [
        Playlist(
            title: 'Arab tili "0" dan. Shams Solih',
            imgPath: 'assets/images/arabtili0dan-shams-solih-yetukm.jpg',
            playlistId: 'PLK-SXCrYkjTGHxafc2GZanNZX-YceEqIi',
            count: 11,
            collection: 'arab-tili',
            doc: 'yetuk-arabtili'),
        Playlist(
            title: 'Arab tili grammatika darslari',
            imgPath: 'assets/images/arabtili-gram-yetuk.jpg',
            playlistId: 'PLK-SXCrYkjTH6DboCQSuSGF88prpOWiZG',
            count: 11,
            collection: 'arab-tili',
            doc: 'yetuk-arabgramma'),
        Playlist(
            title:
                'Qur\'oni Karim va Arab tilini birga o\'rganing',
            imgPath: 'assets/images/quroni-karim-va-arab-tilini-birga-muhammad-odil.jpg',
            playlistId: 'PLK-PLeB05hlz3P1gLKev5jsmQ-Fmpmqi4Dt8c',
            count: 14,
            collection: 'arab-tili',
            doc: 'muhammad-quron-arabtili'),
        Playlist(
            title:
                'Arab tili Madina Kurs Durusul Lug\'a darsi',
            imgPath: 'assets/images/arabtili-madina-kurs-durusul-luga-muhammad.jpg',
            playlistId: 'PLK-PLeB05hlz3P1hgSmc-A3sN51Ci9jRStl52',
            count: 30,
            collection: 'arab-tili',
            doc: 'muhammad-madina-durusul'),
        Playlist(
            title:
                'Arab tili darsi. Yengil va Yangi uslubda',
            imgPath: 'assets/images/arabtili-yengil-va-yangi-muhammad.jpg',
            playlistId: 'PLeB05hlz3P1i9UH-kSXm7W0p5X-8N-VTu',
            count: 10,
            collection: 'arab-tili',
            doc: 'muhammad-yengil-yangi'),
        Playlist(
            title: 'Arab tili lug\'ati',
            imgPath: 'assets/images/arabtili-lug\'ati-minimalist-muslim.jpg',
            playlistId: 'PL1CmFDys0Apm7AaQIkU7YLZw5h_36brzH',
            count: 16,
            collection: 'arab-tili',
            doc: 'minimalist-lug\'at'),
        Playlist(
            title: 'Madina Arab tili Darslari 1-kitob',
            imgPath: 'assets/images/madina-arabtili-1kitob-minimalist.jpg',
            playlistId: 'PL1CmFDys0ApkGXVH_uYqYmtglUvM4c3OB',
            count: 75,
            collection: 'arab-tili',
            doc: 'minimalist-madina-arab'),
      ],
    ),
    Playlists(
      category: 'har xil',
      playlist: [
        Playlist(
            title:
                'Qur\'on qalb shifosi turkum suhbatlari',
            imgPath: 'assets/images/quron-qalb-shifosi-turkum-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe5fTC33DWTrC7x1R7UFBaVr',
            count: 18,
            collection: 'har xil',
            doc: 'alijon-turkum-suhbat'),
        Playlist(
            title: 'Qur\'oniy duolar',
            imgPath: 'assets/images/quroniy-duolar-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe4Drk581PwrbBTK_sl8dtt6',
            count: 37,
            collection: 'har xil',
            doc: 'alijon-quroniy-duolar'),
        Playlist(
            title: 'Qur\'on oqib vafot etganlar zotlar',
            imgPath: 'assets/images/quron-oqib-vafot-top-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe6sDzpYpe6v9YiPTJt14T3c',
            count: 26,
            collection: 'har xil',
            doc: 'quron-oqib-vafot'),
        Playlist(
            title: 'Savol_Javob',
            imgPath: 'assets/images/savol-javob-alquran.jpg',
            playlistId: 'PL7AEFfKAwqe6WxlRlFm2SXgTlQCXh6FkK',
            count: 115,
            collection: 'har xil',
            doc: 'alijon-savol-javob'),
        Playlist(
            title: 'Qur\'on qalb shifosi',
            imgPath: 'assets/images/quron-qalb-shifosi-muslimuz.jpg',
            playlistId: 'PLi7SB6MZij7dBiIr7V0eAJikNCK34yEKg',
            count: 19,
            collection: 'har xil',
            doc: 'alijon-quron-qalb-shifosi'),
      ],
    ),
  ];
}
