package com.etranger.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etranger.api.NaverLoginBO;
import com.etranger.domain.MemberBean;
import com.etranger.service.MemberService;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class MemberController {
	@Inject
	MemberService memberService;

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	@RequestMapping(value = "/cb", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
	System.out.println("여기는 callback");
	OAuth2AccessToken oauthToken;
	oauthToken = naverLoginBO.getAccessToken(session, code, state);
	//1. 로그인 사용자 정보를 읽어온다.
	apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	/** apiResult json 구조
	{"resultcode":"00",
	"message":"success",
	"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
	**/
	//2. String형식인 apiResult를 json형태로 바꿈
	JSONParser parser = new JSONParser();
	Object obj = parser.parse(apiResult);
	JSONObject jsonObj = (JSONObject) obj;
	//3. 데이터 파싱
	//Top레벨 단계 _response 파싱
	JSONObject response_obj = (JSONObject)jsonObj.get("response");
	//response의 nickname값 파싱
	String nickname = (String)response_obj.get("nickname");
	System.out.println(nickname);
	//4.파싱 닉네임 세션으로 저장
	session.setAttribute("sessionId",nickname); //세션 생성
	model.addAttribute("result", apiResult);
	return "redirect:/";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String insertPost(MemberBean mb) {
		System.out.println("/join insertPost()");
		// MemberService 부모인터페이스 memberService =new MemberServiceImpl()
		// insertMember(mb) 메서드호출
		memberService.insertMember(mb);
		// /member/login
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(MemberBean mb, HttpSession session, Model model) {
		System.out.println("login loginPost()");
		// MemberService 부모인터페이스 memberService =new MemberServiceImpl()
		// userCheck(mb) 메서드호출
		MemberBean mb2 = memberService.userCheck(mb);
		if (mb2 != null) {
			// 일치 세션값 생성 이동 /member/main
			session.setAttribute("email", mb.getEmail());
			// /member/main
			return "redirect:/";
		} else {
			// 틀림 "아이디비밀번호 일치 하지 않음" 뒤로이동
			// 일치하지 않으면
			// 메시지 저장
			model.addAttribute("msg", "잘못 입력하신 데이터입니다");
			// 이동 msg.jsp "잘못 입력하신 데이터입니다" //뒤로이동
			return "redirect:/";
		}

	}

	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) throws IOException {
		session.invalidate();
		return "redirect:/";
	}

}
