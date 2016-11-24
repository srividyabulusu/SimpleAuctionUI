package application;

import com.opensymphony.xwork2.ActionSupport;


public class Auction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String option;
	private String modify;
	
	public void setOption(String option){
		this.option = option;
	}
	
	public String getOption(){
		return option;
	}
	
	public void setModify(String modify){
		this.modify = modify;
	}
	
	public String getModify(){
		return modify;
	}
	
	public String execute() throws Exception{
		System.out.println("Option choosed: " + option);
		if(option.equals("View")){
			return "view";
		}else if(option.equals("Modify")){
			return "modify";
		}else if(option.equals("Search")){
			return "search";
		}else{
			return "Exit";
		}	
	}
	
	public String modify() throws Exception{
		System.out.println("in Modify method option choosed: " + modify);
		if(modify.equals("newCustomer")){
			return "newCustomer";
		}else if(modify.equals("newListing")){
			return "newListing";
		}else if(modify.equals("newBid")){
			return "newBid";
		}else if(modify.equals("updateCustomer")){
			return "updateCustomer";
		}else if(modify.equals("updateListing")){
			return "updateListing";
		}else if(modify.equals("updateBid")){
			return "updateBid";
		}else{
			return "back";
		}
	}
}
