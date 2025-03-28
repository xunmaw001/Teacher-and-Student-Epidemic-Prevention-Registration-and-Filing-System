package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.JinjiqingkuangEntity;
import com.entity.view.JinjiqingkuangView;

import com.service.JinjiqingkuangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 紧急情况
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-07 10:44:16
 */
@RestController
@RequestMapping("/jinjiqingkuang")
public class JinjiqingkuangController {
    @Autowired
    private JinjiqingkuangService jinjiqingkuangService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JinjiqingkuangEntity jinjiqingkuang, HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		jinjiqingkuang.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

        EntityWrapper<JinjiqingkuangEntity> ew = new EntityWrapper<JinjiqingkuangEntity>();
		PageUtils page = jinjiqingkuangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jinjiqingkuang), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JinjiqingkuangEntity jinjiqingkuang, HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		jinjiqingkuang.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

        EntityWrapper<JinjiqingkuangEntity> ew = new EntityWrapper<JinjiqingkuangEntity>();
		PageUtils page = jinjiqingkuangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jinjiqingkuang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JinjiqingkuangEntity jinjiqingkuang){
       	EntityWrapper<JinjiqingkuangEntity> ew = new EntityWrapper<JinjiqingkuangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jinjiqingkuang, "jinjiqingkuang")); 
        return R.ok().put("data", jinjiqingkuangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JinjiqingkuangEntity jinjiqingkuang){
        EntityWrapper< JinjiqingkuangEntity> ew = new EntityWrapper< JinjiqingkuangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jinjiqingkuang, "jinjiqingkuang")); 
		JinjiqingkuangView jinjiqingkuangView =  jinjiqingkuangService.selectView(ew);
		return R.ok("查询紧急情况成功").put("data", jinjiqingkuangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        JinjiqingkuangEntity jinjiqingkuang = jinjiqingkuangService.selectById(id);
        return R.ok().put("data", jinjiqingkuang);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        JinjiqingkuangEntity jinjiqingkuang = jinjiqingkuangService.selectById(id);
        return R.ok().put("data", jinjiqingkuang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JinjiqingkuangEntity jinjiqingkuang, HttpServletRequest request){
    	jinjiqingkuang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jinjiqingkuang);
    	jinjiqingkuang.setUserid((Long)request.getSession().getAttribute("userId"));

        jinjiqingkuangService.insert(jinjiqingkuang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JinjiqingkuangEntity jinjiqingkuang, HttpServletRequest request){
    	jinjiqingkuang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jinjiqingkuang);
    	jinjiqingkuang.setUserid((Long)request.getSession().getAttribute("userId"));

        jinjiqingkuangService.insert(jinjiqingkuang);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody JinjiqingkuangEntity jinjiqingkuang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jinjiqingkuang);
        jinjiqingkuangService.updateById(jinjiqingkuang);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jinjiqingkuangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<JinjiqingkuangEntity> wrapper = new EntityWrapper<JinjiqingkuangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}
		if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		wrapper.eq("userid", (Long)request.getSession().getAttribute("userId"));
    	}


		int count = jinjiqingkuangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
