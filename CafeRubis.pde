void setup()
{
  size(800, 600);
  
  loadData();
  printProducts();
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

void printProducts()
{
  for(Product s:Products)
  {
   println(s.name); 
  }
  for (int i = 0; i < Products.size(); i++ )
  {
    Product s = Products.get(i);
    println(s);
  } 
}