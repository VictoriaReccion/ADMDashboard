package model.calendar;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

import model.Event;
import model.EventDate;
import model.Org;
import model.Status;

public class CalendarEvent implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4601364874099281325L;


	public static final String TABLE_EVENTDATE = EventDate.TABLE_NAME;
	public static final String COL_DATE = EventDate.COL_DATE;

	public static final String COL_ORGCODE = Org.COL_ORGCODE;
	public static final String TABLE_EVENT = Event.TABLE_NAME;
	public static final String COL_EVENTID = Event.COL_EVENTID;
	public static final String COL_EVENTNAME = Event.COL_EVENTNAME;
	public static final String COL_EVENTDESC = Event.COL_EVENTDESC;
	public static final String COL_POSTACTDEADLINE = Event.COL_POSTACTDEADLINE;
	public static final String COL_POSTACTSTATUS = Event.COL_POSTACTSTATUS;
	
	
	private int id;
	private String title;
	private String start;
	private String color;
	private String description;
	private String status;
	private String org;

	public CalendarEvent(){}

	public CalendarEvent(int id, String title, String org, String description, String start, String status, String color) {
		this.id = id;
		this.title = title;
		this.start = start;
		this.color = color;
		this.description = description;
		this.org = org;
		this.status = status;
	}
	
	public void setEverything(int id, String title, String org, String description, String start, String status, String color) {
		this.id = id;
		this.title = title;
		this.start = start;
		this.color = color;
		this.description = description;
		this.org = org;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
