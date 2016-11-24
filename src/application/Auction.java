package application;

import com.opensymphony.xwork2.ActionSupport;


public class Auction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String option;
	
	public void setOption(String option){
		this.option = option;
	}
	
	public String getOption(){
		return option;
	}
	
	public String execute() throws Exception{
		if(option.equals("view")){
			return "view";
		}else if(option.equals("modify")){
			return "modify";
		}else if(option.equals("search")){
			return "search";
		}else{
			return "exit";
		}	
	}
}
