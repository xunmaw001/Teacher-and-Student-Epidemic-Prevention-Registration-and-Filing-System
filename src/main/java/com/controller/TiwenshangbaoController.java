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

import com.entity.TiwenshangbaoEntity;
import com.entity.view.TiwenshangbaoView;

import com.service.TiwenshangbaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 体温上报
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-07 10:44:16
 */
@RestController
@RequestMapping("/tiwenshangbao")
public class TiwenshangbaoController {
    @Autowired
    private TiwenshangbaoService tiwenshangbaoService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,TiwenshangbaoEntity tiwenshangbao, HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		tiwenshangbao.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

        EntityWrapper<TiwenshangbaoEntity> ew = new EntityWrapper<TiwenshangbaoEntity>();
		PageUtils page = tiwenshangbaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, tiwenshangbao), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,TiwenshangbaoEntity tiwenshangbao, HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		tiwenshangbao.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

        EntityWrapper<TiwenshangbaoEntity> ew = new EntityWrapper<TiwenshangbaoEntity>();
		PageUtils page = tiwenshangbaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, tiwenshangbao), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( TiwenshangbaoEntity tiwenshangbao){
       	EntityWrapper<TiwenshangbaoEntity> ew = new EntityWrapper<TiwenshangbaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( tiwenshangbao, "tiwenshangbao")); 
        return R.ok().put("data", tiwenshangbaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(TiwenshangbaoEntity tiwenshangbao){
        EntityWrapper< TiwenshangbaoEntity> ew = new EntityWrapper< TiwenshangbaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( tiwenshangbao, "tiwenshangbao")); 
		TiwenshangbaoView tiwenshangbaoView =  tiwenshangbaoService.selectView(ew);
		return R.ok("查询体温上报成功").put("data", tiwenshangbaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        TiwenshangbaoEntity tiwenshangbao = tiwenshangbaoService.selectById(id);
        return R.ok().put("data", tiwenshangbao);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        TiwenshangbaoEntity tiwenshangbao = tiwenshangbaoService.selectById(id);
        return R.ok().put("data", tiwenshangbao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TiwenshangbaoEntity tiwenshangbao, HttpServletRequest request){
    	tiwenshangbao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(tiwenshangbao);
    	tiwenshangbao.setUserid((Long)request.getSession().getAttribute("userId"));

        tiwenshangbaoService.insert(tiwenshangbao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody TiwenshangbaoEntity tiwenshangbao, HttpServletRequest request){
    	tiwenshangbao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(tiwenshangbao);
    	tiwenshangbao.setUserid((Long)request.getSession().getAttribute("userId"));

        tiwenshangbaoService.insert(tiwenshangbao);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TiwenshangbaoEntity tiwenshangbao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(tiwenshangbao);
        tiwenshangbaoService.updateById(tiwenshangbao);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tiwenshangbaoService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<TiwenshangbaoEntity> wrapper = new EntityWrapper<TiwenshangbaoEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}
		if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		wrapper.eq("userid", (Long)request.getSession().getAttribute("userId"));
    	}


		int count = tiwenshangbaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
