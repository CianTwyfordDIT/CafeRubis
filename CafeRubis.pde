void setup()
{
  size(800, 600);
  
  loadData();
}

void loadData()
{
  Table table = loadTable("Test.csv", "header");
  for(TableRow r:table.rows())
  {
    Product Product = new Product(r);
    Products.add(Product);
  }
}

ArrayList<Product> Products = new ArrayList<Product>();
ArrayList<Product> Bill = new ArrayList<Product>();