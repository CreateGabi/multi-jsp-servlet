package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MovieDAO {
	public ArrayList<MovieVO> list() {
		ArrayList<MovieVO> list = new ArrayList<MovieVO>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");

			// 2. db연결 mySQL: school, oracle: xe
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
//			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공");

			// 3. sql문을 만든다.
			String sql = "select * from Movie";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			ResultSet rs = ps.executeQuery(); // r의 결과는 table, cud는 숫자(실행된 row수)

			while (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String actor = rs.getString(4);
				String img = rs.getString(5);
				String url2 = rs.getString(6);

				MovieVO vo = new MovieVO();
				vo.setId(id2);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setActor(actor);
				vo.setImg(img);
				vo.setUrl(url2);

				list.add(vo);
			}
			System.out.println("박스(list)에 들어간 가방의 갯수>> " + list.size());

			// db처리와 관련된 메모리 할당된 것 해제시켜주자.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 메서드의 처리를 다 끝내고, 결과를 보내줘라는 개념
		return list;
	}
	
	public MovieVO one(String id) {
		MovieVO vo = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");

			// 2. db연결 mySQL: school, oracle: xe
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
//			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db연결 성공");

			// 3. sql문을 만든다.
			String sql = "select * from Movie where id = ?";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			ResultSet rs = ps.executeQuery(); // r의 결과는 table, cud는 숫자(실행된 row수)

			if (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String actor = rs.getString(4);
				String img = rs.getString(5);
				String url2 = rs.getString(6);

				vo = new MovieVO();
				vo.setId(id2);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setActor(actor);
				vo.setImg(img);
				vo.setUrl(url2);
			}

			// db처리와 관련된 메모리 할당된 것 해제시켜주자.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 메서드의 처리를 다 끝내고, 결과를 보내줘라는 개념
		return vo;
	}
}
