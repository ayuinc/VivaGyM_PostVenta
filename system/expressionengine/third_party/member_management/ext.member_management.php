<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Member Management
 *
 * @package		Member Management
 * @author		Greg Salt <greg@purple-dogfish.co.uk>
 * @copyright	Copyright (c) 2010 Purple Dogfish Ltd
 * @link		http://www.purple-dogfish.co.uk
 * @since		Version 1.0
 * 
 */
class Member_management_ext {
	
	var $name            = 'Member Managment';
	var $version         = '1.0';
	var $description     = 'An extension to demonstrate use of the member_manager hook';
	var $settings_exist  = 'n';
	var $docs_url        = 'http://www.purple-dogfish.co.uk/';
	
	/**
	 * Constructor
	 *
	 * @author		Greg Salt <greg@purple-dogfish.co.uk>
	 * @access		Public
	 */
	function Member_management_ext($settings = '')
	{
		$this->EE =& get_instance();
		
		$this->settings = $settings;
	}
	
	/**
	 * Activate Extension
	 *
	 * @author		Greg Salt <greg@purple-dogfish.co.uk>
	 * @access		Public
	 */
	function activate_extension()
	{
		$data = array();
		
		$data['class']			= 'Member_management_ext';
        $data['method']			= "modify_member_manager";
        $data['hook']     	    = "member_manager";
        $data['settings']	    = "";
		$data['priority']	    = 1;
		$data['version']		= $this->version;
		$data['enabled']		= "y";
		
    	$this->EE->db->insert('extensions', $data);
	}

	/**
	 * Update Extension
	 *
	 * @author		Greg Salt <greg@purple-dogfish.co.uk>
	 * @access		Public
	 */
	function update_extension($current = '')
	{
    	return TRUE;
	}

	/**
	 * Disable Extensions
	 *
	 * @author		Greg Salt <greg@purple-dogfish.co.uk>
	 * @access		Public
	 */
	function disable_extension()
	{
		$this->EE->db->where('class', 'Member_management_ext');
    	$this->EE->db->delete('extensions');
	}

	/**
	 * Save Data
	 *
	 * @author		Greg Salt <greg@purple-dogfish.co.uk>
	 * @access		Public
	 */
	function modify_member_manager($obj)
	{
		$this->EE->extensions->end_script = FALSE;

		$allowed = array(
				'login',
				//'forgot_password',
				'register'
			);
		
		$final_segment = $this->EE->uri->segment($this->EE->uri->total_segments());
		
		if ( ! in_array($final_segment, $allowed))
		{
			$this->EE->load->library('Template');
			$this->EE->TMPL = new EE_Template();
			switch($this->EE->session->userdata('group_id'))
			{
				case '3'	:	$this->EE->extensions->end_script = TRUE;
								$this->EE->TMPL->run_template_engine('_member', 'not_allowed_to_view');
								echo $this->EE->TMPL->final_template;
								exit;
								break;
			}
		}
	}
}
/* End of file ext.member_management.php */
/* Location: ./system/expressionengine/third_party/member_profiles/ext.member_management.php */