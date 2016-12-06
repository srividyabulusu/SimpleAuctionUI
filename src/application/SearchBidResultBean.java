package application;

public class SearchBidResultBean {
	private String bid_no = null;
	private String amount = null;
	private String listing_id = null;
	private String buyer_id = null;
	private String bid_time = null;
	
	public String getBid_no() {
		return bid_no;
	}
	public void setBid_no(String bid_no) {
		this.bid_no = bid_no;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getListing_id() {
		return listing_id;
	}
	public void setListing_id(String listing_id) {
		this.listing_id = listing_id;
	}
	public String getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}
	public String getBid_time() {
		return bid_time;
	}
	public void setBid_time(String bid_time) {
		this.bid_time = bid_time;
	}
}
