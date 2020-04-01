package com.newchapter.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
  "file:src/main/webapp/WEB-INF/spring/root-context.xml",
  "file:src/main/webapp/WEB-INF/spring/security-context.xml"
  })
@Log4j
public class MemberTests {

  @Setter(onMethod_ = @Autowired)
  private PasswordEncoder pwencoder;
  
  @Setter(onMethod_ = @Autowired)
  private DataSource ds;
  
//  @Test
//  public void testInsertMember() {
//
//    String sql = "update member_tb set m_password=? where m_id=?";
//    
//    for(int i = 0; i < 6; i++) {
//      
//      Connection con = null;
//      PreparedStatement pstmt = null;
//      
//      try {
//        con = ds.getConnection();
//        pstmt = con.prepareStatement(sql);
//        
//        pstmt.setString(1, pwencoder.encode("pw1"+i));
//        pstmt.setString(2, "member1"+i);
//                    
//        
//        pstmt.executeUpdate();
//        
//      }catch(Exception e) {
//        e.printStackTrace();
//      }finally {
//        if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
//        if(con != null) { try { con.close();  } catch(Exception e) {} }
//        
//      }
//    }//end for
//  }
  
  @Test
  public void testInsertAuth() {
    
    
    String sql = "update authority_tb set authority=? where m_id=?";
    
    for(int i = 0; i < 6; i++) {
      
      Connection con = null;
      PreparedStatement pstmt = null;
      
      try {
        con = ds.getConnection();
        pstmt = con.prepareStatement(sql);
      
        
          
          pstmt.setString(2, "admin0"+i);
          pstmt.setString(1,"ROLE_ADMIN");

        
        pstmt.executeUpdate();
        
      }catch(Exception e) {
        e.printStackTrace();
      }finally {
        if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
        if(con != null) { try { con.close();  } catch(Exception e) {} }
        
      }
    }//end for
  }

  
}


