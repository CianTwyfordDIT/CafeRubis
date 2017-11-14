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

void draw()
{
  for (int j = 0; j < 6; j++);
  {
    for (int i = 60; i < 500; i += height/9)
    {
      rect(40, i, 250, 50);
    }
  }
  
  line(width/2, 40, width/2, height-40);
  
  rect(width/2+70, 60, 275, 500);
  String a = ("Your Bill");
  textSize(20);
  stroke(0);
  text(a, width/2+150, 90); 
}

void displayProducts()
{
  draw();
  for (int i = 0; i < Products.size(); i++ )
  {
    text(i,10,10);
  } 
}