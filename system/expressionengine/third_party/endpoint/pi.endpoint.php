<?php

class endpoint
{
    public function __construct(){
        $this->EE =& get_instance();
    }

    public function obtener_eventos()
    {
        global $TMPL;
        $this->EE =& get_instance(); // EEv2 syntax
        $TMPL = $this->EE->TMPL;

        $tipo_evento = ee()->TMPL->fetch_param('tipo_evento');
        ee()->db->where('tipo_evento_id',$tipo_evento);
        $query = ee()->db->get('exp_eventos_calendario');

        $response = array();

        return json_encode($query->result());
    }
}

?>