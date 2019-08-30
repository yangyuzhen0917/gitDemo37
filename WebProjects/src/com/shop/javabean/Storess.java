package com.shop.javabean;

public class Storess {

		private int storeid;
		private String storename;
		private double storeprice;
		private int storecount;
		private String storeinfo;
		private String storeimg;
		public int getStoreid() {
			return storeid;
		}
		public void setStoreid(int storeid) {
			this.storeid = storeid;
		}
		public String getStorename() {
			return storename;
		}
		public void setStorename(String storename) {
			this.storename = storename;
		}
		public double getStoreprice() {
			return storeprice;
		}
		public void setStoreprice(double storeprice) {
			this.storeprice = storeprice;
		}
		public int getStorecount() {
			return storecount;
		}
		public void setStorecount(int storecount) {
			this.storecount = storecount;
		}
		public String getStoreinfo() {
			return storeinfo;
		}
		public void setStoreinfo(String storeinfo) {
			this.storeinfo = storeinfo;
		}
		public String getStoreimg() {
			return storeimg;
		}
		public void setStoreimg(String storeimg) {
			this.storeimg = storeimg;
		}
		public Storess(int storeid, String storename, double storeprice, int storecount, String storeinfo,
				String storeimg) {
			super();
			this.storeid = storeid;
			this.storename = storename;
			this.storeprice = storeprice;
			this.storecount = storecount;
			this.storeinfo = storeinfo;
			this.storeimg = storeimg;
		}
		public Storess() {
			super();
		}
		@Override
		public String toString() {
			return "Storess [storeid=" + storeid + ", storename=" + storename + ", storeprice=" + storeprice
					+ ", storecount=" + storecount + ", storeinfo=" + storeinfo + ", storeimg=" + storeimg + "]";
		}

}
