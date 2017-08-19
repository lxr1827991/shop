package cn.itcast.shop.adminuser.vo;
/**
 * 后台用户登录实体
 * @author zgh
 *
 */
public class AdminUser {
	private Integer uid;
	private String nickname;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getIntegral() {
		return integral;
	}
	public void setIntegral(String integral) {
		this.integral = integral;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getVIP() {
		return VIP;
	}
	public void setVIP(String vIP) {
		VIP = vIP;
	}
	public String getMemberavatar() {
		return memberavatar;
	}
	public void setMemberavatar(String memberavatar) {
		this.memberavatar = memberavatar;
	}
	private String name;
	private String phone;
	private String email;
	private String address;
	private int state;
	private String card;
	private String integral;
	private String balance;
	private String VIP;
	private String memberavatar;
	private String username;
	private String password;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
