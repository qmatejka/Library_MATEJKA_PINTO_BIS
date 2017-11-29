package model;

public class BookNotFoundException extends Exception {

    @Override
    public String getMessage() {
            // TODO Auto-generated method stub
            return super.getMessage()+ " Book was not found";
    }
}
