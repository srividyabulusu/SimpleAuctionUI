package application;

import com.opensymphony.xwork2.ActionSupport;


public class Auction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String option;
	private String modify;
	private String search;
	private String updateCust;
	private String updateList;
	private String searchCust;
	
	public void setUpdateList(String updateList){
		this.updateList = updateList;
	}
	
	public String getUpdateList(){
		return this.updateList;
	}
	
	public void setSearchCust(String searchCust){
		this.searchCust = searchCust;
	}
	
	public String getSearchCust(){
		return this.searchCust;
	}
	
	public void setUpdateCust(String updateCust){
		this.updateCust = updateCust;
	}
	
	public String getUpdateCust(){
		return updateCust;
	}
	
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
	
	public void setSearch(String search){
		this.search = search;
	}
	
	public String getSearch(){
		return search;
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
			return "exit";
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
	
	public String search() throws Exception{
		System.out.println("in Search method option choosed: " + search);
		if(search.equals("product")){
			return "product";
		}else if(search.equals("seller")){
			return "seller";
		}else if(search.equals("userratings")){
			return "userratings";
		}else if(search.equals("useravgratings")){
			return "useravgratings";
		}else if(search.equals("allBids")){
			return "allBids";
		}else{
			return "back";
		}
	}
	
	public String searchCust() throws Exception{
		System.out.println("in custModify method option choosed: " + searchCust);
		if(searchCust.equals("name")){
			return "name";
		}else{
			return "back";
		}
	}
	public String goBack() throws Exception{
			return "back";
	}
	public String custModify() throws Exception{
		System.out.println("in custModify method option choosed: " + updateCust);
		if(updateCust.equals("name")){
			return "name";
		}else if(updateCust.equals("delete")){
			return "delete";
		}else if(updateCust.equals("age")){
			return "age";
		}else{
			return "back";
		}
	}
	public String listModify() throws Exception{
		System.out.println("in listModify method option choosed: " + updateList);
		if(updateList.equals("status")){
			return "status";
		}else if(updateList.equals("delete")){
			return "delete";
		}else if(updateList.equals("stBid")){
			return "stBid";
		}else{
			return "back";
		}
	}
}
