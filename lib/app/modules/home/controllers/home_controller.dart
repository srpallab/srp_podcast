import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../model/last_week_playlist_information_model.dart';

class HomeController extends GetxController {
  final AudioPlayer player = AudioPlayer();
  final RxBool isPlaying = false.obs;
  final RxBool isPlayerShow = false.obs;
  final String baseUrl = "https://backend.friendsdigital.com/uploads/show/";
  // final PlaylistInfoModel playlistInfo = PlaylistInfoModel(
  //   title: "Bhooth Katha with Aritra",
  //   description: "",
  //   kind: "Single Item",
  //   playlist: [
  //     Playlist(
  //       title: "Bhooth Katha with Aritra",
  //       mediaid: "ENHKDDjY",
  //       link: "https://content.jwplatform.com/previews/ENHKDDjY",
  //       image: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //       duration: 379,
  //       pubdate: 1677609000,
  //       description: "",
  //       images: [
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 320,
  //           type: "image/jpeg",
  //         ),
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 480,
  //           type: "image/jpeg",
  //         ),
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 640,
  //           type: "image/jpeg",
  //         ),
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 720,
  //           type: "image/jpeg",
  //         ),
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 1280,
  //           type: "image/jpeg",
  //         ),
  //         PlaylistImage(
  //           src: "https://content.jwplatform.com/v2/media/ENHKDDjY/poster.jpg",
  //           width: 1920,
  //           type: "image/jpeg",
  //         )
  //       ],
  //       sources: [
  //         Source(
  //           file: "https://content.jwplatform.com/videos/ENHKDDjY-G3IuURIt.m4a",
  //           type: "audio/mp4",
  //           label: "AAC Audio",
  //           bitrate: 113646,
  //           filesize: 5383994,
  //         )
  //       ],
  //     ),
  //   ],
  // );
  final List<LastWeekPlaylistInfoModel> lastWeekPlayList = [
    LastWeekPlaylistInfoModel(
      success: true,
      message: "Data Available !!!",
      data: [
        ListInfo(
          showId: "1",
          showTitle: "Tiny Tales",
          showSlug: "tiny-tales",
          showLogo: "1680154657brand8.png",
          showLogoOuter: "1682947403Tiny-Tales_Logo.png",
          showCoverImage: "16822777021680154657podcast_top_6.jpg",
          showLikeCount: "107",
          showEpisodeSerial: "Ep 6",
          showDescription: "Happy Stories for Little ones",
        ),
        ListInfo(
          showId: "2",
          showTitle: "Bhoot Kotha",
          showSlug: "bhoot-kotha",
          showLogo: "1680154616brand3.png",
          showLogoOuter: "1682947342Bhoot-Kotha_Logo.png",
          showCoverImage: "16822776881680154616podcast_top_3.jpg",
          showLikeCount: "272",
          showEpisodeSerial: "Ep 5",
          showDescription: "Real Horror Tales",
        ),
        ListInfo(
          showId: "3",
          showTitle: "Dear Dairy",
          showSlug: "dear-dairy",
          showLogo: "1680154574brand4.png",
          showLogoOuter: "1682944500Dear Diary_Logo_e.png",
          showCoverImage: "16822776741680154574podcast_top_4.jpg",
          showLikeCount: "106",
          showEpisodeSerial: "Ep 3",
          showDescription: "Penning Down Pure Emotions",
        ),
        ListInfo(
          showId: "4",
          showTitle: "Harnaa Impossible",
          showSlug: "harnaa-impossible",
          showLogo: "1680602791Group 5529@2x.png",
          showLogoOuter: "1682944482Haarna Impossible_Logo_e.png",
          showCoverImage: "16822782321680602747podcast_top_9.jpg",
          showLikeCount: "112",
          showEpisodeSerial: "Ep 9",
          showDescription: "Journey Against All Odds",
        ),
        ListInfo(
          showId: "5",
          showTitle: "Kitchen Tales",
          showSlug: "kitchen-tales",
          showLogo: "1680154532brand7.png",
          showLogoOuter: "1682944467Kitchen Tales_Logo_e.png",
          showCoverImage: "16822776561680154532podcast.jpg",
          showLikeCount: "131",
          showEpisodeSerial: "Ep 9",
          showDescription: "Relishing Food & Exploring Places",
        ),
        ListInfo(
          showId: "6",
          showTitle: "Nostaljiya",
          showSlug: "nostaljiya",
          showLogo: "1714206379prev_1683275346Nostal Jiya_Logo.png",
          showLogoOuter: "1682944431Nostal Jiya_Logo_e.png",
          showCoverImage: "16822776391680154298podcast_top_5.jpg",
          showLikeCount: "277",
          showEpisodeSerial: "Ep 3",
          showDescription: "Walk Down Memory Lane",
        ),
        ListInfo(
          showId: "7",
          showTitle: "Once Upon a time in Bengal",
          showSlug: "once-upon-a-time-in-bengal",
          showLogo: "1680603082brand11.png",
          showLogoOuter: "1682947362Once-Upon-A-Time-In-Bengal_.png",
          showCoverImage: "16822776211680603082podcast_top_10.jpg",
          showLikeCount: "150",
          showEpisodeSerial: "Ep 10",
          showDescription: "Unearth Bengal Through A Different Lens",
        ),
        ListInfo(
          showId: "8",
          showTitle: "Phobia Factor",
          showSlug: "phobia-factor",
          showLogo: "1682272846phobia_2.png",
          showLogoOuter: "1682944405Phobia Factor_Logo_e.png",
          showCoverImage: "16822776061680595802podcast_top_8.jpg",
          showLikeCount: "91",
          showEpisodeSerial: "Ep 9",
          showDescription: "Winning over Fears Fearlessly",
        ),
        ListInfo(
          showId: "9",
          showTitle: "Sherdil",
          showSlug: "sherdil",
          showLogo: "1680154264brand1.png",
          showLogoOuter: "1682944390Sherdil_Logo_e.png",
          showCoverImage: "1680154264podcast_top_2.jpg",
          showLikeCount: "144",
          showEpisodeSerial: "Ep 8",
          showDescription:
              "People from different professions and their bravery",
        ),
        ListInfo(
          showId: "10",
          showTitle: "Spy Stories",
          showSlug: "spy-stories",
          showLogo: "1680595613SPY Stories logo-01.png",
          showLogoOuter: "1682947382SPY-Story_Logo.png",
          showCoverImage: "16822775941680595711podcast_top_11.jpg",
          showLikeCount: "110",
          showEpisodeSerial: "Ep 2",
          showDescription: "Real spy stories of the secret agents of the world",
        ),
        ListInfo(
          showId: "11",
          showTitle: "Up Close and Personal",
          showSlug: "up-close-and-personal",
          showLogo: "1680154159brand2.png",
          showLogoOuter: "1682947418Up-Close-&-Personal_Logo.png",
          showCoverImage: "16822775791680154159podcast_top_1-min.jpg",
          showLikeCount: "185",
          showEpisodeSerial: "Ep 2",
          showDescription: "True stories from the heart",
        ),
        ListInfo(
          showId: "12",
          showTitle: "Raj Barir Pujo",
          showSlug: "raj-barir-pujo",
          showLogo: "1695295446Rajbarir-Pujo_274.png",
          showLogoOuter: "1695296484Rajbarir-Pujo_400.png",
          showCoverImage: "1695295446Raj_Barir_Pujo_cover.jpg",
          showLikeCount: "34",
          showEpisodeSerial: "Ep 6",
          showDescription: "Looking back at Zamindari Pujos",
        ),
        ListInfo(
          showId: "13",
          showTitle: "Bonedi Barir Bahanno Byanjan",
          showSlug: "bonedi-barir-bahanno-byanjan",
          showLogo: "1695296723Bonedi-Bariri-Bahannyo-Byanjon_272.png",
          showLogoOuter: "1695296723Bonedi-Bariri-Bahannyo-Byanjon_400.png",
          showCoverImage: "1695296723Bonedi_Barir_Bahanno_Byanjon_cover.jpg",
          showLikeCount: "25",
          showEpisodeSerial: "Ep 2",
          showDescription:
              "Legendary Pujo recipies from traditional kolkata households",
        ),
        ListInfo(
          showId: "14",
          showTitle: "Barwari Pujor Golpo",
          showSlug: "barwari-pujor-golpo",
          showLogo: "1695296814Barowari-Pujor-Golpo_272.png",
          showLogoOuter: "1695296814Barowari-Pujor-Golpo_400.png",
          showCoverImage: "1695296814Barwari_Pujor_Golpo_cover.jpg",
          showLikeCount: "13",
          showEpisodeSerial: "Ep 2",
          showDescription: "Fun Laughter of community Pujos",
        ),
        ListInfo(
          showId: "15",
          showTitle: "People Behind Pujo",
          showSlug: "people-behind-pujo",
          showLogo: "1695296883People-Behind-Pujo_272.png",
          showLogoOuter: "1695296883People-Behind-Pujo_400.png",
          showCoverImage: "1695296883People_behind_Pujo_cover.jpg",
          showLikeCount: "13",
          showEpisodeSerial: "Ep 2",
          showDescription: "Celebrating the unsung heros",
        ),
        ListInfo(
          showId: "16",
          showTitle: "Puran Kotha",
          showSlug: "puran-kotha",
          showLogo: "1695296945Puran-Kotha_272.png",
          showLogoOuter: "1695296945Puran-Kotha_400.png",
          showCoverImage: "1695296945puran_Kotha_cover.jpg",
          showLikeCount: "17",
          showEpisodeSerial: "Ep 8",
          showDescription:
              "The mythology behind Bengal's biggest and most favourite festival",
        ),
      ],
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    player
        .setUrl("https://content.jwplatform.com/videos/ENHKDDjY-G3IuURIt.m4a");
  }

  void play() {
    if (isPlaying.value) {
      player.pause();
      isPlaying.value = false;
    } else {
      player.play();
      isPlaying.value = true;
    }
  }

  void showPlayer() {
    isPlayerShow.value = true;
    play();
  }

  void hidePlayer() {
    isPlayerShow.value = false;
    isPlaying.value = false;
    player.stop();
  }
}
