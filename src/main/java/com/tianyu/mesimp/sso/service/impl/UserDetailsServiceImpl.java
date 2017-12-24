package com.tianyu.mesimp.sso.service.impl;

import java.util.ArrayList;
import java.util.HashSet;  
import java.util.List;
import java.util.Set;  
  



import org.apache.log4j.Logger;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.GrantedAuthority;  
import org.springframework.security.core.authority.SimpleGrantedAuthority;  
import org.springframework.security.core.userdetails.User;  
import org.springframework.security.core.userdetails.UserDetails;  
import org.springframework.security.core.userdetails.UserDetailsService;  
import org.springframework.security.core.userdetails.UsernameNotFoundException;  
  
/**  
 * 创建时间：2015-2-9 下午5:24:44  
 *   
 * @author andy  
 * @version 2.2  
 *          <p>  
 *          描述： 实现SpringSecurity的UserDetails接口 自定义认证  
 */  
  
public class UserDetailsServiceImpl implements UserDetailsService {  
  
    private static final Logger LOGGER = Logger  
            .getLogger(UserDetailsServiceImpl.class);  
  
  
    @Override  
    public UserDetails loadUserByUsername(String username)  
            throws UsernameNotFoundException {  
        LOGGER.info("认证用户：" + username);  
  
        // 查询数据库获取改用户的信息  
        //AcctUser acctUser = userDao.findByNickName(username);  
  
        List<String> nameList = new ArrayList<String>();
        nameList.add("liaoning");
        nameList.add("dalian");
        
        if (!nameList.contains(username)) {  
            throw new UsernameNotFoundException("用户：" + username + "不存在");  
        }  
  
        //Set<GrantedAuthority> authorities = getAuthorities(acctUser);  
        Set<GrantedAuthority> authorities =new HashSet<GrantedAuthority>();
        if("liaoning".equals(username)){
        	authorities.add(new SimpleGrantedAuthority("ROLE_PRIVOINCE"));  
        }else{
        	authorities.add(new SimpleGrantedAuthority("ROLE_CITY"));  
        }
  
        // 将没有使用到的属性设置为true  
        UserDetails userDetails = new User(username,  
                "c4ca4238a0b923820dcc509a6f75849b", true, true, true, true, authorities);  
  
        return userDetails;  
    }  
  
/*    // 获得用户所有角色的权限  
    private Set<GrantedAuthority> getAuthorities(AcctUser acctUser) {  
        Set<GrantedAuthority> authoritySet = new HashSet<GrantedAuthority>();  
  
        // 默认所有的用户有"浏览用户"的权利  
        authoritySet.add(new SimpleGrantedAuthority("ROLE_浏览用户"));  
  
        // 依次添加  
        if (null != acctUser.getAcctRoles()  
                && acctUser.getAcctRoles().size() > 0)  
            for (AcctRole role : acctUser.getAcctRoles()) {  
                if (null != role.getAcctAuthorities()  
                        && role.getAcctAuthorities().size() > 0)  
                    for (AcctAuthority authority : role.getAcctAuthorities()) {  
                        authoritySet.add(new SimpleGrantedAuthority(authority  
                                .getPrefixedName()));  
                    }  
            }  
  
        return authoritySet;  
    }  */
  
}
