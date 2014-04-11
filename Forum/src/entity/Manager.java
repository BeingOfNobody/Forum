package entity;

@SuppressWarnings("serial")
public class Manager implements java.io.Serializable {

	private Integer managerId;
	private String managerName;
	private String managerPassword;

	public Manager() {
	}

	public Manager(String managerName, String managerPassword) {
		this.managerName = managerName;
		this.managerPassword = managerPassword;
	}

	public Integer getManagerId() {
		return this.managerId;
	}

	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}

	public String getManagerName() {
		return this.managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getManagerPassword() {
		return this.managerPassword;
	}

	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}

}