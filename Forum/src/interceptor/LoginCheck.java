package interceptor;

import java.util.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import entity.*;

@SuppressWarnings("serial")
public class LoginCheck extends AbstractInterceptor{

	@SuppressWarnings("unchecked")
	public String intercept(ActionInvocation ai) throws Exception {
		
		Map session = ai.getInvocationContext().getSession();
		User user = (User)session.get("loginUser");
		if(user != null){
			return ai.invoke();
		}else{
			ActionContext actionContext = ai.getInvocationContext();
			actionContext.put("prompt", "����û�е�¼�����ȵ�¼��");
			return "fail";
		}
	}

}
