package product;

public class Product {
	int pid;
	String pname;
	int pprice;
	public Product(int pid,String pname,int pprice)
	{
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		
	}
	public int getPid()
	{
		return pid;
	}
	public void setPid(int pid)
	{
		this.pid = pid;
	}
	public String getpname() {
		return pname;
	}
	public void serPname(String pname) {
		this.pname = pname;
	}
	public int getPprice()
	{
		return pprice;
	}
	public void setPprice(int pprice)
	{
		this.pprice = pprice;
	}
}
