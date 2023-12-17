package com.company.myweb.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public int createMemberAccount(MemberVo memberVo) {
        // Add duplicate check logic if needed
        return memberDao.insertMemberAccount(memberVo);
    }

    public MemberVo loginMember(MemberVo memberVo) {
        MemberVo loggedMember = memberDao.selectMember(memberVo);

        if (loggedMember != null && passwordEncoder.matches(memberVo.getM_pw(), loggedMember.getM_pw())) {
            // If passwords match, login is successful
            return loggedMember;
        }

        return null; // Login failed
    }
}
