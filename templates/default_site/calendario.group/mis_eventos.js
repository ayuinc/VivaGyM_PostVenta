{if segment_3=="inspecciones"}
<<<<<<< HEAD
    {exp:endpoint:mis_eventos tipo_evento="1" member_id="{member_id}"}
{if:elseif segment_3=="arreglos"}
    {exp:endpoint:mis_eventos tipo_evento="2" member_id="{member_id}"}
=======
{exp:endpoint:mis_eventos tipo_evento="1" member_id="{member_id}"}
{if:elseif segment_3=="arreglos"}
{exp:endpoint:mis_eventos tipo_evento="2" member_id="{member_id}"}
>>>>>>> f451828d863c73618593f3a7b102f7da8b4432b9
{if:else}
{error: true}
{/if}