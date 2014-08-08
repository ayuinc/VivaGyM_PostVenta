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
        ee()->db->where('tipo_evento_id', $tipo_evento);
        $query = ee()->db->get('exp_eventos_calendario');

        $response = array("resultados" => $query->result());

        return json_encode($response);
    }

    public function mis_eventos()
    {
        global $TMPL;
        $this->EE =& get_instance(); // EEv2 syntax
        $TMPL = $this->EE->TMPL;

        $tipo_evento = ee()->TMPL->fetch_param('tipo_evento');
        $member_id = ee()->TMPL->fetch_param('member_id');
        ee()->db->where('tipo_evento_id', $tipo_evento);
        ee()->db->where('encargado_id', $member_id);
        $query = ee()->db->get('exp_eventos_calendario');

        $response = array("resultados" => $query->result());

        return json_encode($response);
    }
}

?>