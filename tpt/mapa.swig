<section id="mapa" class="content">
	<h1>Informe-se antes de chegar na UNICAMP</h1>
	<h4>O campus pode ser amedrontador à primeira vista, por isso anote as informações dos departamentos mais importantes, salve uma foto do mapa e verifique as rotas que irá usar!</h4>

	<h3>Restaurantes Universitários</h3>
	<p>Nos Restaurantes Universitários, comumente chamados de "Bandejão", o preço da refeição é de <b style="font-size: 1em;">R$ 2,00 (café da manhã) e R$ 3,00 (almoço e janta) para estudantes</b>. Você deve carregar sua <b style="font-size: 1em;">carteirinha estudantil</b> nos postos de recarga localizados do lado externo dos restaurantes para utilizá-los.</p>
	<p>Os restaurantes mais utilizados são: Restaurante Universitário (RU), Refeitório da Administração (RA) e Restaurante da Saturnino (RS). Vale lembrar que há um cardápio vegetariano, no entanto o mesmo só é servido no RS.
	<a href="http://www.prefeitura.unicamp.br/servicos/divisao-de-alimentacao/cardapio-dos-restaurantes" target="_blank">Cardápio dos Restaurantes</a></p>

	<h3>Circulares</h3>
	<p>A UNICAMP possui 3 linhas de circulares que são gratuitos e facilitam a vida de quem necessita se deslocar pelo campus.</p>
	<div class="trans">
		<div class="bus">Circular I</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_1.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20I" target="_blank">Horários</a></div>
	</div>
	<div class="trans">
		<div class="bus">Circular II</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_2.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20II" target="_blank">Horários</a></div>
	</div>
	<div class="trans">
		<div class="bus">Circular Noturno</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_noturno.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20NOTURNO" target="_blank">Horários</a></div>
	</div>
	<p></p>
	<h3>Rotas a pé</h3>
	<div class="route_controls clearfix">
		<div>De: </div>
		<div class="select_control">
			<select id="route-origin">
				<option value="-22.822157,-47.069908" selected>Avenida 1</option>
				<option value="-22.818498,-47.072880">Avenida 2</option>
				<option value="-22.817617,-47.068376">CB</option>
				<option value="-22.817699,-47.071109">PB</option>
				<option value="-22.820818,-47.066615">FEEC</option>
				<option value="-22.814696,-47.064176">IC 2</option>
				<option value="-22.813544,-47.063478">IC 3</option>
				<option value="-22.815311,-47.062655">Bandejão (RS)</option>
				<option value="-22.817403,-47.071238">Bandejão (RU)</option>
			</select>
		</div>
		<div>Para: </div>
		<div class="select_control">
			<select id="route-dest">
				<option value="-22.822157,-47.069908">Avenida 1</option>
				<option value="-22.818498,-47.072880">Avenida 2</option>
				<option value="-22.817617,-47.068376" selected>CB</option>
				<option value="-22.817699,-47.071109">PB</option>
				<option value="-22.820818,-47.066615">FEEC</option>
				<option value="-22.814696,-47.064176">IC 2</option>
				<option value="-22.813544,-47.063478">IC 3</option>
				<option value="-22.817403,-47.071238">Bandejão (RU)</option>
				<option value="-22.815311,-47.062655">Bandejão (RS)</option>
			</select>
		</div>
	</div>
	<div id="map-canvas"></div>
	<div class="locals">
		<ul class="listFixed">
			<li><b>Avenida 1:</b> Avenida Doutor Romeu Tórtima</li>
			<li><b>Avenida 2:</b> Avenida Professor Atílio Martini</li>
			<li><b>CB:</b> Ciclo Básico I<br><span class="small">Fica na praça central, mais afastado das entradas.</span></li>
			<li><b>PB:</b> Ciclo Básico II<br><span class="small">Fica mais próximo do Bandejão. Dá para vê-lo da entrada da Avenida 2.</span></li>
			<li><b>FEEC:</b> Faculdade de Engenharia Elétrica e de Computação<br><span class="small">Fica mais próximo da entrada da Avenida 1</span></li>
		</ul>
		<ul class="listFixed">
			<li><b>IC 2:</b> Bloco do Instituto de Computação<br><span class="small">Bloco onde fica a secretaria do IC.</span></li>
			<li><b>IC 3:</b> Bloco do Instituto de Computação<br><span class="small">Bloco situado acima do IC 2.</span></li>
			<li><b>Bandejão RU:</b> Restaurante Universitário<br><span class="small">Fica mais próximo da entrada da Avenida 2.</span></li>
			<li><b>Bandejão RS:</b> Restaurante Universitário<br><span class="small">Fica mais próximo do IC 3.</span></li>
			<li><b>Bandejão RA:</b> Restaurante Universitário<br><span class="small">Fica mais próximo da FEEC.</span></li>
		</ul>
	</div>
</section>
