package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class ProductDAO {

	public ArrayList<ProductVO> list() {
		// 가변길이인 경우 arraylist
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();

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
			String sql = "select * from Product";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			ResultSet rs = ps.executeQuery(); // r의 결과는 table, cud는 숫자(실행된 row수)
			// rs.next() true면 결과가 있으므. false면 결과가 없음.
//			System.out.println("4. sql문 db서버로 전송 성공 반영된. row 수 >> " + rs.next());

			while (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				int price = rs.getInt(4);
				String company = rs.getString(5);
				String img = rs.getString(6);

				// UI에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 UI에게 return 해주자
				// 1) 가방을 만들어서,
				ProductVO vo = new ProductVO();
				// 2) 데이터를 넣고,
				vo.setId(id2);
				vo.setName(name);
				vo.setContent(content);
				vo.setPrice(price);
				vo.setCompany(company);
				vo.setImg(img);
				
				list.add(vo);
				// 3) return하자.(전달)
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

	public ProductVO one(String id) {

		System.out.println(id);
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차
		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
		ProductVO vo = null;
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
			String sql = "select * from Product where id = ?";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			ResultSet rs = ps.executeQuery(); // r의 결과는 table, cud는 숫자(실행된 row수)
			// rs.next() true면 결과가 있으므. false면 결과가 없음.
//			System.out.println("4. sql문 db서버로 전송 성공 반영된. row 수 >> " + rs.next());

			if (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				int price = rs.getInt(4);
				String company = rs.getString(5);
				String img = rs.getString(6);

				// UI에서 사용자가 검색한 결과를 볼 수 있어야 한다.
				// 4개의 데이터를 UI에게 return 해주자
				// 1) 가방을 만들어서,
				vo = new ProductVO();
				// 2) 데이터를 넣고,
				vo.setId(id2);
				vo.setName(name);
				vo.setContent(content);
				vo.setPrice(price);
				vo.setCompany(company);
				vo.setImg(img);
				// 3) return하자.(전달)

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

	public void insert(ProductVO bag) {
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차
		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
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
			String sql = "insert into product values (?, ?, ? ,?, ?, ?)";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getName());
			ps.setString(3, bag.getContent());
			ps.setInt(4, bag.getPrice());
			ps.setString(5, bag.getCompany());
			ps.setString(6, bag.getImg());
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			int result = ps.executeUpdate();
			System.out.println("4. sql문 db서버로 전송 성공 반영된. row 수 >> " + result);
			String result2 = "실패";
			try {
				if (result == 1) {
					result2 = "성공";
				}
			} catch (Exception e) {
				System.out.println("상품 등록시 에러 발생");
				e.printStackTrace();
			}
			// JOptionPane.showMessageDialog(null, result2);

			ps.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void delete(String id) {
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차
		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
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
			String sql = "delete from product where id = ?";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			int result = ps.executeUpdate();
			System.out.println("4. sql문 db서버로 전송 성공 반영된. row 수 >> " + result);

			ps.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void update(ProductVO bag) {
		// 자바에서 DBMS를 연결하려고 함.
		// JDBC 프로그래밍 절차
		// 4단계 절차
		// 1. 드라이버 설정 - 드라이버(커넥터) 로딩
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
			String sql = "update product set content = ? where id = ?";
			// 준비된 문장(Preparedstatement)
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getContent());
			ps.setString(2, bag.getId());
			System.out.println("3. sql문 생성 성공");

			// 4. sql문을 db서버에 보낸다.
			int result = ps.executeUpdate();
			System.out.println("4. sql문 db서버로 전송 성공 반영된. row 수 >> " + result);

			ps.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
