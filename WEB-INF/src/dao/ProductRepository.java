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
		Product phone = new Product("p1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("p1234.png");


        Product notebook = new Product("p1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        notebook.setFilename("p1235.png");


		Product tablet = new Product("p1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        tablet.setFilename("p1236.png");

        
        Product trip1 = new Product("p1237", "Galaxy Tab S", 900000);
		trip1.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip1.setCategory("trip1");
		trip1.setManufacturer("Samsung");
		trip1.setUnitsInStock(1000);
		trip1.setCondition("Old");
        trip1.setFilename("p1237.png");

        
        Product trip2 = new Product("p1238", "Galaxy Tab S", 900000);
		trip2.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip2.setCategory("trip2");
		trip2.setManufacturer("Samsung");
		trip2.setUnitsInStock(1000);
		trip2.setCondition("Old");
        trip2.setFilename("p1238.png");

        
        Product trip3 = new Product("p1239", "Galaxy Tab S", 900000);
		trip3.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip3.setCategory("trip3");
		trip3.setManufacturer("Samsung");
		trip3.setUnitsInStock(1000);
		trip3.setCondition("Old");
        trip3.setFilename("p1239.png");

       
        Product trip4 = new Product("p1240", "Galaxy Tab S", 900000);
		trip4.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip4.setCategory("trip4");
		trip4.setManufacturer("Samsung");
		trip4.setUnitsInStock(1000);
		tablet.setCondition("Old");
                trip4.setFilename("p1240.png");

       
        Product trip5 = new Product("p1241", "Galaxy Tab S", 900000);
		trip5.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip5.setCategory("trip5");
		trip5.setManufacturer("Samsung");
		trip5.setUnitsInStock(1000);
		trip5.setCondition("Old");
                        trip5.setFilename("p1241.png");

       
        Product trip6 = new Product("p1242", "Galaxy Tab S", 900000);
		trip6.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		trip6.setCategory("trip6");
		trip6.setManufacturer("Samsung");
		trip6.setUnitsInStock(1000);
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
        