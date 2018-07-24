package mapper;

import com.nsfocus.bean.Jenkins;

import java.util.List;

public interface JenkinsMapper {
    public void addJenkins(Jenkins jenkins);
    public List<Jenkins> queryJenkinsAll();
}
