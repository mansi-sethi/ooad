package demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import demo.ConnectionPool;

public class Addtable extends ActionSupport {
	private String streamname;
	private String sip;
	private String stream_att;
	private String stream_data;
	private ArrayList<String> stream_attList;
	private ArrayList<String> stream_dataList;
	
	public String getStreamname() {
		return streamname;
	}
	public void setStreamname(String streamname) {
		this.streamname = streamname;
	}
	public String getSip() {
		return sip;
	}
	public void setSip(String sip) {
		this.sip = sip;
	}
	public String getStream_att() {
		return stream_att;
	}
	public void setStream_att(String stream_att) {
		this.stream_att = stream_att;
	}
	public String getStream_data() {
		return stream_data;
	}
	public void setStream_data(String stream_data) {
		this.stream_data = stream_data;
	}

	public String execute()
	{
		System.out.println("execute of addtable");
		stream_attList = new ArrayList<String>();
		stream_dataList = new ArrayList<String>();
		String temp;
		int i=0,l=0;
		int strmattl = stream_att.length();
		int strmdatal = stream_data.length();
		//System.out.println("cre"+crel);
		while(l!=strmattl)
		{
			int n = stream_att.indexOf(',',l+1);
			if(n==-1)
			{
				 temp=stream_att.substring(i,strmattl);
				 stream_attList.add(temp);
				 l=strmattl;
				
			}
			else
			{
				temp = stream_att.substring(i,n);
				stream_attList.add(temp);
				l=n;
				
			}
			i=n+1;
		}i=0;
		while(i!=stream_attList.size())
		{
			System.out.println(stream_attList.get(i));
			i++;
		}
		
		l=0;i=0;
		while(l!=strmdatal)
		{
			int n = stream_data.indexOf(',',l+1);
			if(n==-1)
			{
				 temp=stream_data.substring(i,strmdatal);
				 stream_dataList.add(temp);
				 l=strmdatal;
				
			}
			else
			{
				temp = stream_data.substring(i,n);
				stream_dataList.add(temp);
				l=n;
				
			}
			i=n+1;
		}i=0;
		while(i!=stream_dataList.size())
		{
			System.out.println(stream_dataList.get(i));
			i++;
		}
		Connection connection = ConnectionPool.getConnection();
		PreparedStatement ps = null;
		try {
			for (i = 0; stream_dataList != null
					&& i < stream_dataList.size(); i++) {
				ps = connection.prepareStatement("insert into Streams(NameOfStream,SourceIPAddress,Attributes,Streamscol) values(?,?,?,?)");
				ps.setString(1, streamname);
				ps.setString(2, sip);
				ps.setString(3, stream_attList.get(i));
				ps.setString(4, stream_dataList.get(i));
				
				ps.executeUpdate();
				ps.close();
				}
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 finally {
			if (null != ps) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		ConnectionPool.freeConnection(connection);
		return "success";
	}
	public ArrayList<String> getStream_attList() {
		return stream_attList;
	}
	public void setStream_attList(ArrayList<String> stream_attList) {
		this.stream_attList = stream_attList;
	}
	public ArrayList<String> getStream_dataList() {
		return stream_dataList;
	}
	public void setStream_dataList(ArrayList<String> stream_dataList) {
		this.stream_dataList = stream_dataList;
	}
		
}
