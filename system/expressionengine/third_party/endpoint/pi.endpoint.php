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

        $tipo_evento = ee()->TMPL->fetch_param('tipo_evento');
        ee()->db->where('id_event_type',$tipo_evento);
        $query = ee()->db->get('exp_eventos_calendario');

        $response = array();

        return json_encode($query->result());
    }
}

?>