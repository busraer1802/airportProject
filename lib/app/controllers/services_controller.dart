import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/pages/services_page/model/airport_service_model.dart';

class ServicesController extends GetxController {
  List<AirportService> airportServices = [
    AirportService(
      name: 'Restoran',
      iconData: 'restaurant',
      header1: 'Burger King',
      details:
          'Burger King dünya çapında tanınan ve sevilen bir fast food zinciridir. Lezzetli hamburgerleri, çıtır çıtır patates kızartmaları ve çeşitli içecek seçenekleri ile hızlı ve doyurucu bir yemek arıyorsanız doğru adres.',
      additionalDetails: 'Konum: İç Hatlar Giden Yolcu Salonu',
      imageUrl:
          "https://1000logos.net/wp-content/uploads/2016/10/Burger-King-Logo-1999.jpg",
      header2: 'Popeyes',
      details2:
          'Popeyes Louisiana mutfağından esinlenerek hazırlanan baharatlı ve çıtır tavuk ürünleriyle ünlüdür. Tavuk severler için harika bir seçim olan Popeyes, farklı menü seçenekleri ile sizi bekliyor.',
      additionalDetails2: 'Konum: İç Hatlar Giden Yolcu Salonu',
      imageUrl2:
          "https://logowik.com/content/uploads/images/popeyes-new1826.jpg",
      header3: 'Tadında Anadolu',
      details3:
          'Tadında Anadolu size geleneksel Türk mutfağının en lezzetli örneklerini sunuyor. Zengin menüsü ile damak zevkinize hitap eden birçok seçenek bulabilirsiniz. Yerel lezzetleri keşfetmek isteyenler için ideal bir mekan.',
      additionalDetails3: 'Konum: Dış Hatlar Giden Yolcu Salonu',
      imageUrl3:
          "https://www.gida2000.com/wp-content/uploads/2016/03/1457518499_BTA_AriKadinlar_3.jpg",
      header4: 'Restro',
      details4:
          'Restro modern ve rahat atmosferi ile farklı tatlar denemek isteyenler için harika bir seçenek. Zengin menüsü, kaliteli hizmeti ve şık dekorasyonu ile dinlendirici bir yemek deneyimi sunar.',
      additionalDetails4: 'Konum: İç Hatlar Giden Yolcu Salonu',
      imageUrl4:
          "https://webcmsesb.tav.aero/uploads/5a13ca9ea79d053db4eaaa60/dynamic-fields/images/restro-tr_2.jpg",
      genel:
          'Esenboğa Havalimanının restoranları, seyahatinizin her anında lezzetli ve çeşitli yemek seçenekleri sunuyor. Havalimanında geçirdiğiniz zamanı daha keyifli hale getirmek için sizi bekleyen bu harika restoranları ziyaret edin.',
    ),
    AirportService(
      name: 'Kafe',
      iconData: 'local_cafe',
      header1: 'Cafe Nero',
      details:
          'Cafe Nero, Esenboğa Havalimanında kahve severlerin buluşma noktasıdır. Sıcak ve soğuk kahve çeşitlerinin yanı sıra, taze hamur işleri ve sandviçler ile de lezzetli bir mola sunar. Yüksek kaliteli kahveleri ve rahat atmosferiyle yolculuğunuzdan önce ya da sonra keyifli vakit geçirebilirsiniz.',
      additionalDetails: 'Konum: İç Hatlar Giden Yolcu Salonu',
      imageUrl:
          "https://www.britishcouncil.org.tr/sites/default/files/20150914_nero_logo-768x512.jpg",
      header2: 'Starbucks',
      details2:
          'Starbucks, dünya çapında bilinen ve sevilen kahve markası, Esenboğa Havalimanında da sizlerle. Özel kahve çekirdeklerinden hazırlanan kahveleri ve çeşitli içecek seçenekleri ile her damak zevkine hitap eder. Ayrıca, taze hazırlanmış atıştırmalıklar ve tatlılar da sunmaktadır. Rahat ve modern atmosferiyle yolculuğunuz öncesi veya sonrası dinlenmek için mükemmel bir mekandır.',
      additionalDetails2: 'Konum: Dış Hatlar Giden Yolcu Salonu',
      imageUrl2:
          "https://upload.wikimedia.org/wikipedia/tr/3/39/Starbucks_Corporation.png",
      header3: 'Bomonti Brasserie',
      details3:
          'Bomonti Brasserie, Esenboğa Havalimanında kaliteli yemek ve içecek deneyimi sunar. Şık ve rahat ortamında, taze malzemelerle hazırlanmış yemeklerin yanı sıra, kahve ve diğer içecek seçenekleri ile keyifli bir mola verebilirsiniz.',
      additionalDetails3: 'Konum: İç Hatlar Yemek Alanı',
      imageUrl3: "https://webcmsesb.tav.aero/files/1646298396_BMNT4.JPG",
      header4: 'Teras Cafe',
      details4:
          'Teras Cafe, Esenboğa Havalimanında hem lezzetli hem de rahat bir ortam arayanların adresi. Geniş menüsü ile kahve, çay, taze sıkılmış meyve suları ve çeşitli atıştırmalıklar sunar. Yolculuğunuzdan önce veya sonra, açık hava terasında dinlenebilir ve ferahlatıcı bir mola verebilirsiniz.',
      additionalDetails4: 'Konum: Dış Hatlar Check-in Alanı',
      imageUrl4: "https://esenbogaairport.com/img/web-site-default-image.jpg",
      genel:
          'Esenboğa Havalimanındaki kafeler, seyahatiniz öncesinde ya da sonrasında keyifli vakit geçirebileceğiniz ve lezzetli atıştırmalıklar ile içecekler bulabileceğiniz harika mekanlardır. İster bir fincan kaliteli kahve ile dinlenmek, ister lezzetli bir sandviç veya tatlı ile enerji depolamak isteyin, bu kafeler tam size göre. ',
    ),
    AirportService(
      name: 'Duty Free Mağaza',
      iconData: 'store',
      header1: 'Alışveriş Keyfi',
      details:
          'Duty Free, seyahatiniz öncesinde veya sonrasında ihtiyaç duyabileceğiniz her şeyi sunar. Parfümlerden makyaj ürünlerine, içki çeşitlerinden çikolatalara kadar geniş bir ürün yelpazesi mevcuttur.',
      additionalDetails:
          'Dünya markalarının özel koleksiyonlarını keşfedin ve sevdiklerinize veya kendinize unutulmaz bir hediye seçin.',
      imageUrl:
          "https://www.investopedia.com/thmb/lZOJ9xGXrCymRr_MhuanC3F2zmU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-687774177-c259f7476420460f9c62ab11bc64398f.jpg",
      header2: 'Özel Fırsatlar',
      details2:
          'Düzenli olarak özel fırsatlar sunmakla kalmayan Duty Free mağazada uçuşunuza yetişmeden önce hızlıca alışveriş yapabileceğiniz gibi, seyahatinizden dönüşte de avantajlı alışverişler yapabilirsiniz.',
      additionalDetails2:
          'Güncel indirimler ve kampanyaları kaçırmamak için mağazayı ziyaret etmeyi unutmayın!',
      imageUrl2:
          "https://cdn.shopify.com/s/files/1/0817/7988/4088/articles/4XOfcVjU6L9Z0yxkgW0WeI_9a7fdb9d-4173-4023-816b-8918cc91229f.jpg?v=1712946016",
      header3: 'Kolay Erişim',
      details3:
          'Duty Free, Esenboğa Havalimanının hem iç hatlar hem de dış hatlar terminalinde bulunur. Check-in işlemlerinden önce veya güvenlik kontrolünden sonra rahatça alışveriş yapabilirsiniz.',
      additionalDetails3:
          'Kullanıcı dostu düzeni ve kolay erişimiyle, alışveriş deneyiminizi en üst seviyeye çıkarır.',
      imageUrl3:
          "https://st3.depositphotos.com/1001279/13949/i/450/depositphotos_139493724-stock-photo-duty-free-shop.jpg",
      header4: 'Duty Free Fırsatları',
      details4:
          'Esenboğa Havalimanında sunduğu özel fırsatlarla dikkat çeker. İndirimlerden kampanyalara, sınırlı süreli tekliflerden paket avantajlarına kadar, alışveriş deneyiminizi daha da özel kılacak pek çok fırsat sizi bekliyor.',
      additionalDetails4:
          'Bu fırsatları kaçırmayın ve seyahatinize özel dokunuşlar katmak için Duty Free Mağazayı ziyaret edin.',
      imageUrl4:
          "https://www.omnisend.com/blog/wp-content/uploads/2022/10/10-12-Discount-pricing-strategies.png",
      genel:
          'Esenboğa Havalimanındaki Duty Free Mağaza, seyahat edenlerin favori alışveriş noktasıdır. Sınırlı süreli indirimler, geniş ürün yelpazesi ve uluslararası markaların avantajlı fiyatlarıyla, seyahatinizi daha keyifli hale getirecek bir alışveriş deneyimi sunar.',
    ),
    AirportService(
      name: 'Oto Kiralama',
      iconData: 'directions_car',
      header1: 'Araç Seçenekleri',
      details:
          'Esenboğa Havalimanındaki oto kiralama hizmetleri, her türlü ihtiyaca uygun araçlar sunar. Küçük araçlardan SUVlara, lüks araçlardan minibüslere kadar geniş bir araç yelpazesi mevcuttur.',
      additionalDetails:
          'Hem bireysel hem de iş amaçlı seyahatleriniz için ideal bir araç bulabilirsiniz.',
      imageUrl:
          "https://cdn.cetas.com.tr/Delivery/Public/Image/-1x-1/arac-kiralama_4258138668.jpg",
      header2: 'Kolay Rezervasyon',
      details2:
          'Oto kiralama işlemleri oldukça kolaydır. İnternet üzerinden veya havalimanında bulunan oto kiralama ofislerinden hızlı ve güvenli bir şekilde rezervasyon yapabilirsiniz. ',
      additionalDetails2:
          'Esnek rezervasyon seçenekleri ve 7/24 müşteri hizmetleri desteği ile seyahatinizi planlamanızı kolaylaştırır.',
      imageUrl2:
          "https://www.otokiralamaankara.com/webhox/resim/e782b747353befa4c03f99c40a20839b.jpg",
      header3: 'Konforlu Teslimat ve İade',
      details3:
          'Esenboğa Havalimanındaki oto kiralama hizmetleri, konforlu araç teslimatı ve iade imkanı sunar. Havalimanı içinde veya dışında kolayca aracınızı teslim alabilir ve iade edebilirsiniz. ',
      additionalDetails3:
          'Esnek saatler ve hızlı işlem süreleri ile zamanınızı verimli bir şekilde kullanabilirsiniz.',
      imageUrl3: "https://www.dederentacar.net/img/104.jpg",
      header4: 'Uygun Fiyatlar ve Kampanyalar',
      details4:
          'Oto kiralama Esenboğa Havalimanında uygun fiyatlarla sunulur ve düzenli olarak kampanyalar düzenlenir.',
      additionalDetails4:
          'Erken rezervasyon indirimleri, uzun süreli kiralama avantajları ve sezonluk promosyonlar gibi pek çok fırsatı değerlendirerek bütçenize uygun bir araç kiralayabilirsiniz.',
      imageUrl4:
          "https://blog.shopier.com/wp-content/uploads/2022/06/online_magazinizda_uygulayabileceginiz_indirim_fikirleri.jpg",
      genel:
          'Esenboğa Havalimanında oto kiralama hizmetleri, seyahat edenlerin konforunu ve özgürlüğünü artırmak için tasarlanmıştır. Geniş araç seçenekleri, uygun fiyatlar ve kolay rezervasyon imkanları ile seyahatinizi daha keyifli hale getirecek bir oto kiralama deneyimi sunar. Hem bireysel hem de iş amaçlı seyahatleriniz için her türlü ihtiyaca uygun araçlar bulabilir, konforlu araç teslimatı ve iade imkanı ile zamanınızı verimli bir şekilde kullanabilir ve düzenli olarak düzenlenen kampanyaları değerlendirerek bütçenize uygun bir araç kiralayabilirsiniz.',
    ),
    AirportService(
      name: 'Havalimanı Transferi',
      iconData: 'airport_shuttle',
      header1: 'Geniş Araç Filosu',
      details:
          'Esenboğa Havalimanındaki transfer hizmetleri, geniş bir araç filosuyla çeşitli ihtiyaçlara cevap verebilir. ',
      additionalDetails:
          'Bireysel yolcular için sedan araçlar, küçük gruplar için minibüsler ve lüks seçenekler de mevcuttur. Yolcuların taleplerine ve bütçesine uygun bir araç bulmak kolaydır.',
      imageUrl:
          "https://www.sennikturizm.com/wp-content/uploads/2023/01/sennik-arac-filosu-60.png",
      header2: 'Konforlu ve Güvenli Yolculuk',
      details2:
          'Esenboğa Havalimanından şehir merkezine veya diğer destinasyonlara yapılan transferler, konforlu ve güvenli bir yolculuk sunar.',
      additionalDetails2:
          'Yüksek standartlarda bakımlı ve temiz araçlarla donatılmış olan transfer servisleri, seyahat edenlere rahat bir yolculuk deneyimi sağlar.',
      imageUrl2:
          "https://res.cloudinary.com/turna/image/upload/v1603716462/Otobus-Konforlu-Yolculuk_vieuog.jpg",
      header3: 'Kolay Rezervasyon',
      details3:
          'Transfer hizmetleri Esenboğa Havalimanında kolayca rezerve edilebilir. İnternet üzerinden veya telefonla rezervasyon yapmak mümkündür.',
      additionalDetails3:
          'Esnek rezervasyon seçenekleri ve 7/24 müşteri hizmetleri desteği ile, seyahat planınızı kolayca organize edebilirsiniz.',
      imageUrl3:
          "https://www.karel.com.tr/sites/default/files/pictures/musteri-hizmeti-satis-a.jpg",
      header4: 'Hızlı ve Zamanında Hizmet',
      details4:
          'Esenboğa Havalimanındaki transfer hizmetleri, yolcuların zamanını en verimli şekilde kullanmasını sağlar. ',
      additionalDetails4:
          'Profesyonel şoförler, varış noktasına hızlı ve güvenli bir şekilde ulaşmanızı sağlar. Havaalanı transferinizin tam zamanında yapılacağına güvenebilirsiniz.',
      imageUrl4:
          "https://www.ulasimsektoru.com/wp-content/uploads/2024/01/1706192505_Cetin_Tur_Teslimat_7.jpg",
      genel:
          'Esenboğa Havalimanında sunulan transfer hizmetleri, seyahat edenlerin havalimanı ile şehir merkezi veya diğer bölgeler arasında hızlı ve konforlu bir ulaşım sağlamasına olanak tanır. Profesyonel şoförler tarafından işletilen transfer araçları, yolcuların seyahat stresini azaltır ve seyahatlerini daha keyifli hale getirir.',
    ),
    AirportService(
      name: 'Wi-Fi',
      iconData: 'wifi',
      header1: 'Ücretsiz Wi-Fi Erişimi',
      details:
          'Esenboğa Havalimanında sunulan Wi-Fi hizmeti tamamen ücretsizdir. Yolcular, havalimanı içinde herhangi bir bölgede kolayca Wi-Fi ağına bağlanabilir ve internet erişiminden faydalanabilirler.',
      additionalDetails:
          'Bu sayede seyahatleri boyunca iletişimlerini sürdürebilirler.',
      imageUrl: "https://www.itpedia.nl/wp-content/uploads/2018/07/wifi.png",
      header2: 'Yüksek Hızlı İnternet',
      details2:
          'Wi-Fi hizmeti yüksek hızlıdır, böylece yolcular internete hızlı ve kesintisiz bir şekilde bağlanabilirler.',
      additionalDetails2:
          'Yüksek hızlı Wi-Fi, dosya indirme, video izleme ve diğer internet faaliyetleri için idealdir.',
      imageUrl2:
          "https://reeder.com.tr/media/wysiwyg/how-to-get-a-hotspot-for-free-1690958197.jpg",
      header3: 'Kolay Bağlantı',
      details3:
          'Wi-Fiye bağlanmak çok kolaydır. Yolcular, cihazlarında havalimanı Wi-Fi ağını seçerek hızlı bir şekilde bağlanabilirler.',
      additionalDetails3:
          'Herhangi bir kullanıcı adı veya şifre gerektirmez, bu da bağlantı işlemini daha da kolaylaştırır.',
      imageUrl3: "https://cdn.mos.cms.futurecdn.net/xGQGcH4VLjoaek5M7JP4eM.jpg",
      header4: 'Güvenli ve Güvenilir Bağlantı',
      details4:
          'Sunulan Wi-Fi hizmeti, güvenli ve güvenilirdir. Yolcular, kişisel ve hassas bilgilerini güvenle paylaşabilirler.',
      additionalDetails4:
          'Güvenli bir internet bağlantısıyla, seyahat ederken çevrimiçi işlerini halledebilirler.',
      imageUrl4:
          "https://www.allprodad.com/wp-content/uploads/2021/03/05-12-21-happy-people.jpg",
      genel:
          'Esenboğa Havalimanında sunulan Wi-Fi hizmeti, seyahat edenlerin internet erişimine kolayca ulaşmasını sağlar. Yolcular, havalimanı içinde ücretsiz olarak Wi-Fi ağına bağlanarak e-posta kontrolü yapabilir, sosyal medyada gezinebilir veya seyahat planlarını güncelleyebilirler.',
    ),
    AirportService(
      name: 'Tuvalet',
      iconData: 'wc',
      header1: 'Temizlik ve Hijyen',
      details:
          'Esenboğa Havalimanında bulunan tuvaletler, temizlik ve hijyen konusunda öncelikli bir öneme sahiptir.',
      additionalDetails:
          'Tuvaletler düzenli olarak temizlenir ve dezenfekte edilir, böylece yolcuların sağlığı ve konforu korunur.',
      imageUrl:
          "https://www.residorm.com/wp-content/uploads/2020/03/temizlik.jpg",
      header2: 'Engellilere Uygun Tuvaletler',
      details2:
          'Havalimanı içinde engellilere uygun tuvaletler bulunmaktadır. Bu tuvaletler, tekerlekli sandalye kullanan veya hareket kısıtlılığı olan yolcuların kolayca erişebilmesi için özel olarak tasarlanmıştır. ',
      additionalDetails2:
          'Engellilere uygun tuvaletler, herkesin rahat ve konforlu bir şekilde seyahat etmesini sağlar.',
      imageUrl2:
          "https://www.turkuazseramik.com.tr/timthumb.php?src=https://cdn.turkuazseramik.com.tr/84e114ae5d508fcc4bececbebb78ca8e/3b643bddf8f44ffb5ad0a1e501290655.jpg&w=800&h=600&q=100",
      header3: 'Kolay Erişim',
      details3:
          'Esenboğa Havalimanındaki tuvaletler, terminal binalarının çeşitli noktalarında kolayca erişilebilir konumdadır.',
      additionalDetails3:
          'Yolcular, tuvalet ihtiyaçlarını gidermek için terminal içinde veya dışında bulunan tuvaletlere kolaylıkla ulaşabilirler.',
      imageUrl3:
          "https://cdnsta.avansas.com/mnresize/900/-/urun/76698/p2a-02126-u-levha-bay-bayan-wc-zoom-1.jpg",
      header4: 'Aile Odaları',
      details4:
          'Esenboğa Havalimanında aile odaları da bulunmaktadır. Bu özel odalar, ailelerin küçük çocuklarıyla rahatça vakit geçirebilmeleri ve tuvalet ihtiyaçlarını karşılayabilmeleri için tasarlanmıştır. ',
      additionalDetails4:
          'Aile odaları, bebek bakım masaları ve emzirme alanları gibi olanaklar sunar, böylece ailelerin seyahatleri daha konforlu hale gelir.',
      imageUrl4:
          "https://www.gulnarpetrol.com/tema/genel/uploads/hizmetler/Aile_tuvaleti.jpg",
      genel:
          'Esenboğa Havalimanında sunulan tuvalet hizmetleri, seyahat edenlerin konforunu ve hijyenini sağlamak için tasarlanmıştır. Havalimanı içindeki tuvaletler, temizlik ve düzenli bakım açısından yüksek standartlara sahiptir. Yolcular, seyahatleri sırasında rahat ve hijyenik tuvaletlerde ihtiyaçlarını giderme imkanına sahiptir.',
    ),
    AirportService(
      name: 'Eczane',
      iconData: 'local_pharmacy',
      header1: 'İlaç Temini',
      details:
          'Esenboğa Havalimanındaki eczane, yolcuların acil veya rutin ilaç ihtiyaçlarını karşılamak üzere çeşitli ilaçları temin eder. ',
      additionalDetails:
          'Hem reçeteli hem de reçetesiz ilaçlar mevcuttur, böylece yolcuların tıbbi ihtiyaçlarına hızlı ve etkili bir şekilde yanıt verilir.',
      imageUrl:
          "https://enstitu.ibb.istanbul/files/ismekOrg/Image/img_brans/brans_yenisitegaleri_2/eczaci-destek%20personeli/3.jpg",
      header2: 'Temel Sağlık Malzemeleri',
      details2: 'Eczane, temel sağlık malzemelerini de sunmaktadır.',
      additionalDetails2:
          'Yolcular, bandajlar, yara temizleme solüsyonları, ağrı kesiciler gibi temel sağlık ihtiyaçlarını karşılamak için eczaneden gerekli malzemeleri temin edebilirler.',
      imageUrl2: "https://medipol.com.tr/medium/News-Image-649.vsf",
      header3: 'Danışma ve Rehberlik',
      details3:
          'Sadece ilaç temini değil, aynı zamanda sağlık konularında danışma ve rehberlik hizmetleri de sunar.',
      additionalDetails3:
          'Profesyonel eczacılar, yolcuların sağlık sorunlarına ve ilaçlar hakkındaki sorularına yanıt verir, böylece seyahat ederken sağlıklarını korumalarına yardımcı olur.',
      imageUrl3:
          "https://i0.wp.com/blog.farmazon.com.tr/wp-content/uploads/2022/06/AYHN9924.jpg?fit=5184%2C3456&ssl=1",
      header4: 'Acil Durumlar İçin Hazır',
      details4:
          'Esenboğa Havalimanındaki eczane, acil durumlar için hazırdır. Eczacılar, acil tıbbi yardım gerektiren durumlarda hızlı bir şekilde müdahale edebilir ve yolcuların sağlık sorunlarını en iyi şekilde çözebilirler. ',
      additionalDetails4:
          'Eczane, seyahat edenlerin sağlığını korumak için gereken tüm önlemleri alır.',
      imageUrl4: "https://www.gordion-avm.com/media/image/NXFK96YNSK33R6.jpg",
      genel:
          'Esenboğa Havalimanında bulunan eczane, seyahat edenlerin sağlık ihtiyaçlarını karşılamak için hizmet vermektedir. Eczane, reçeteli ilaçlar, reçetesiz ilaçlar, temel sağlık malzemeleri ve diğer eczacılık ürünleri gibi çeşitli ürünleri sunarak, yolcuların seyahatleri sırasında sağlıklı kalmasını sağlar.',
    ),
    AirportService(
      name: 'Banka/ATM',
      iconData: 'local_atm',
      header1: 'Nakit Çekme',
      details:
          'Esenboğa Havalimanındaki ATMler, yolcuların ihtiyaç duydukları nakdi kolayca çekebilmeleri için hizmet verir. ',
      additionalDetails:
          'Yolcular, kendi bankalarının kartlarıyla veya uluslararası kartlarla ATMleri kullanarak nakit çekebilirler, böylece seyahatleri sırasında finansal olarak güvende kalabilirler.',
      imageUrl:
          "https://cdn2.enuygun.com/img/finance-guide/uploads/ortak_atm_nedir_dd2c653f44.jpg",
      header2: 'Döviz Değişimi',
      details2:
          'Banka şubeleri, Esenboğa Havalimanında döviz değişimi hizmetleri sunar. Yolcular, seyahat ettikleri ülkenin para birimine dönüştürmek veya diğer para birimlerini almak için banka şubelerini kullanabilirler. ',
      additionalDetails2:
          'Bu hizmet, uluslararası seyahat edenlerin finansal işlemlerini kolaylaştırır.',
      imageUrl2:
          "https://image.milimaj.com/i/milliyet/75/1100x570/6176147245d2a0a1041abd1b.jpg",
      header3: 'Hesap İşlemleri',
      details3:
          'Banka şubeleri, hesap işlemleri yapmak isteyen yolculara hizmet verir. Yolcular, hesap bakiyesini kontrol etmek, para transferi yapmak veya diğer bankacılık işlemlerini gerçekleştirmek için banka şubelerini kullanabilirler. ',
      additionalDetails3:
          'Bu hizmet, seyahat edenlerin finansal işlemlerini hızlı ve güvenli bir şekilde tamamlamalarını sağlar',
      imageUrl3:
          "https://cdn.kamusonhaber.com.tr/gallery/2024/06/1/RS38159_GettyImages-176206638.jpg",
      header4: 'Güvenli İşlemler',
      details4:
          'Banka ve ATM hizmetleri, güvenli bir şekilde sunulur. Yolcuların finansal bilgileri ve işlemleri güvenli bir ortamda gerçekleştirilir.',
      additionalDetails4:
          'Banka şubeleri ve ATMler, seyahat edenlerin finansal olarak güvende olmalarını sağlamak için gerekli tüm güvenlik önlemlerini alır.',
      imageUrl4:
          "https://storage.googleapis.com/gweb-uniblog-publish-prod/images/CybersecurityMistakes_Hero-1.width-1200.format-webp.webp",
      genel:
          'Esenboğa Havalimanında bulunan banka ve ATM hizmetleri, seyahat edenlerin finansal ihtiyaçlarını karşılamak ve işlemlerini kolaylaştırmak için sunulmaktadır. Banka şubeleri ve ATMler, döviz değişimi, nakit çekme, hesap işlemleri ve diğer bankacılık işlemleri için hizmet verir, böylece yolcuların seyahatleri sırasında finansal olarak rahat etmeleri sağlanır.',
    ),
    AirportService(
      name: 'Kuaför',
      iconData: 'local_hairdresser',
      header1: 'Saç Kesimi ve Stil',
      details: 'Yorgun görünümünüzü yenileyerek uçuşa hazırlanın.',
      additionalDetails:
          'Esenboğa Havalimanındaki kuaförler, yolculara profesyonel saç kesimi ve stil hizmetleri sunar. Yolcular, seyahatleri öncesinde veya sonrasında saçlarını kesip şekillendirebilir, böylece taze ve şık bir görünüme sahip olabilirler.',
      imageUrl:
          "https://media.istockphoto.com/id/692999494/photo/hairdresser-cutting-some-hair-tips.jpg?s=612x612&w=0&k=20&c=5bC0fdICk914P5JWYDOi6N3CirJV4IBMTxYJh32vi8o=",
      header2: 'Saç Bakımı ve Renklendirme',
      details2:
          'Kuaförler, Esenboğa Havalimanında saç bakımı ve renklendirme hizmetleri de sunar. Yolcular, saçlarını yıkatabilir, bakım yapabilir veya istedikleri renge boyatabilirler. ',
      additionalDetails2:
          'Profesyonel kuaförler, yolcuların saçlarının sağlıklı ve parlak kalmasını sağlar.',
      imageUrl2:
          "https://us.images.westend61.de/0001570567pw/male-hairdresser-with-protective-face-mask-dyeing-customers-hair-at-salon-JRVF00993.jpg",
      header3: 'Erkek Tıraşı ve Traş',
      details3:
          'Esenboğa Havalimanındaki kuaförler, erkek yolculara profesyonel tıraş ve traş hizmetleri sunar.',
      additionalDetails3:
          'Yolcular, seyahatleri sırasında veya öncesinde istedikleri tıraşı yaptırabilir ve taze bir görünüme sahip olabilirler.',
      imageUrl3:
          "https://img.freepik.com/premium-photo/brutal-guy-modern-barber-shop-hairdresser-makes-hairstyle-man-with-beard-portrait-stylish-man-beard-master-hairdresser-does-hairstyle-style-with-scissors-comb_124865-7125.jpg",
      header4: 'Güzellik Hizmetleri',
      details4:
          'Kuaförlerde güzellik hizmetleri de bulunmaktadır. Bu hizmetler arasında makyaj, kaş tasarımı ve diğer güzellik uygulamaları bulunur.',
      additionalDetails4:
          'Profesyonel kuaförler, yolcuların seyahat sonrası taze ve güzel görünmelerini sağlar.',
      imageUrl4:
          "https://www.beautysalonabudhabi.aaaa.ae/images/beauty-salon-in-alruwais.jpg",
      genel:
          'Esenboğa Havalimanında bulunan kuaförler, seyahat edenlerin şıklıklarını korumalarına ve seyahat sonrası taze bir görünüme sahip olmalarına yardımcı olmak için hizmet vermektedir. Profesyonel kuaförler, saç kesimi, saç bakımı, traş, tıraş ve diğer güzellik hizmetleri sunar, böylece yolcuların seyahatleri sırasında kendilerini iyi hissetmeleri sağlanır.',
    ),
  ];

  IconData getIconDataFromString(String iconName) {
    switch (iconName) {
      case 'restaurant':
        return Icons.restaurant;
      case 'local_cafe':
        return Icons.local_cafe;
      case 'store':
        return Icons.store;
      case 'directions_car':
        return Icons.directions_car;
      case 'airport_shuttle':
        return Icons.airport_shuttle;
      case 'wifi':
        return Icons.wifi;
      case 'wc':
        return Icons.wc;
      case 'local_pharmacy':
        return Icons.local_pharmacy;
      case 'local_atm':
        return Icons.local_atm;
      case 'local_hairdresser':
        return Icons.store;
      default:
        return Icons
            .error; // Belirtilen ikon bulunamadığında hata ikonu döndürülür
    }
  }

  TextEditingController searchController = TextEditingController();
}
