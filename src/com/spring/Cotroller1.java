package com.spring;



import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Cotroller1 {
	
@Autowired
HibernateTemplate temp;

@RequestMapping("/logindo")
public String loginpage()
{
	System.out.println(temp);
return "loginpage";	
}
@RequestMapping("/request")
public String requestpage()
{
return "regpage1";	
}
//++++++++++++++++++Register page+++++++++++++++++++++++++++++
@RequestMapping(value="/doreg",method=RequestMethod.POST) 
public ModelAndView registrationpage(@ModelAttribute("emp") UserDetails userlogin) 
{
try 
{
System.out.println("1");	 
temp.save(userlogin);
System.out.println("strat");

return new ModelAndView("loginpage","msg","***** you are Ragistration success please login ******");	

} 
catch (Exception e) {
	  
	  return new ModelAndView("errorpage"); 
	  }
	 
}  

// =============login page ========================
@RequestMapping(value="/wellcome",method={RequestMethod.GET,RequestMethod.POST})
public ModelAndView homeLogin(@ModelAttribute("emp1") UserDetails hlogin,HttpSession ses)
{	  
	try
	{
		//System.out.println("11");
		ses.setAttribute("email", hlogin.getUemail());
		//System.out.println(hlogin.getUemail());
	//	System.out.println(hlogin.getUpass());
		//System.out.println("45");
	 UserDetails hlogin1=temp.get(UserDetails.class, hlogin.getUemail());	
	// System.out.println(hlogin1.getUpass());
	 
	// System.out.println("111");
	 
	//String s= (String) ses.getAttribute("email");
	//System.out.println("13");
	//System.out.println(s+"dddd");
	
				  if(hlogin.getUpass().equals(hlogin1.getUpass()))
				  {
					//.out.println("14");
					  return new ModelAndView("homepage","msg","Well come "+hlogin.getUemail());
				  }
		
			
		  else { 
			//  System.out.println("15");
			 return new ModelAndView("loginpage","msg1","invalid Emial and Password");
			 }	
				  
				  
	
	}
	catch (Exception e) {
		//System.out.println("16");
		  return new ModelAndView("errorpage");	
	}
}	
//-------------- user update page ---------------

@RequestMapping(value="/prashow",method={RequestMethod.GET,RequestMethod.POST}) 
public ModelAndView registrationpage1(@ModelAttribute("emp") UserDetails user) 
{
try 
{
Query q=(Query) temp.find("from UserDetails");
List<UserDetails> list=q.list();
ModelAndView mv=new ModelAndView("practice","msg",list);
Iterator i=list.iterator();
while(i.hasNext()) 
{ 
	  UserDetails daa=(UserDetails) i.next();
}
		
return mv;	
} 
catch (Exception e) {
	 
return new ModelAndView("errorpag");

} 
}
//+++++++++++++++++++++++++++ Update user data +++++++++++++++++++++++++++++++++++
	  @RequestMapping(value="/updatepage",method= {RequestMethod.GET,RequestMethod.POST}) 
	  public ModelAndView userupdate(@ModelAttribute("up1") UserDetails upd,HttpSession ses )
	  {
		  UserDetails s=temp.get(UserDetails.class, "email");
		 temp.update(upd);
		 ses.invalidate();
		  return new ModelAndView("homepage","msd",upd);		  
	  }
//=====================show user data=====================

@RequestMapping(value="/userdetail",method= {RequestMethod.GET,RequestMethod.POST}) 
public ModelAndView userDetailed(@ModelAttribute("up") UserDetails upd,HttpSession ses ) {
	 String s=(String) ses.getAttribute("email");
	 UserDetails hlogin1=temp.get(UserDetails.class,s);
	 return new ModelAndView("update","msd", hlogin1); 
	 	  
}
//------------------- show user table ---------------------------
	 	@SuppressWarnings("unchecked")
		@RequestMapping(value="/allusers",method= {RequestMethod.GET,RequestMethod.POST})
	  public ModelAndView showuserdetails(@ModelAttribute("view") UserDetails detail,HttpSession ses)
	  {
		  //System.out.println("11");  
		  List<UserDetails> list=temp.find("from UserDetails");
		//  System.out.println("q");
		  ModelAndView mv=new ModelAndView("showuserinfo","msg",list);
		 // System.out.println("33");
		  ses.invalidate();
		  return mv;
	  }

//------------------ Delete data page -------------------------------
@RequestMapping(value="daletedata",method= {RequestMethod.GET,RequestMethod.POST})
public String deleteuserdata(@ModelAttribute("del") UserDetails dele,HttpSession ses,HttpServletRequest ses1)
{
	
	  //List listr=ses1.get
	  String s[]=ses1.getParameterValues("select");
	  System.out.println(s);
	  for(int i=0;i<s.length;i++)
	  {
		  System.out.println("1212");
		 // List list=temp.find("delete from UserDetails where uemail=?");
		@SuppressWarnings("unchecked")
		List<UserDetails> list1=temp.find("delete from UserDetails where uemail=?");
		temp.delete(list1);
		  System.out.println("1212");
		((Query) list1).setParameter(1, s[i]);
		  //list.set(i, ses1);
		  System.out.println("1212");
		 ((Query) list1).executeUpdate();
		  System.out.println("1212");
	  }
	  return "redirect:/allusers.do";
}
  
//==============Error page to back ragistration page=================
@RequestMapping("/regback")
public String errorPagge()
{ 
	  return "regpage";
}

//______________________ logout _____________________________________
@RequestMapping(value="/ulog",method= {RequestMethod.GET,RequestMethod.POST}) 
public ModelAndView userlogout(@ModelAttribute("up2") UserDetails upd,HttpSession ses )
{
	 ses.invalidate();
	  return new ModelAndView("loginpage","msd1","logout successfully");
}


}