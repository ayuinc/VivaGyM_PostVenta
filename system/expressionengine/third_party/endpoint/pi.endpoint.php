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
        ee()->db->select('id, titulo AS title, cliente_id, inicio AS start, fin AS end, tipo_evento_id, encargado_id');
        ee()->db->where('tipo_evento_id', $tipo_evento);
        $query = ee()->db->get('exp_calendario_eventos');

        $response = array();

        foreach ($query->result() as $key => $value) {
            $aux = array(
                'id' => $value->id,
                'title' => $value->title,
                'cliente_id' => $value->cliente_id,
                'start' => date_format(new DateTime($value->start), 'Y-m-d\TH:i:sO'),
                'end' => date_format(new DateTime($value->end), 'Y-m-d\TH:i:sO'),
                'tipo_evento_id' => $value->tipo_evento_id,
                'encargado_id' => $value->encargado_id
                );

            array_push($response, $aux);
        }

        /*$response = array("resultados" => $query->result());*/

        return json_encode($response);
    }

    public function mis_eventos()
    {
        global $TMPL;
        $this->EE =& get_instance(); // EEv2 syntax
        $TMPL = $this->EE->TMPL;

        $member_id = ee()->TMPL->fetch_param('member_id');
        ee()->db->select('id, titulo AS title, cliente_id, inicio AS start, fin AS end, tipo_evento_id, encargado_id');
        ee()->db->where('encargado_id', $member_id);
        $query = ee()->db->get('exp_calendario_eventos');

        $response = array();

        foreach ($query->result() as $key => $value) {
            $aux = array(
                'id' => $value->id,
                'title' => $value->title,
                'cliente_id' => $value->cliente_id,
                'start' => date_format(new DateTime($value->start), 'Y-m-d\TH:i:sO'),
                'end' => date_format(new DateTime($value->end), 'Y-m-d\TH:i:sO'),
                'tipo_evento_id' => $value->tipo_evento_id,
                'encargado_id' => $value->encargado_id
                );

            array_push($response, $aux);
        }

        /*$response = array("resultados" => $query->result());*/

        return json_encode($response);
    }
}

?>
