package model;


public class Book {
    private String idISBN;
    private String author;
    private String name;
    private int stockAvailable;
    private int stockTotal;

    public Book(String isbn,String autor, String name, int stockAvailable, int stockTotal) {
        this.idISBN=isbn;
        this.author=autor;
        this.name=name;
        this.stockAvailable=stockAvailable;
        this.stockTotal=stockTotal;
    }

    /**
     * @return the idISBN
     */
    public String getIdISBN() {
        return idISBN;
    }

    /**
     * @param idISBN the idISBN to set
     */
    public void setIdISBN(String idISBN) {
        this.idISBN = idISBN;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the stockAvailable
     */
    public int getStockAvailable() {
        return stockAvailable;
    }

    /**
     * @param stockAvailable the stockAvailable to set
     */
    public void setStockAvailable(int stockAvailable) {
        this.stockAvailable = stockAvailable;
    }
    
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getStockTotal() {
        return stockTotal;
    }

    public void setStockTotal(int stockTotal) {
        this.stockTotal = stockTotal;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((author == null) ? 0 : author.hashCode());
        result = prime * result + ((idISBN == null) ? 0 : idISBN.hashCode());
        result = prime * result + ((name == null) ? 0 : name.hashCode());
        result = prime * result + stockAvailable;
        return result;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
                return true;
        if (obj == null)
                return false;
        if (getClass() != obj.getClass())
                return false;
        Book other = (Book) obj;
        if (author == null) {
                if (other.author != null)
                        return false;
        } else if (!author.equals(other.author))
                return false;
        if (idISBN == null) {
                if (other.idISBN != null)
                        return false;
        } else if (!idISBN.equals(other.idISBN))
                return false;
        if (name == null) {
                if (other.name != null)
                        return false;
        } else if (!name.equals(other.name))
                return false;
        if (stockAvailable != other.stockAvailable)
                return false;
        return true;
    }
	
	
}
