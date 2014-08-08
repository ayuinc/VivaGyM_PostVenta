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

        $query = ee()->db
                    ->get_where('exp_eventos_calendario');

        return json_encode($query->result());
    }
}

?>