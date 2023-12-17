package com.company.myweb.asset;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AssetDao {

	@Autowired
    private JdbcTemplate jdbcTemplate;

	public int insertAsset(AssetVo assetVo, String groupId) {
	    String sql = "INSERT INTO assets (a_location, a_category, a_amount, a_memo, a_time, group_id, a_date) VALUES (?, ?, ?, ?, ?, ?, ?)";
	    return jdbcTemplate.update(sql, ps -> {
	        ps.setString(1, assetVo.getA_location());
	        ps.setString(2, assetVo.getA_category());
	        ps.setInt(3, assetVo.getA_amount());
	        ps.setString(4, assetVo.getA_memo());
	        ps.setString(5, assetVo.getA_time());
	        ps.setString(6, groupId);
	        ps.setString(7, assetVo.getA_date());
	    });
	}


    public List<AssetVo> selectAssets() {
        String sql = "SELECT * FROM assets";
        return jdbcTemplate.query(sql, new AssetRowMapper());
    }

    public List<AssetVo> selectAssetsByGroupId(String groupId) {
        String sql = "SELECT * FROM assets WHERE group_id = ?";
        return jdbcTemplate.query(sql, new AssetRowMapper(), groupId);
    }
}
