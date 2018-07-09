
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.NoticeVO;
import org.cg.persistence.NoticeDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class dbtest {
	private static final Logger logger = Logger.getLogger(dbtest.class);

	
	@Inject
	SqlSessionTemplate sess;
	
	@Inject
	NoticeDAO dao;



	@Test
	public void acrudTest(){
		
		
	}

	@Test
	public void qInsertTest(){
	
		sess.selectOne("org.gettime");
		}
	
	@Test
	public void qInsertTest2(){
		for (int i = 0; i < 500; i++) {
			
			NoticeVO vo = new NoticeVO();
			vo.setWriter("writer"+i);
			vo.setTitle("title"+i);
			vo.setContent(i+"Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur");
			dao.create(vo);
			}
		}
	
}
		
	
		
	
	
	