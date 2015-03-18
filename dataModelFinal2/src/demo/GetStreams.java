package demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GetStreams {

	private List<stream> streamList;
	private List<stream> streamList2;
	private List<StreamData> streamListData;
	private String streams;
	private String stream1;
	private String stream2;

	static Connection con = ConnectionPool.getConnection();

	public String getAllStreams() {

		List<stream> list = new ArrayList<stream>();
		String sql = "select distinct NameOfStream from Streams";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				stream s = new stream();
				s.setStreamName(rs.getString("NameOfStream"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ConnectionPool.freeConnection(con);
		}
		setStreamList(list);
		return "success";
	}

	public String getStreamsData() {
		List<StreamData> list = new ArrayList<StreamData>();
		String sql = "select Attributes , Streamscol from  DataModelling.Streams where NameOfStream like ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, streams);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StreamData s = new StreamData();
				s.setAttribute(rs.getString("Attributes"));
				s.setDatatype(rs.getString("Streamscol"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ConnectionPool.freeConnection(con);
		}
		setStreamListData(list);
		getAllStreams();
		return "success";
	}

	public String getLinkStreamsName() {
		/*List<stream> list = new ArrayList<stream>();
		String sql = "select distinct NameOfStream from Streams where NameOfStream <> ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stream1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				stream s = new stream();
				s.setStreamName(rs.getString("NameOfStream"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ConnectionPool.freeConnection(con);
		}*/
		List<stream> list = new ArrayList<stream>();
		String sql = "select distinct NameOfStream from Streams";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				stream s = new stream();
				s.setStreamName(rs.getString("NameOfStream"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ConnectionPool.freeConnection(con);
		}
		setStreamList(list);
		setStreamList2(list);
		return "success";
	}

	public String getLinkStreamsData() {
		List<StreamData> list = new ArrayList<StreamData>();
		String sql = "select stream1,stream2,column1 ,column2 from  DataModelling.Join_streams where stream1 like ? and stream2 like ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stream1);
			ps.setString(2, stream2);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StreamData s = new StreamData();
				s.setAttribute(rs.getString("column1"));
				s.setAttribute1(rs.getString("column2"));
				s.setStream(rs.getString("stream1"));
				s.setStream1(rs.getString("stream2"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ConnectionPool.freeConnection(con);
		}
		setStreamListData(list);
		getLinkStreamsName();
		return "success";
	}

	public List<stream> getStreamList() {
		return streamList;
	}

	public void setStreamList(List<stream> streamList) {
		this.streamList = streamList;
	}

	public String getStreams() {
		return streams;
	}

	public void setStreams(String streams) {
		this.streams = streams;
	}

	public String getStream1() {
		return stream1;
	}

	public void setStream1(String stream1) {
		this.stream1 = stream1;
	}

	public List<StreamData> getStreamListData() {
		return streamListData;
	}

	public void setStreamListData(List<StreamData> streamListData) {
		this.streamListData = streamListData;
	}

	public String getStream2() {
		return stream2;
	}

	public void setStream2(String stream2) {
		this.stream2 = stream2;
	}

	public List<stream> getStreamList2() {
		return streamList2;
	}

	public void setStreamList2(List<stream> streamList2) {
		this.streamList2 = streamList2;
	}

}
