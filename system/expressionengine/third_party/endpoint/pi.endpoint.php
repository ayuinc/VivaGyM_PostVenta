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
        $base_url = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
        $base_url .= "://".$_SERVER['HTTP_HOST'];
        $url = "";

        $tipo_evento = ee()->TMPL->fetch_param('tipo_evento');

        ee()->db->select('exp_bloques.id, exp_bloques.inicio as start, exp_bloques.final as end, exp_bloques.tipo_evento_id, COUNT(bloque_evento_id) as cantidad_eventos');
        ee()->db->from('exp_bloques');
        ee()->db->join('exp_bloques_usuarios', 'exp_bloques_usuarios.bloque_evento_id = exp_bloques.id');
        ee()->db->where('exp_bloques.tipo_evento_id', $tipo_evento);
        ee()->db->group_by('bloque_evento_id');
        $query = ee()->db->get();

        $response = array();

        foreach ($query->result() as $key => $value) {
            if($value->cantidad_eventos < 15) {
                if(isset($tipo_evento)) {
                    if($tipo_evento == 1) {
                        $url = $base_url . '/main/user_request_book/' . date_format(new DateTime($value->start), 'd-m-Y');
                    }
                    if($tipo_evento == 2) {
                        $url = $base_url . '/main/user_request_fixing/' . date_format(new DateTime($value->start), 'd-m-Y');
                    }
                }
                
                $object = array(
                    'id' => $value->id,
                    'title' => "Disponible",
                    'start' => date_format(new DateTime($value->start), 'Y-m-d\TH:i:sO'),
                    'end' => date_format(new DateTime($value->end), 'Y-m-d\TH:i:sO'),
                    'tipo_evento_id' => $value->tipo_evento_id,
                    'cantidad_eventos' => $value->cantidad_eventos,
                    'url' => $url
                    );

                array_push($response, $object);
            }
        }

        /*ee()->db->select('id, titulo AS title, cliente_id, inicio AS start, fin AS end, tipo_evento_id, encargado_id');
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
        }*/

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
