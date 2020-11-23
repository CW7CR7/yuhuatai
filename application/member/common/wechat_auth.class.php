<?php
/**
 * wechat_auth.class.php    微信授权登录类
 *
 * @author           袁志蒙  
 * @license          http://www.yzmcms.com
 * @lastmodify       2017-07-18 
 */
 
class wechat_auth {
    
    private $app_id;
    private $app_secret;
    private $callback; 
	
	
	/**
     * 初始化设置
     * 
     * @param string $app_id AppID
     * @param string $app_secret AppSecret
     * @param string $callback 回调地址
     */
	public function __construct($app_id, $app_secret, $callback){
		$this->app_id = $app_id;
		$this->app_secret = $app_secret;
		$this->callback = $callback;
	}
 
    /**
     * 获取微信授权链接
     * 
     */
    public function get_authorize_url(){
        $state = md5(uniqid(rand(), true));
		$_SESSION['wx_state'] = $state; 
		$callback = urlencode($this->callback);
		
		//此链接为微信开放平台的授权地址（在电脑或手机中打开，需要手机扫一扫）
		// $wxurl = 'https://open.weixin.qq.com/connect/qrconnect?appid='.$this->app_id.'&redirect_uri='.$callback.'&response_type=code&scope=snsapi_login&state='.$state.'#wechat_redirect';
		
		//此链接为微信公众号的授权地址（必须在微信中打开，不需要手机扫一扫）
		//scope为snsapi_base(静默授权)，scope为snsapi_userinfo(需要用户授权)
		$wxurl = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid='.$this->app_id.'&redirect_uri='.$callback.'&response_type=code&scope=snsapi_userinfo&state='.$state.'#wechat_redirect';
		
		header("location: $wxurl");
    }
    
    /**
     * 获取授权token
     * @param string $state 通过get_authorize_url获取到的state
     * @param string $code 通过get_authorize_url获取到的code
     * 
     */
    public function get_access_token($state, $code){
		if($state != $_SESSION['wx_state']){
			return false;
		}
		
		$token_url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$this->app_id.'&secret='.$this->app_secret.'&code='.$code.'&grant_type=authorization_code';
        
        return $this->http($token_url);
    }
    
	
    /**
     * 获取授权后的微信用户信息
     * 
     * @param string $access_token
     * @param string $open_id
     */
    public function get_user_info($access_token, $open_id){
		$info_url = 'https://api.weixin.qq.com/sns/userinfo?access_token='.$access_token.'&openid='.$open_id.'&lang=zh_CN';

        return $this->http($info_url);
    }



    /**
     * 内部方法 http请求
     * 
     * @param string $url
     */
    private function http($url){
        $ch = curl_init();
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		curl_setopt($ch, CURLOPT_URL, $url);
		$json =  curl_exec($ch);
		curl_close($ch);

		return json_decode($json, true);
    }
 
}