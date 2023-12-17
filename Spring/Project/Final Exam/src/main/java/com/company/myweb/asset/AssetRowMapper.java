package com.company.myweb.asset;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AssetRowMapper implements RowMapper<AssetVo> {

    @Override
    public AssetVo mapRow(ResultSet rs, int rowNum) throws SQLException {
        AssetVo assetVo = new AssetVo();
        assetVo.setA_no(rs.getInt("a_no"));
        assetVo.setA_time(rs.getString("a_time"));
        assetVo.setA_location(rs.getString("a_location"));
        assetVo.setA_category(rs.getString("a_category"));
        assetVo.setA_amount(rs.getInt("a_amount"));
        assetVo.setA_memo(rs.getString("a_memo"));
        assetVo.setA_date(rs.getString("a_date"));
        

        return assetVo;
    }
}