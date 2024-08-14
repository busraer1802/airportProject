import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../ui/pages/airportshoppingstores_page/model/airport_shopping_stores_model.dart';

class AirportShoppingStoresController extends GetxController {
  TextEditingController searchController = TextEditingController();

  List<AirportBrand> airportBrands = [
    AirportBrand(
      name: 'Duty Free',
      image:
          'https://atu.com.tr/wp-content/uploads/2023/08/ATU-Logo-C%CC%A7erc%CC%A7eveli_page-0001-768x768.jpg',
      products: [
        AirportProduct(
            id: 1,
            name: 'Versace Parfüm',
            price: 2399.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dw91f6ac37/images/hi-res/SKU/SKU_1/135836_swatch.jpg"),
        AirportProduct(
            id: 2,
            name: 'Tom Ford Parfüm',
            price: 3399.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dw0b0355c5/images/hi-res/SKU/SKU_2002/436143_swatch.jpg"),
        AirportProduct(
            id: 3,
            name: 'CalvinKlein Parfüm',
            price: 1229.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dwb27dfb95/images/hi-res/SKU/SKU_3607/265535_swatch.jpeg"),
        AirportProduct(
            id: 4,
            name: 'YvesSaintLaurent Parfüm',
            price: 5919.49,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dw6a3ccb9a/images/hi-res/SKU/SKU_1/186318_swatch.jpg"),
        AirportProduct(
            id: 5,
            name: 'Kayali Parfüm',
            price: 5529.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dwd8d85562/images/hi-res/SKU/SKU_5264/720637_swatch.jpg"),
        AirportProduct(
            id: 6,
            name: 'TomFord Parfüm',
            price: 3299.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dwf8feeb46/images/hi-res/SKU/SKU_3/291947_swatch.jpg"),
        AirportProduct(
            id: 7,
            name: 'Boss Parfüm',
            price: 1249.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dw1862c6eb/images/hi-res/SKU/SKU_4472/697641_swatch.jpg"),
        AirportProduct(
            id: 8,
            name: 'Parfüm',
            price: 3249.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dw006b6c40/images/hi-res/SKU/SKU_3944/659713_swatch.jpg"),
        AirportProduct(
            id: 9,
            name: 'TomFord Fabulous',
            price: 7249.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dwdc09d183/images/hi-res/SKU/SKU_1542/494288_swatch.jpg"),
        AirportProduct(
            id: 10,
            name: 'KAYALI Lum',
            price: 8899.99,
            image:
                "https://www.sephora.com.tr/on/demandware.static/-/Sites-masterCatalog_Sephora/default/dwd01b32a5/images/hi-res/SKU/SKU_3974/659758_swatch.jpg"),
      ],
    ),
    AirportBrand(
      name: 'Beymen',
      image: 'https://istinyepark.com.tr/data-stores/beymen-logo.png',
      products: [
        AirportProduct(
            id: 11,
            name: 'Parfüm',
            price: 10999.99,
            image:
                "https://ideacdn.net/idea/hs/04/myassets/products/817/tiziana-terenzi-tyrenum.jpg?revision=1713029419"),
        AirportProduct(
            id: 12,
            name: 'Parfüm',
            price: 15999.99,
            image:
                "https://stn-brandroom.mncdn.com/mnresize/1200/1200/Content/media/ProductImg/original/636380527511035842.JPG"),
        AirportProduct(
            id: 13,
            name: 'Parfüm',
            price: 17999.99,
            image:
                "https://xparfumclub.com/upload/1685387892-6474fa74c04b8.jpeg"),
        AirportProduct(
            id: 14,
            name: 'Parfüm',
            price: 3500.99,
            image:
                "https://xparfumclub.com/upload/1685618226-64787e32de055.jpg"),
        AirportProduct(
            id: 15,
            name: 'Parfüm',
            price: 4800.99,
            image:
                "https://xparfumclub.com/upload/1685618046-64787d7e3828b.jpg"),
        AirportProduct(
            id: 16,
            name: 'Parfüm',
            price: 4600.99,
            image:
                "https://xparfumclub.com/upload/1685697516-6479b3ec55a23.jpg"),
        AirportProduct(
            id: 17,
            name: 'Parfüm',
            price: 5599.99,
            image:
                "https://xparfumclub.com/upload/1693228753-64ec9ed146585.jpg"),
        AirportProduct(
            id: 18,
            name: 'Parfüm',
            price: 3999.99,
            image:
                "https://xparfumclub.com/upload/1694434617-64ff053953782.jpg"),
        AirportProduct(
            id: 19,
            name: 'Parfüm',
            price: 10229.99,
            image: "https://xparfumclub.com/upload/16629.jpg"),
        AirportProduct(
            id: 20,
            name: 'Parfüm',
            price: 7799.99,
            image: "https://xparfumclub.com/upload/17352.jpg"),
      ],
    ),
    AirportBrand(
      name: 'Samsonite',
      image:
          'https://www.terracity.com.tr/fileadmin/user_upload/GLOBAL/brand_stores/logos/samsonite.jpg',
      products: [
        AirportProduct(
            id: 21,
            name: 'Deri Çanta',
            price: 299.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2019/09/06/14144/0e4c7ea7-f008-462d-917c-a586e6d27fd5_size470x707.jpg"),
        AirportProduct(
            id: 22,
            name: 'BACKPACK 13.3',
            price: 359.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2024/01/30/23936/bad73316-9322-4340-8c9b-33e70db6ffac_size470x707.jpg"),
        AirportProduct(
            id: 23,
            name: 'Küçük Çanta',
            price: 199.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2021/08/06/19335/ea05c40e-6b40-4713-b7c3-45abf127689e_size470x707.jpg"),
        AirportProduct(
            id: 24,
            name: 'Sırt Çantası',
            price: 149.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2024/02/02/28267/0870ba16-644d-46b7-9abd-3fcbdab3a96a_size470x707.jpg"),
        AirportProduct(
            id: 25,
            name: 'El Valizi',
            price: 749.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2024/05/21/30098/a1c7afe0-cec0-47a3-9aa4-53a6311dcafc_size470x707.jpg"),
        AirportProduct(
            id: 26,
            name: 'Siyah Valiz',
            price: 1229.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2020/08/05/16937/79378074-50a5-4d4f-89e4-56b46b39e9de_size470x707.jpg"),
        AirportProduct(
            id: 27,
            name: 'Bel Çantası',
            price: 129.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2023/11/13/25643/1b4b4b34-284c-494b-bafc-51a3a937f4fb_size470x707.jpg"),
        AirportProduct(
            id: 28,
            name: 'Kırmızı Valiz',
            price: 2119.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2022/02/17/21017/a32fde3c-f910-43f9-ad4b-58e727f41fba.jpg"),
        AirportProduct(
            id: 29,
            name: 'Seyahat Çantası',
            price: 524.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2023/03/09/23840/5f7e1cdc-b624-488a-b162-ef387658d238_size470x707.jpg"),
        AirportProduct(
            id: 30,
            name: 'Pembe Valiz',
            price: 3259.99,
            image:
                "https://akn-samsonite.a-cdn.akinoncloud.com/products/2022/05/16/21622/0a033443-06f0-448c-8dfc-650146541238_size470x707.jpg"),
      ],
    ),
    AirportBrand(
      name: 'D&R',
      image:
          'https://play-lh.googleusercontent.com/80w4jODBeWLTXwMSNRNb3QWXwuZhXhAp2mdnzmxFGvVF2vle84ff3MwTG1w42_-4Uw',
      products: [
        AirportProduct(
            id: 31,
            name: 'Roman',
            price: 119.99,
            image:
                "https://cdn.bkmkitap.com/karanligin-sehri-3-13518471-86-O.jpg"),
        AirportProduct(
            id: 32,
            name: 'Roman',
            price: 129.99,
            image:
                "https://cdn.bkmkitap.com/on-ucu-saklamak-13485124-85-O.jpg"),
        AirportProduct(
            id: 33,
            name: 'DVD',
            price: 144.99,
            image:
                "https://shop.bbc.com/cdn/shop/products/doctor-who-the-matt-smith-collection-21738_1.jpg?v=1567533206"),
        AirportProduct(
            id: 34,
            name: 'Board Game',
            price: 449.99,
            image:
                "https://cdn.bkmkitap.com/demir-alev-860577-13490455-86-O.jpg"),
        AirportProduct(
            id: 35,
            name: 'Roman',
            price: 224.99,
            image:
                "https://cdn.bkmkitap.com/gokcen-2-geride-kalanlar-13472606-85-O.jpg"),
        AirportProduct(
            id: 36,
            name: 'Roman',
            price: 198.10,
            image:
                "https://cdn.bkmkitap.com/pusula-3-konsorsiyum-13483660-85-O.jpg"),
        AirportProduct(
            id: 37,
            name: 'Roman',
            price: 158.30,
            image:
                "https://cdn.bkmkitap.com/ruyalardan-ote-kabuslar-kadar-2-13492373-86-O.jpg"),
        AirportProduct(
            id: 38,
            name: 'Kişisel Gelişim',
            price: 159.99,
            image: "https://cdn.bkmkitap.com/ikigai-11347473-27-O.jpg"),
        AirportProduct(
            id: 39,
            name: 'Kişisel Gelişim',
            price: 179.99,
            image:
                "https://cdn.bkmkitap.com/shinrin-yoku-orman-banyosu-8431084-44-O.jpg"),
        AirportProduct(
            id: 40,
            name: 'Roman',
            price: 186.75,
            image:
                "https://cdn.bkmkitap.com/kayip-tanrilar-ulkesi-12102190-55-O.jpg"),
      ],
    ),
    AirportBrand(
      name: 'Starbucks',
      image:
          'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png',
      products: [
        AirportProduct(
            id: 41,
            name: 'Sarı Parlak Termos',
            price: 399,
            image:
                "https://cdn.dsmcdn.com//ty1333/product/media/images/prod/QC/20240527/17/01fcfc60-8538-3ea4-b486-3f141419e76d/1_org.jpg"),
        AirportProduct(
            id: 42,
            name: 'Reserve Termos',
            price: 449,
            image:
                "https://n11scdn.akamaized.net/a1/%7B0%7D/ev-yasam/termos/starbucks-reserve-bakir-termos-473-ml__0124984852638920.jpg"),
        AirportProduct(
            id: 43,
            name: 'Reserve Siyah Termos',
            price: 259,
            image:
                "https://cdn.dsmcdn.com/mnresize/500/-/ty1323/product/media/images/prod/QC/20240518/03/d55ed112-14be-3bd5-aca5-f6f199dc51cf/1_org.jpg"),
        AirportProduct(
            id: 44,
            name: 'Siyah-Yeşil Termos',
            price: 479,
            image:
                "https://cdn.dsmcdn.com/ty1319/product/media/images/prod/QC/20240517/00/cb07a1f3-f76a-33b1-92d8-3cc0116df3a3/1_org_zoom.jpg"),
        AirportProduct(
            id: 45,
            name: 'Indonesia Gunung Leuser',
            price: 499,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-reserve-250-g-indonesia-gunu-fbc0d9.jpg"),
        AirportProduct(
            id: 46,
            name: 'Yeniden Kullanılabilir Soğuk İçecek Bardağı',
            price: 349,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-yeniden-kullanilabilir-sicak-62b614.jpg"),
        AirportProduct(
            id: 47,
            name: 'Kahve Presi Özellikli Paslanmaz Çelik Termos',
            price: 650,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-kahve-presi-ozellikli-paslan-6ef686.jpg"),
        AirportProduct(
            id: 48,
            name: 'Seramik Kupa',
            price: 259,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-seramik-kupa-turuncu-355-ml--bdc629.jpg"),
        AirportProduct(
            id: 49,
            name: 'Paslanmaz Çelik Termos',
            price: 850,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-paslanmaz-celik-termos-laciv-45763-.jpg"),
        AirportProduct(
            id: 50,
            name: 'Pembe Termos',
            price: 590,
            image:
                "https://static.ticimax.cloud/cdn-cgi/image/width=480,quality=85/56041/uploads/urunresimleri/buyuk/starbucks-parlak-paslanmaz-celik-termo-48f4-b.jpg"),
      ],
    ),
    AirportBrand(
      name: 'Boyner',
      image:
          'https://logowik.com/content/uploads/images/boyner-old9601.logowik.com.webp',
      products: [
        AirportProduct(
            id: 51,
            name: 'Siyah Topuklu Ayakkabı',
            price: 999.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5002976605_001_01_325_451.jpg"),
        AirportProduct(
            id: 52,
            name: 'Erkek Gömlek',
            price: 799.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5003154549_305_01_325_451.jpg"),
        AirportProduct(
            id: 53,
            name: 'Kadın Yeşil Elbise',
            price: 199.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5002994984_305_01_325_451.jpg"),
        AirportProduct(
            id: 54,
            name: 'Prada Parfüm',
            price: 2299.99,
            image:
                "https://statics.boyner.com.tr/mnresize/520/-/productimages/5002947729_X_01_900_1254.jpg"),
        AirportProduct(
            id: 55,
            name: 'Givenchy Parfüm',
            price: 4299.99,
            image:
                "https://statics.boyner.com.tr/mnresize/520/-/productimages/5002316996_X_01_900_1254.jpg"),
        AirportProduct(
            id: 56,
            name: 'Black Honey Lipbalm',
            price: 699.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5003123440_X_01_325_451.jpg"),
        AirportProduct(
            id: 57,
            name: 'Guerlain Ruj',
            price: 799.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5002957003_X_01_325_451.jpg"),
        AirportProduct(
            id: 58,
            name: 'Fön Tarağı',
            price: 1199.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5002967755_X_01_325_451.jpg"),
        AirportProduct(
            id: 59,
            name: 'CalvinKlein Sporcu Taytı',
            price: 999.99,
            image:
                "https://statics.boyner.com.tr/mnresize/300/-/productimages/5002994769_650_01_325_451.jpg"),
        AirportProduct(
            id: 60,
            name: 'Versace Çanta',
            price: 4549.99,
            image:
                "https://statics.boyner.com.tr/mnresize/520/-/productimages/5003089849_600_01_900_1254.jpg"),
      ],
    ),
    AirportBrand(
      name: 'Swarovski',
      image: 'https://asset.brandfetch.io/idgQKdIOpA/idId7bSupp.png',
      products: [
        AirportProduct(
            id: 51,
            name: 'Passage Chrono Saat',
            price: 999.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0036956_passage-chrono-saat-deri-kayis-pembe-pembe-altin-rengi-pvd-m5580342120-4268.jpeg"),
        AirportProduct(
            id: 52,
            name: 'Saat',
            price: 799.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0047515_saat-m5630840120-6422.jpeg"),
        AirportProduct(
            id: 53,
            name: 'Crystalline Delight Saat',
            price: 1299.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0036968_crystalline-delight-saat-metal-bileklik-beyaz-paslanmaz-celik-m5580530101-4263.jpeg"),
        AirportProduct(
            id: 54,
            name: 'Cosmopolitan Saat',
            price: 2299.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0043501_cosmopolitan-saat-m5517794120-5714.jpeg"),
        AirportProduct(
            id: 55,
            name: 'Gema Kolye',
            price: 1299.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0048854_gema-kolye-m5662493120-6650.jpeg"),
        AirportProduct(
            id: 56,
            name: 'Mesmera Damla Küpe',
            price: 1499.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0050781_mesmera-damla-kupeler-m5665878112-7000.jpeg"),
        AirportProduct(
            id: 57,
            name: 'Mesmera Bileklik',
            price: 699.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0050203_mesmera-bileklik-m5669927101-6864.jpeg"),
        AirportProduct(
            id: 58,
            name: 'Swan Iconic Kolye',
            price: 1199.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0048948_swarovski-iconic-swan-kolye-m5647872101-6677.jpeg"),
        AirportProduct(
            id: 59,
            name: 'Swan Kolye',
            price: 999.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0052895_swarovski-swan-kolye-m5680868102-7311.jpeg"),
        AirportProduct(
            id: 60,
            name: 'Swan Damla Küpe',
            price: 849.99,
            image:
                "https://img-swarovski.mncdn.com/Content/Images/Thumbs/0052131_swarovski-swan-damla-kupeler-m5647543152-7147.jpeg"),
      ],
    ),
    AirportBrand(
      name: 'Apple',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/640px-Apple_logo_black.svg.png',
      products: [
        AirportProduct(
            id: 51,
            name: 'Iphone 14',
            price: 46.999,
            image:
                "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-card-40-iphone14-202209_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1693086370007"),
        AirportProduct(
            id: 52,
            name: 'Airtag',
            price: 1.219,
            image:
                "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airtag-4pack-select-202104_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=90&.v=1617761669000"),
        AirportProduct(
            id: 53,
            name: 'Iphone 13 Pro Max',
            price: 80.999,
            image:
                "https://cdn03.ciceksepeti.com/cicek/kcm59984040-1/L/apple-iphone-13-pro-max-128-gb-mavi-teshir-urun-apple-turkiye-garantili-kcm59984040-1-56c505cc9bb04f5aabd15098f88a9519.jpg"),
        AirportProduct(
            id: 54,
            name: 'Adaptör',
            price: 499.99,
            image:
                "https://shiftdelete.net/wp-content/uploads/2021/10/en-ucuz-apple-urunleri-9.jpg"),
        AirportProduct(
            id: 55,
            name: 'TV Stick',
            price: 1299.99,
            image: "https://cdn.webrazzi.com/uploads/2015/09/apple-tv-1.jpg"),
        AirportProduct(
            id: 56,
            name: 'Iphone 15',
            price: 58.499,
            image:
                "https://cdn.tet.lv/tetveikals-prd-images/grid_product_image_webp/products/viedtalrunis-apple-iphone-15-7-65017700cec75.jpg.webp"),
        AirportProduct(
            id: 57,
            name: 'Iphone 14',
            price: 42.999,
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYHhYtrOnsoH5IinJcTzF6-rFZSlBcvtKJczzcB7tk6A&s"),
        AirportProduct(
            id: 58,
            name: 'MacBook Air',
            price: 54.999,
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT08qWjBBoWSmj-4L1m2PGCEyMdhNGDkR2-eA&s"),
        AirportProduct(
            id: 59,
            name: 'Kulaklık',
            price: 299.99,
            image:
                "https://istyle.rs/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/m/m/mmef2_av3_9.jpeg"),
        AirportProduct(
            id: 60,
            name: 'Apple Watch',
            price: 1749.99,
            image:
                "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/49-cell-titanium-trail-green-gray-ultra_GEO_TR?wid=4000&hei=4000&fmt=p-jpg&qlt=95&.v=1693685920826"),
      ],
    ),
  ];

  List<AirportProduct> shoppingCart = [];

  void addToCart(AirportProduct product) {
    int existingIndex =
        shoppingCart.indexWhere((item) => item.id == product.id);
    if (existingIndex != -1) {
      shoppingCart[existingIndex].quantity += 1;
    } else {
      AirportProduct newProduct = AirportProduct(
        id: product.id,
        image: product.image,
        name: product.name,
        price: product.price,
        quantity: 1,
      );
      shoppingCart.add(newProduct);
    }
  }

  String calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var product in shoppingCart) {
      totalPrice += product.price * product.quantity;
    }
    String formattedValue = totalPrice.toStringAsFixed(2);
    return formattedValue;
  }

  void makePayment() async {
    double payment = double.tryParse(calculateTotalPrice()) ?? 0.0;
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Firestore'dan mevcut kullanıcının kart bilgilerini getir
      CollectionReference cardsCollection = FirebaseFirestore.instance
          .collection('mycards')
          .doc(user.uid)
          .collection('cards');
      QuerySnapshot cardsQuery = await cardsCollection.get();

      // Kullanıcının kart bilgilerini kontrol et
      if (cardsQuery.docs.isNotEmpty) {
        List<dynamic> cards = cardsQuery.docs
            .map((doc) => doc.data())
            .toList(); // Kullanıcının kartları

        double totalLimit = 0.0;
        for (var card in cards) {
          totalLimit += card['limit'];
        }

        // Toplam limit kontrolü
        if (payment > totalLimit) {
          Get.closeAllSnackbars();
          Get.snackbar("Hata", "Kart limitiniz yetersiz.");
          Navigator.pop(Get.context!);
          return;
        }

        double paymentPerCard =
            payment / cards.length; // Her kart için düşecek tutar

        // Her bir kartın limitinden ödeme tutarını düş
        List<Map<String, dynamic>> updatedCards = [];
        for (int i = 0; i < cards.length; i++) {
          double currentLimit = cards[i]['limit']; // Kartın mevcut limiti
          double updatedLimit =
              currentLimit - paymentPerCard; // Güncellenmiş limit

          updatedCards.add({'limit': updatedLimit});
        }

        // Her bir kartın limitinden ödeme tutarını düş
        for (var i = 0; i < cards.length; i++) {
          double currentLimit = cards[i]['limit']; // Kartın mevcut limiti
          double updatedLimit =
              currentLimit - paymentPerCard; // Güncellenmiş limit

          // Güncellenmiş kart limitini Firestore'a geri kaydet
          await FirebaseFirestore.instance
              .collection('mycards')
              .doc(user.uid)
              .collection('cards')
              .doc(cardsQuery.docs[i].id)
              .update({
            'limit': updatedLimit,
          });
        }

        shoppingCart.clear();
        update();
        Navigator.pop(Get.context!);
        calculateTotalPrice();
      } else {
        Get.closeAllSnackbars();
        Get.snackbar("Hata", "Kayıtlı Kartınız Bulunmamaktadır");
        Navigator.pop(Get.context!);
      }
    }
  }
}
