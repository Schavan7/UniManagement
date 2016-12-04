package model;
import java.sql.Date;

public class StudentClass {
private Integer classId;
private Date startDate;
private Date endDate;
private Integer capacity;
private Integer facultyId;
private Integer Courseid;
public Integer getClassId() {
	return classId;
}
public void setClassId(Integer classId) {
	this.classId = classId;
}
public Date getStartDate() {
	return startDate;
}
public void setStartDate(Date startDate) {
	this.startDate = startDate;
}
public Date getendDate() {
	return endDate;
}
public void setendDate(Date date) {
	endDate = date;
}
public Integer getCapacity() {
	return capacity;
}
public void setCapacity(Integer capacity) {
	this.capacity = capacity;
}
public Integer getFacultyId() {
	return facultyId;
}
public void setFacultyId(Integer facultyId) {
	this.facultyId = facultyId;
}
public Integer getCourseid() {
	return Courseid;
}
public void setCourseid(Integer claCourseid) {
	this.Courseid = claCourseid;
}

}
