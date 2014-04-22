package nl.utwente.di;

public class Quoter {

	public int getBookPrice(String isbn) {
		switch(isbn) {
		case "1":
			return 10;
		case "2":
			return 45;
		case "3":
			return 20;
		case "4":
			return 35;
		case "5":
			return 50;
		default:
			return 0;
		}
	}

}
