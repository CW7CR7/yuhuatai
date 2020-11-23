<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
yzm_base::load_sys_class('page','',0);
/**
 * 系统API接口类
 * @author           袁志蒙  
 * @license          http://www.yzmcms.com
 * @lastmodify       2017-01-18
 */
 
class index {
	
	public function test(){	
		
		// $id = $_POST['id'];

		$db = D('resource');
		$where = "1=1";
		// $where = array('id'=>$id);
		// $total = $wechat_user->where($where)->total();
		$page = new page($total, 15);
		// $data = $db->where($where)->order('id')->limit($page->limit())->select();		
		$data = $db->field('title,url,thumb,viewurl,type,id')->where($where)->order('id')->select();
		foreach ($data as $key => &$value) {
			$value['thumb']=get_thumb($value['thumb']);
			if($value['type']==="全景图"){
				$value['url'] = $value['viewurl'];
			}
		}
        return return_json($data);
	}
}