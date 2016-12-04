package model;
import java.sql.Date;
public class Enrollment {
	private Integer enrollId;
	private Date enrollStartdate;
	private Date enrollEnddate;
	private String enrollCoursename;
	private Double grade;
	private Integer enrollCourseid;
	private Integer enrollClassid;
	private Integer enrollUserid;
	public Integer getEnrollId() {
		return enrollId;
	}
	public void setEnrollId(Integer enrollId) {
		this.enrollId = enrollId;
	}
	public Date getEnrollStartdate() {
		return enrollStartdate;
	}
	public void setEnrollStartdate(Date enrollStartdate) {
		this.enrollStartdate = enrollStartdate;
	}
	public Date getEnrollEnddate() {
		return enrollEnddate;
	}
	public void setEnrollEnddate(Date enrollEnddate) {
		this.enrollEnddate = enrollEnddate;
	}
	public String getEnrollCoursename() {
		return enrollCoursename;
	}
	public void setEnrollCoursename(String enrollCoursename) {
		this.enrollCoursename = enrollCoursename;
	}
	public Double getGrade() {
		return grade;
	}
	public void setGrade(Double grade) {
		this.grade = grade;
	}
	public Integer getEnrollCourseid() {
		return enrollCourseid;
	}
	public void setEnrollCourseid(Integer enrollCourseid) {
		this.enrollCourseid = enrollCourseid;
	}
	public Integer getEnrollClassid() {
		return enrollClassid;
	}
	public void setEnrollClassid(Integer enrollClassid) {
		this.enrollClassid = enrollClassid;
	}
	public Integer getEnrollUserid() {
		return enrollUserid;
	}
	public void setEnrollUserid(Integer enrollUserid) {
		this.enrollUserid = enrollUserid;
	}
}
