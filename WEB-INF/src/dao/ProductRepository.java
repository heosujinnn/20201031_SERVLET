package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance(){
	    return instance;
   }

    
	public ProductRepository() {
		Product phone = new Product("p1234", "노보텔 앰버서드 강남", 237600);
		phone.setDescription("강남역 신논현역 도보 3분거리");
		phone.setCategory("호텔");
		phone.setManufacturer("앰버서더노보텔");
		phone.setUnitsInStock(3);
		phone.setCondition("New");
        phone.setFilename("p1234.png");


        Product notebook = new Product("p1235", "엘리에나 호텔", 163100);
		notebook.setDescription("4성급 강남구 호텔");
		notebook.setCategory("호텔");
		notebook.setManufacturer("엘리에니");
		notebook.setUnitsInStock(1);
		notebook.setCondition("Refurbished");
        notebook.setFilename("p1235.png");


		Product tablet = new Product("p1236", "역삼 아르누보씨티 호텔앤레지던스", 59900);
		tablet.setDescription("강남구 역삼역 도보 5분거리");
		tablet.setCategory("레지던트");
		tablet.setManufacturer("아르누보씨티");
		tablet.setUnitsInStock(11);
		tablet.setCondition("Old");
        tablet.setFilename("p1236.png");

        
        Product trip1 = new Product("p1237", "가평 디프라이빗 캠핑", 199000);
		trip1.setDescription("가평군 용소폭포 차량 19분 거리");
		trip1.setCategory("캠핑장");
		trip1.setManufacturer("디프라이빗");
		trip1.setUnitsInStock(1);
		trip1.setCondition("Old");
        trip1.setFilename("p1237.png");

        
        Product trip2 = new Product("p1238", "포천 호랑이 캠핑", 98000);
		trip2.setDescription("포천시 위치");
		trip2.setCategory("캠핑장");
		trip2.setManufacturer("포천 호랭이");
		trip2.setUnitsInStock(25);
		trip2.setCondition("Old");
        trip2.setFilename("p1238.png");

        
        Product trip3 = new Product("p1239", "시흥 작은 쉽터캠핑장", 40000);
		trip3.setDescription("시흥시에 위치해있는 작은 쉽터 캠핑장");
		trip3.setCategory("캠핑장");
		trip3.setManufacturer("시흥구");
		trip3.setUnitsInStock(10);
		trip3.setCondition("Old");
        trip3.setFilename("p1239.png");

       
        Product trip4 = new Product("p1240", "양평 풀빌라마노아", 299000);
		trip4.setDescription("양평군 두물머리 차량 30분 거리");
		trip4.setCategory("켐핑장");
		trip4.setManufacturer("양평 마노아");
		trip4.setUnitsInStock(3);
		tablet.setCondition("Old");
                trip4.setFilename("p1240.png");

       
        Product trip5 = new Product("p1241", "양평 하녹펜션", 337500);
		trip5.setDescription("양평군에 위치한 하녹펜션");
		trip5.setCategory("펜션");
		trip5.setManufacturer("하노하노");
		trip5.setUnitsInStock(5);
		trip5.setCondition("Old");
                        trip5.setFilename("p1241.png");

       
        Product trip6 = new Product("p1242", "양평 솔지에로 펜션", 80000);
		trip6.setDescription("양평군 중원계곡 도보 9분 거리");
		trip6.setCategory("펜션");
		trip6.setManufacturer("솔지에로");
		trip6.setUnitsInStock(1);
		trip6.setCondition("Old");
        trip6.setFilename("p1242.png");

        

       
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
        listOfProducts.add(trip1);
        listOfProducts.add(trip2);
        listOfProducts.add(trip3);
        listOfProducts.add(trip4);
        listOfProducts.add(trip5);
        listOfProducts.add(trip6);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    public Product getProductById(String productId) {
		Product productById = null;
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
       public void addProduct(Product product) {
	    listOfProducts.add(product);
       }


}
        