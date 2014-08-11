{if segment_3=="inspecciones"}
    {exp:endpoint:mis_eventos tipo_evento="1" member_id="{member_id}"}
{if:elseif segment_3=="arreglos"}
    {exp:endpoint:mis_eventos tipo_evento="2" member_id="{member_id}"}
{if:else}
{error: true}
{/if}