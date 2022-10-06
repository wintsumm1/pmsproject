package pm.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class MultiLangController {
	// 컨테이너에 언어에 따라서 view 화면의 language가 변경 되게 설정하는 객체 호출..
	@Autowired(required = false)
	private LocaleResolver localResolver;

	// 1. 초기화면 로딩
	// http://localhost:7080/project06/language.do
	// http://49.238.206.101:7080/project06/language.do
	// 2. 언어설정 요청 값 처리(get / post)
	// http://49.238.206.101:7080/project06/language.do?lang=ko
	// http://49.238.206.101:7080/project06/language.do?lang=en
	@RequestMapping("language.do")
	public String multi(@RequestParam(value = "lang", defaultValue = "") String lang, HttpServletRequest request,
			HttpServletResponse response, Model d) {
		System.out.println("선택한 언어:" + lang);
		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;

	}
}
