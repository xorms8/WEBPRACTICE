package com.cmis.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmis.domain.MemberVO;
import com.cmis.service.AdminService;
import com.cmis.service.MemberService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	/*
	 * 
	 * 관리자 페이지 ////////////////////////////////////////////////
	 * 
	 */
	
	@RequestMapping("adminPage.do")
	public String adminPage(HttpSession session, Model model) throws Exception{
				//세션 IF문으로 세션 보안 처리
		String returnPage = "";
		if (session.getAttribute("memberLv") != null) {
	         if ((Integer)session.getAttribute("memberLv") == 1) {
	            returnPage = "loginPage";
	         } else {
				System.out.println("adminPage 세션 통과");
				
				/*통계 뿌리기*/
				
				//신규 회원 가입 수 (날짜별)
				model.addAttribute("memberJoinCount", adminService.getMemberJoinCount());
				
				//어제 게시판별 작성글 카운트
				model.addAttribute("adminBoardCount", adminService.getAdminBoardCount());
				
				//상춤 최다 조회 5건
				model.addAttribute("getProductViewRank", adminService.getProductViewRank());
				
				//찜목록 최다 순위 5건
				model.addAttribute("getProductWishRank", adminService.getProductWishRank());
				
				//모든 게시판 글 댓글 총합 순위 (커뮤니티 순위)
				model.addAttribute("getCommunityRank", adminService.getCommunityRank());
				
				//핫딜 상품 많은 매장 순위
				model.addAttribute("getHotPriceShopRank", adminService.getHotPriceShopRank());
				
				//회원 연령 분포도
				model.addAttribute("getMemberAge", adminService.getMemberAge());
				
				//플랫폼 별 회원가입 수
				model.addAttribute("getMemberPlatform", adminService.getMemberPlatform());
				returnPage =  "adminPage";
				
			}
		}
		else {
			returnPage = "error";
		}
			return returnPage;
	}
	
	
	
	//관리자의 회원 목록 페이지 
	@RequestMapping("adminMemberList.do")
	public String memberList(MemberVO vo,Model model, HttpSession session) {
		//관리자 세션 IF문으로 세션 보안 처리
		String returnPage = "";
		if (session.getAttribute("memberLv") != null) {
	         if ((Integer)session.getAttribute("memberLv") == 1) {
	            returnPage = "loginPage";
	         }  else {
				System.out.println("adminMemberList 세션 통과");
				model.addAttribute("memberList", adminService.getMemberList(vo));
				returnPage =  "adminMemberList";
				
			}
		}
		else {
			returnPage = "error";
		}
			return returnPage;
	}
	
	
	//관리자의 회원 상세 조회
	@RequestMapping("adminGetMember.do")
	public String adminGetMember(MemberVO vo, Model model, HttpSession session) {
		//관리자 세션 IF문으로 세션 보안 처리
		String returnPage = "";
		if (session.getAttribute("memberLv") != null) {
	         if ((Integer)session.getAttribute("memberLv") == 1) {
	            returnPage = "loginPage";
	         } else {
				System.out.println("adminGetMember 세션 통과");
				model.addAttribute("member", adminService.getMember(vo));
				returnPage =  "adminGetMember";
			}
		}
		else {
			returnPage = "error";
		}
			return returnPage;
	}
	
	//관리자의 회원 정보 수정
	@RequestMapping("adminMemberUpdate.do")
	public String adminMemberUpdate(@ModelAttribute("member") MemberVO vo, Model model, HttpSession session) {
		//관리자 세션 IF문으로 세션 보안 처리
		String returnPage = "";
		if (session.getAttribute("memberLv") != null) {
	         if ((Integer)session.getAttribute("memberLv") == 1) {
	            returnPage = "loginPage";
	         } else {
						System.out.println("adminMemberUpdate 세션 통과");
						adminService.updateMember(vo);
						System.out.println("adminMemberUpdate Service Success");
						returnPage =  "adminMemberList";
					}
				}
				else {
					returnPage = "error";
				}
					return "redirect:adminMemberList.do";		
	}
	
	
	
	
	
	
	

}//end AdminController


	
	
	
	
	
	
	
 

	

