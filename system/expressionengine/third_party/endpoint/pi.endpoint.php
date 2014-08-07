<?php

class endpoint
{
    public function __construct(){
        $this->EE =& get_instance();
    }

    public function inspecciones()
    {
        global $TMPL;
        $this->EE =& get_instance(); // EEv2 syntax
        $TMPL = $this->EE->TMPL;

        ee()->db->distinct('marca');
        ee()->db->select('marca');
        $query = ee()->db->get_where('exp_freeform_form_entries_4', array('form_field_19' => 3));

        return $query->result();
    }
}

?>