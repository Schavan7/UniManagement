package model;
import java.sql.Date;

public class Class {
private Integer classId;
private Date startDate;
private Date Date;
private Integer capacity;
private Integer facultyId;
private Integer claCourseid;
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
public Date getDate() {
	return Date;
}
public void setDate(Date date) {
	Date = date;
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
public Integer getClaCourseid() {
	return claCourseid;
}
public void setClaCourseid(Integer claCourseid) {
	this.claCourseid = claCourseid;
}

}
