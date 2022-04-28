package upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController {
@RequestMapping("/filedownloadlist")
public ModelAndView downloadlist() {
	File f = new File("c:/upload");
	String[] filearray = f.list();
	ModelAndView mv = new ModelAndView();
	mv.addObject("filearray", filearray);
	mv.setViewName("upload/downloadlist");
	return mv;
}

@RequestMapping("/filedownloadresult")
	public void downloadresult(String filename, HttpServletResponse response)
throws IOException {
	//�����ѱ���
	File f = new File("c:/upload/" , filename);
	int len  =(int) f.length();
	//���ϴٿ�ε� http ���� ��ü ����
	response.setContentType("application/download");
	response.setContentLength(len);
	response.setHeader
	("Content-Disposition", "attachment;filename=\"" + filename +"\"");
	
	//���� ����
	OutputStream out = response.getOutputStream(); //������ ����	��°�ü
	FileInputStream fin = new FileInputStream(f); //�����Է°�ü ����
	FileCopyUtils.copy(fin, out);//���������Է°�ü�� ������������°�ü�� ����
	fin.close();
	out.close();
}
	
}





