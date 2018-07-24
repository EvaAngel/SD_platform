import com.nsfocus.bean.*;
import mapper.JenkinsMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class JenkinsTest {
    @Autowired
    private JenkinsMapper jenkinsMapper;
    @Test
    public void addJenkinsTest()
    {
        Jenkins jenkins=new Jenkins();
        jenkins.setCloneStyle("svn");
        jenkins.setResp("http://********************.svn");
        jenkins.setDyScan("0");
        jenkins.setStaScan(new StaScan());
        jenkins.setRelySecurity(new RelySecurity());
        jenkins.setRsas(new Rsas());
        jenkins.setBvs(new Bvs());
        jenkinsMapper.addJenkins(jenkins);
    }
    @Test
    public void queryJenkinsAllTest()
    {
        List<Jenkins> jenkinsList =jenkinsMapper.queryJenkinsAll();
        System.out.println(jenkinsList.get(0).getResp());
    }
}
