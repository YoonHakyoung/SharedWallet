package com.company.myweb.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class MemberDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public int insertMemberAccount(MemberVo memberVo) {
    	String sql = "INSERT INTO members (m_id, m_pw, m_name, m_gender, m_email, m_phone, group_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, memberVo.getM_id(), passwordEncoder.encode(memberVo.getM_pw()), memberVo.getM_name(), memberVo.getM_gender(), memberVo.getM_email(), memberVo.getM_phone(), memberVo.getGroup_id());
    }

    public MemberVo selectMember(MemberVo memberVo) {
    	String sql = "SELECT * FROM members WHERE m_id = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            MemberVo member = new MemberVo();
            member.setM_no(rs.getInt("m_no"));
            member.setM_id(rs.getString("m_id"));
            member.setM_pw(rs.getString("m_pw"));
            member.setM_name(rs.getString("m_name"));
            member.setM_gender(rs.getString("m_gender"));
            member.setM_email(rs.getString("m_email"));
            member.setM_phone(rs.getString("m_phone"));
            member.setM_reg_date(rs.getString("m_reg_date"));
            member.setM_mod_date(rs.getString("m_mod_date"));
            member.setGroup_id(rs.getString("group_id"));  // 그룹 ID 추가
            return member;
        }, memberVo.getM_id());
    }
}
