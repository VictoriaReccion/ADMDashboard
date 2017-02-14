package service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.EventType;
import utils.db.Query;

/**
 * This class handles all SQL statements needed for the EventType Transfer Objects
 * @author Mavic Reccion
 *
 */
public class EventTypeService {
	
	/**
	 * This method retrieves all event types in the database
	 * @return ArrayList<EventType>
	 */
	public static ArrayList<EventType> getAllEventType() {
		System.out.println("[METHOD] getAllEventType");
		
		ArrayList<EventType> eventTypeList = new ArrayList<EventType>();
		EventType eventType = null;
		
		String query = "SELECT * FROM " + EventType.TABLE_NAME;
		
		Query q = Query.getInstance();
		ResultSet r = null;
		
		try {
			r = q.runQuery(query);
			
			while(r.next()) {
				eventType = new EventType();
				eventType.setEventtypeID(r.getInt(EventType.COL_EVENTTYPEID));
				eventType.setEventtype(r.getString(EventType.COL_EVENTTYPE));
				
				eventTypeList.add(eventType);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				q.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return eventTypeList;
	}

}
