package application;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchActions  {
	
	List<SearchListResultBean> list = null;
	List<SearchCustResultBean> list2 = null;
	List<SearchBidResultBean> list3 = null;
	String name;
	String id;

    public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public List<SearchBidResultBean> getList3() {
		return list3;
	}
	public void setList3(List<SearchBidResultBean> list3) {
		this.list3 = list3;
	}
	
	public List<SearchListResultBean> getList() {
        return list;
    }
    public void setList(List<SearchListResultBean> list) {
        this.list = list;
    }
	
    public List<SearchCustResultBean> getList2() {
		return list2;
	}
	public void setList2(List<SearchCustResultBean> list2) {
		this.list2 = list2;
	}
	
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name = name;
	}


	public String searchListPName() {
		System.out.println("Enter the Product Name to search Listing: ");
		
		list = new ArrayList<SearchListResultBean>();

		SearchListResultBean bean;
		
		String St1 = getName().toLowerCase();
		System.out.println(St1);
		Connection conn = DBConnect.connect();
		
		//query to fetch all tuples from listing of the Product name provided
		String sql3 = "select a.* from listing a, product b where b.pname=? and b.pid=a.pid"; 
		
		PreparedStatement prepStmt = null;
			try {
				prepStmt = conn.prepareStatement(sql3);
				prepStmt.setString(1, St1);
				ResultSet rs = prepStmt.executeQuery();
				
				System.out.println("listing_id \t condition \t status \t start_bid \t start_time \t end_time \t pid \t seller_id");
				while(rs.next()){
					bean = new SearchListResultBean();
					bean.setListing_id(rs.getString(1));
					bean.setCondition(rs.getString(2));
					bean.setStatus(rs.getString(3));
					bean.setStart_bid(rs.getString(4));
					bean.setStart_time(rs.getString(5));
					bean.setEnd_time(rs.getString(6));
					bean.setPid(rs.getString(7));
					bean.setSeller_id(rs.getString(8));
					list.add(bean);
					System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6)+"\t"+rs.getString(7)+"\t"+rs.getString(8));
				}  
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	        
			return "success";
	}

	public String searchListSID() {
		System.out.println("Enter the Product ID to search Listing: ");
		
		//get product id to search listing as user input
		list = new ArrayList<SearchListResultBean>();

		SearchListResultBean bean;
		
		int Int5 = Integer.parseInt(getId());
		System.out.println(Int5);
		
		Connection conn = DBConnect.connect();
		
		//query to fetch all tuples from listing of the Product ID provided
		String sql3 = "select a.* from listing a where a.seller_id=?"; 
		PreparedStatement prepStmt = null;
			try {
				prepStmt = conn.prepareStatement(sql3);
				prepStmt.setInt(1, Int5);
				ResultSet rs = prepStmt.executeQuery();
				System.out.println("listing_id \t condition \t status \t start_bid \t start_time \t end_time \t pid \t seller_id");
				while(rs.next()){
					bean = new SearchListResultBean();
					bean.setListing_id(rs.getString(1));
					bean.setCondition(rs.getString(2));
					bean.setStatus(rs.getString(3));
					bean.setStart_bid(rs.getString(4));
					bean.setStart_time(rs.getString(5));
					bean.setEnd_time(rs.getString(6));
					bean.setPid(rs.getString(7));
					bean.setSeller_id(rs.getString(8));
					list.add(bean);
					System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6)+"\t"+rs.getString(7)+"\t"+rs.getString(8));
			}  
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "success";
	}
	
	public String searchUserCommentsRatings() {
		System.out.println("Enter the User Name to search and show comments as well as ratings: ");
		
		list2 = new ArrayList<SearchCustResultBean>();

		SearchCustResultBean bean;
		
		String St2 = getName().toLowerCase();
		System.out.println(St2);
		Connection conn = DBConnect.connect();
		
		//query to fetch all tuples from listing of the Product provided
		String sql3 = "select a1.name, b1.rating_buyer_to_seller as rating from customer a1, completed_transaction b1 where a1.id=b1.seller_id and a1.name=? union select a2.name, b2.rating_seller_to_buyer as rating from customer a2, completed_transaction b2 where a2.id=b2.buyer_id and a2.name=?"; 
		PreparedStatement prepStmt = null;
			try {
				prepStmt = conn.prepareStatement(sql3);
				prepStmt.setString(1, St2);
				prepStmt.setString(2, St2);
				ResultSet rs = prepStmt.executeQuery();
				System.out.println("Name"+"\t"+"Rating"+"\t"+"Comments");
				while(rs.next()){
					bean = new SearchCustResultBean();
					bean.setName(rs.getString(1));
					bean.setRating_buyer_to_seller(rs.getString(2));
					list2.add(bean);
					System.out.println(rs.getString(1)+"\t"+rs.getString(2));
				}  
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "success";
	}

	
	public String searchUserAvgRating() {
		System.out.println("Enter the User Name to search and show average ratings: ");
		
		list2 = new ArrayList<SearchCustResultBean>();

		SearchCustResultBean bean;
		
		String St3 = getName().toLowerCase();
		System.out.println(St3);
		Connection conn = DBConnect.connect();
		
		//query to fetch all tuples from listing of the Product provided
		String sql3 = "select a1.name, a1.avg_rating from customer a1 where a1.name=?"; 
		PreparedStatement prepStmt = null;
			try {
				prepStmt = conn.prepareStatement(sql3);
				prepStmt.setString(1, St3);
				ResultSet rs = prepStmt.executeQuery();
				System.out.println("Name"+"\t"+"Avg_Rating");
				while(rs.next()){
					bean = new SearchCustResultBean();
					bean.setName(rs.getString(1));
					bean.setAvg_rating(rs.getString(2));
					list2.add(bean);
					System.out.println(rs.getString(1)+"\t"+rs.getString(2));
				}  
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "success";
	}

	public String showBids() {
		System.out.println("Enter the listing id to show all the bids related to it: ");
		
		list3 = new ArrayList<SearchBidResultBean>();

		SearchBidResultBean bean;
		
		int Int6 = Integer.parseInt(getId());
		
		System.out.println(Int6);
		Connection conn = DBConnect.connect();
		
		//query to fetch all tuples from bids of the listing id provided
		String sql3 = "select b.* from bid b where b.listing_id=?";
		PreparedStatement prepStmt = null;
		try {
			prepStmt = conn.prepareStatement(sql3);
			prepStmt.setInt(1, Int6);
			ResultSet rs = prepStmt.executeQuery();
			System.out.println("Bid_No"+"\t"+"Amount"+"\t"+"Listing_ID"+"\t"+"Buyer_ID"+"\t"+"Bid_Time");
			while(rs.next()){
				bean = new SearchBidResultBean();
				bean.setBid_no(rs.getString(1));
				bean.setAmount(rs.getString(2));
				bean.setListing_id(rs.getString(3));
				bean.setBuyer_id(rs.getString(4));
				bean.setBid_time(rs.getString(5));
				list3.add(bean);
				System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5));
			}  
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
		
		
	}	

}
