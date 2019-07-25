package test;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

public class JdbcTest {
    @Test
    public void getJdbcTemplate(){
        JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtils.getDataSource());
        System.out.println(jdbcTemplate);
    }
}
