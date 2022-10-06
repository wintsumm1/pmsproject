package pm.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import pm.dao.LoginDao;
import pm.dao.MemberDao;
import pm.vo.Mail;
import pm.vo.Member;



@Service
public class MailSenderService2 {
	Member dto = new Member();
	// 컨테이너에 있는  객체 호출.
	@Autowired(required = false)
	private JavaMailSender sender;	
	
	@Autowired(required=false) 
	private  LoginDao dao;
	
	@Autowired(required = false)
	private MemberDao memDao;
	
	public String sendMail2(Mail email, Member member) {
		// 1. 멀티미디어형 메일 데이터 전송.
		String msg = "메일 발송 성공";
		MimeMessage mmsg = sender.createMimeMessage();
		String str = getTempPassword();
		try {
//			mmsg.setXXXX(전달할 정보) :  기타 정보에 대한 할당 처리..
			// 2. 제목 설정.
			mmsg.setSubject("ISAAC 임시비밀번호 안내 이메일 입니다.");
			// 3. 수신자 설정.
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(email.getReceiver()));
			// 4. 내용 설정.
			//    ex) 계정 비밀번호 입력 처리..
			mmsg.setText("안녕하세요. ISAAC 임시비밀번호 안내 관련 이메일 입니다." + " 회원님의 임시 비밀번호는 "
	                + str + " 입니다." + "로그인 후에 비밀번호를 변경을 해주세요");
			
			// 5. 발송 처리.
			sender.send(mmsg);
			
	        member.setId(email.getReceiver());
			member.setPass(str);
			dao.pwUpdate(member);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			msg="메일 발송 에러:"+e.getMessage();
			System.out.println(msg);
		} catch (Exception e) {
			msg = "일반 에러 발생:"+e.getMessage();
		}
		
		return msg;
	}
	
	public String sendMail3(Member member) {
		// 1. 멀티미디어형 메일 데이터 전송.
		String msg = "메일 발송 성공";
		MimeMessage mmsg = sender.createMimeMessage();
		String str = getTempPassword();
		try {
//			mmsg.setXXXX(전달할 정보) :  기타 정보에 대한 할당 처리..
			// 2. 제목 설정.
			mmsg.setSubject("ISAAC 임시비밀번호 안내 이메일 입니다.");
			// 3. 수신자 설정.
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(member.getId()));
			// 4. 내용 설정.
			//    ex) 계정 비밀번호 입력 처리..
			mmsg.setText("안녕하세요. ISAAC 임시비밀번호 안내 관련 이메일 입니다." + " 회원님의 임시 비밀번호는 "
	                + str + " 입니다." + "로그인 후에 비밀번호를 변경을 해주세요");
			
			// 5. 발송 처리.
			sender.send(mmsg);
			
			member.setPass(str);
			System.out.println("여기");
			System.out.println(member.getNo());
			System.out.println(member.getDeptno());
			System.out.println(member.getId());
			System.out.println(member.getPass());
			System.out.println(member.getName());
			System.out.println(member.getAuth());
			System.out.println(member.getTel());
			System.out.println(member.getMrg());
			System.out.println(member.getMemberimg());
			
			memDao.insertMember(member);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			msg="메일 발송 에러:"+e.getMessage();
			System.out.println(msg);
		} catch (Exception e) {
			msg = "일반 에러 발생:"+e.getMessage();
		}
		
		return msg;
	}
	
	

    //랜덤함수로 임시비밀번호 구문 만들기
    
    public String getTempPassword(){
        char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String str = "";
        
        // 문자 배열 길이의 값을 랜덤으로 10개를 뽑아 구문을 작성함
        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }

        
        return str;
    }

    
}
