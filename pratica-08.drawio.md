<mxfile host="app.diagrams.net" modified="2026-10-29T10:00:00.000Z" agent="Gemini" version="21.0.0" type="device">
  <diagram id="pratica-08" name="pratica-08">
    <mxGraphModel dx="1200" dy="800" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />

        <!-- ENTIDADE: Cliente -->
        <mxCell id="ent_cliente" value="Cliente" style="whiteSpace=wrap;html=1;align=center;strokeColor=#1B365D;fillColor=#1B365D;fontColor=#ffffff;fontStyle=1" vertex="1" parent="1">
          <mxGeometry x="160" y="240" width="100" height="40" as="geometry" />
        </mxCell>
        <!-- Atributos Cliente -->
        <mxCell id="att_cli_cod" value="&lt;u&gt;código&lt;/u&gt;" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="100" y="160" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_cli_nome" value="nome" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="180" y="160" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_cli_tel" value="telefone" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="160" y="310" width="70" height="35" as="geometry" />
        </mxCell>
        <!-- Conexões Atributos Cliente -->
        <mxCell id="edge_c1" edge="1" parent="1" source="ent_cliente" target="att_cli_cod"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_c2" edge="1" parent="1" source="ent_cliente" target="att_cli_nome"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_c3" edge="1" parent="1" source="ent_cliente" target="att_cli_tel"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- RELACIONAMENTO: Cliente faz Pedido -->
        <mxCell id="rel_faz" value="faz" style="rhombus;whiteSpace=wrap;html=1;gridSize=10;fillColor=#826A21;strokeColor=#826A21;fontColor=#ffffff;" vertex="1" parent="1">
          <mxGeometry x="310" y="235" width="70" height="50" as="geometry" />
        </mxCell>
        <mxCell id="edge_faz_cli" value="(1,1)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#FF0000;fontStyle=1;" edge="1" parent="1" source="rel_faz" target="ent_cliente">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- ENTIDADE: Pedido -->
        <mxCell id="ent_pedido" value="Pedido" style="whiteSpace=wrap;html=1;align=center;strokeColor=#1B365D;fillColor=#1B365D;fontColor=#ffffff;fontStyle=1" vertex="1" parent="1">
          <mxGeometry x="430" y="240" width="100" height="40" as="geometry" />
        </mxCell>
        <!-- Conexão Faz -> Pedido -->
        <mxCell id="edge_faz_ped" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="rel_faz" target="ent_pedido">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <!-- Atributos Pedido -->
        <mxCell id="att_ped_num" value="&lt;u&gt;número&lt;/u&gt;" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="390" y="160" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_ped_dt" value="data e hora" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="470" y="160" width="80" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_p1" edge="1" parent="1" source="ent_pedido" target="att_ped_num"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_p2" edge="1" parent="1" source="ent_pedido" target="att_ped_dt"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- RELACIONAMENTO: Pedido contém Produto (REQUISITO 4 - DEGRAU 2) -->
        <mxCell id="rel_contem" value="contém" style="rhombus;whiteSpace=wrap;html=1;gridSize=10;fillColor=#826A21;strokeColor=#826A21;fontColor=#ffffff;" vertex="1" parent="1">
          <mxGeometry x="585" y="235" width="80" height="50" as="geometry" />
        </mxCell>
        <mxCell id="edge_contem_ped" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="ent_pedido" target="rel_contem">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <!-- Atributos na Ligação Pedido-Produto -->
        <mxCell id="att_rel_qtd" value="quantidade" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="540" y="160" width="85" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_rel_preco" value="preço cobrado" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="635" y="160" width="95" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_rc1" edge="1" parent="1" source="rel_contem" target="att_rel_qtd"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_rc2" edge="1" parent="1" source="rel_contem" target="att_rel_preco"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- ENTIDADE: Produto -->
        <mxCell id="ent_produto" value="Produto" style="whiteSpace=wrap;html=1;align=center;strokeColor=#1B365D;fillColor=#1B365D;fontColor=#ffffff;fontStyle=1" vertex="1" parent="1">
          <mxGeometry x="720" y="240" width="100" height="40" as="geometry" />
        </mxCell>
        <mxCell id="edge_contem_prod" value="(1,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="rel_contem" target="ent_produto">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <!-- Atributos Produto -->
        <mxCell id="att_prod_cod" value="&lt;u&gt;código&lt;/u&gt;" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="700" y="160" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_prod_nome" value="nome" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="780" y="160" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_prod_prtab" value="preço de tabela" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="860" y="160" width="100" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_pr1" edge="1" parent="1" source="ent_produto" target="att_prod_cod"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_pr2" edge="1" parent="1" source="ent_produto" target="att_prod_nome"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_pr3" edge="1" parent="1" source="ent_produto" target="att_prod_prtab"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- ENTIDADE: Unidade (REQUISITO 5 e 6 - DEGRAU 3) -->
        <mxCell id="ent_unidade" value="Unidade" style="whiteSpace=wrap;html=1;align=center;strokeColor=#1B365D;fillColor=#1B365D;fontColor=#ffffff;fontStyle=1" vertex="1" parent="1">
          <mxGeometry x="430" y="440" width="100" height="40" as="geometry" />
        </mxCell>
        <!-- Atributos Unidade -->
        <mxCell id="att_uni_cod" value="&lt;u&gt;código&lt;/u&gt;" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="340" y="510" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_uni_nome" value="nome" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="420" y="510" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_uni_end" value="endereço" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="500" y="510" width="75" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_u1" edge="1" parent="1" source="ent_unidade" target="att_uni_cod"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_u2" edge="1" parent="1" source="ent_unidade" target="att_uni_nome"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_u3" edge="1" parent="1" source="ent_unidade" target="att_uni_end"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- RELACIONAMENTO: Unidade realiza Pedido -->
        <mxCell id="rel_realiza" value="atende" style="rhombus;whiteSpace=wrap;html=1;gridSize=10;fillColor=#826A21;strokeColor=#826A21;fontColor=#ffffff;" vertex="1" parent="1">
          <mxGeometry x="440" y="335" width="80" height="50" as="geometry" />
        </mxCell>
        <mxCell id="edge_real_ped" value="(1,1)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#FF0000;fontStyle=1;" edge="1" parent="1" source="ent_pedido" target="rel_realiza">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_real_uni" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="rel_realiza" target="ent_unidade">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- RELACIONAMENTO: Unidade estoca Produto (Estoque) -->
        <mxCell id="rel_estoca" value="estoca" style="rhombus;whiteSpace=wrap;html=1;gridSize=10;fillColor=#826A21;strokeColor=#826A21;fontColor=#ffffff;" vertex="1" parent="1">
          <mxGeometry x="730" y="435" width="80" height="50" as="geometry" />
        </mxCell>
        <mxCell id="edge_est_uni" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="ent_unidade" target="rel_estoca">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_est_prod" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="rel_estoca" target="ent_produto">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <!-- Atributo em Estoca -->
        <mxCell id="att_est_qtd" value="quantidade em estoque" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="700" y="510" width="140" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_est_att" edge="1" parent="1" source="rel_estoca" target="att_est_qtd"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- ENTIDADE: Entregador (REQUISITO 7 - DEGRAU 3) -->
        <mxCell id="ent_entregador" value="Entregador" style="whiteSpace=wrap;html=1;align=center;strokeColor=#1B365D;fillColor=#1B365D;fontColor=#ffffff;fontStyle=1" vertex="1" parent="1">
          <mxGeometry x="160" y="440" width="100" height="40" as="geometry" />
        </mxCell>
        <!-- Atributos Entregador -->
        <mxCell id="att_ent_cod" value="&lt;u&gt;código&lt;/u&gt;" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="110" y="510" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="att_ent_nome" value="nome" style="ellipse;whiteSpace=wrap;html=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="190" y="510" width="70" height="35" as="geometry" />
        </mxCell>
        <mxCell id="edge_e1" edge="1" parent="1" source="ent_entregador" target="att_ent_cod"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="edge_e2" edge="1" parent="1" source="ent_entregador" target="att_ent_nome"><mxGeometry relative="1" as="geometry" /></mxCell>

        <!-- RELACIONAMENTO: Entregador leva Pedido -->
        <mxCell id="rel_leva" value="leva" style="rhombus;whiteSpace=wrap;html=1;gridSize=10;fillColor=#826A21;strokeColor=#826A21;fontColor=#ffffff;" vertex="1" parent="1">
          <mxGeometry x="290" y="435" width="80" height="50" as="geometry" />
        </mxCell>
        <mxCell id="edge_leva_ent" value="(0,n)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#008000;fontStyle=1;" edge="1" parent="1" source="ent_entregador" target="rel_leva">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="edge_leva_ped" value="(0,1)" style="endArrow=none;html=1;edgeStyle=orthogonalEdgeStyle;verticalAlign=bottom;labelBackgroundColor=none;fontColor=#FF0000;fontStyle=1;" edge="1" parent="1" source="rel_leva" target="ent_pedido">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>