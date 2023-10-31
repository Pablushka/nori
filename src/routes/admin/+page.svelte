<nav class="navbar">
	<!-- LOGO -->
	<div class="logo">NOR <span>i</span></div>

	<!-- NAVIGATION MENU -->
	<ul class="nav-links">
		<!-- USING CHECKBOX HACK -->
		<input type="checkbox" id="checkbox_toggle" />
		<label for="checkbox_toggle" class="hamburger">&#9776;</label>

		<!-- NAVIGATION MENUS -->
		<div class="menu">
			<li><a href="/admin">Inicio</a></li>
			<li><a href="/">Acerca de...</a></li>

			<li class="services">
				<a href="/">Admin</a>

				<!-- DROPDOWN MENU -->
				<ul class="dropdown">
					<li><a href="/admin">Tests</a></li>
					<li><a href="/admin">Asignación de test</a></li>
					<li><a href="/admin">Resultados</a></li>
					<li><a href="/admin">Informes</a></li>
				</ul>
			</li>
		</div>
	</ul>
</nav>

<main>
	<h3>Esto es un subtitulo</h3>
	<p>Este es un texto random</p>

	<form action="/ruta-al-servidor" method="post">
		<fieldset>
			<legend>Información Personal</legend>

			<label for="nombre"
				>Nombre:
				<input type="text" id="nombre" name="nombre" />
			</label>

			<label for="edad"
				>Edad:
				<input type="number" id="edad" name="edad" />
			</label>
			<label for="email"
				>Correo Electrónico:
				<input type="email" id="email" name="email" />
			</label>
			<label for="fechaNacimiento"
				>Fecha de Nacimiento:
				<input type="date" id="fechaNacimiento" name="fechaNacimiento" />
			</label>
			<label for="password"
				>Contraseña:
				<input type="password" id="password" name="password" />
			</label>
		</fieldset>

		<fieldset>
			<legend>Preferencias</legend>
			<label for="opcion1"
				>Opción 1
				<input type="radio" id="opcion1" name="preferencia" />
			</label>
			<label for="opcion2"
				>Opción 2
				<input type="radio" id="opcion2" name="preferencia" />
			</label>
			<label for="checkbox"
				>Acepto los términos y condiciones
				<input type="checkbox" id="checkbox" name="terminos" />
			</label>
		</fieldset>

		<fieldset>
			<legend>Subir Archivo</legend>
			<input type="file" id="archivo" name="archivo" />
		</fieldset>

		<div class="form-buttons">
			<input class="button-action" type="submit" value="Enviar" />
		</div>
	</form>

	<button class="button-edit">Editar</button>
	<button class="button-delete">Eliminar</button>

	<div class="nori-table">
		<h3>Titulo de la tabla</h3>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>NOMBRE</th>
					<th>INTRODUCCION</th>
					<th />
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Nombre 1</td>
					<td>Texto de introduccion 1</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Nombre 2</td>
					<td>Texto de introduccion 2</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>3</td>
					<td>Nombre 3</td>
					<td>Texto de introduccion 3</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>4</td>
					<td>Nombre 4</td>
					<td>Texto de introduccion 4</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>5</td>
					<td>Nombre 5</td>
					<td>Texto de introduccion 5</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>6</td>
					<td>Nombre 6</td>
					<td>Texto de introduccion 6</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>7</td>
					<td>Nombre 7</td>
					<td>Texto de introduccion 7</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>8</td>
					<td>Nombre 8</td>
					<td>Texto de introduccion 8</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
				<tr>
					<td>9</td>
					<td>Nombre 9</td>
					<td>Texto de introduccion 9</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>

				<tr>
					<td>10</td>
					<td>Nombre 10</td>
					<td>Texto de introduccion 10</td>
					<td class="keypad"><button>✏️</button></td>
				</tr>
			</tbody>
		</table>

		<div class="table-pagination">
			<button>&lt;</button>
			<button>1</button>
			<button class="selected-page">2</button>
			<button>3</button>
			<button>&gt;</button>
		</div>
	</div>
</main>

<style>
	/* UTILITIES */
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}

	body {
		font-family: cursive;
	}

	a {
		text-decoration: none;
	}

	li {
		list-style: none;
	}

	form label {
		display: flex;
		justify-content: space-between;
		margin-bottom: 1em;
	}

	.form-buttons {
		display: flex;
		justify-content: center;
		align-items: center;
	}

	fieldset {
		margin: 1em;
		padding: 0.5em;
	}

	.nori-table {
		margin: 1em;
		padding: 1em;
		border: 2px solid rgb(157, 214, 214);
		border-radius: 5px;
	}

	.nori-table h3 {
		text-align: center;
		margin-bottom: 1em;
	}

	.selected-page {
		background-color: rgb(1, 139, 139);
	}

	.nori-table table {
		width: 100%;
		border-collapse: collapse;
	}

	.nori-table td {
		border: 1px solid #b3b3b3;
		padding: 0.5em;
	}

	.table-pagination {
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		margin-top: 1em;
	}
	.keypad {
		text-align: center;
	}

	fieldset {
		border: 2px solid rgb(157, 214, 214);
		border-radius: 5px;
		padding-top: 1.5em;
		padding-left: 1em;
	}

	fieldset legend {
		padding: 0 -0.5em;
		font-weight: bold;
	}

	tbody:before {
		content: '@';
		display: block;
		line-height: 1em;
		text-indent: -99999px;
	}

	button {
		padding: 0.3em 0.5em;
		border: none;
		border-radius: 5px;
		background-color: rgb(157, 214, 214);
		color: #fff;
		font-weight: bold;
		margin: 0 0.1em;
	}

	/* NAVBAR STYLING STARTS */
	.navbar {
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 20px;
		background-color: teal;
		color: #fff;
		border-radius: 10px;
	}

	.nav-links a {
		color: #fff;
	}

	/* LOGO */
	.logo {
		font-size: 32px;
	}

	/* NAVBAR MENU */
	.menu {
		display: flex;
		gap: 1em;
		font-size: 18px;
	}

	.menu li:hover {
		background-color: #4c9e9e;
		border-radius: 5px;
		transition: 0.3s ease;
	}

	.menu li {
		padding: 5px 14px;
	}

	/* DROPDOWN MENU */
	.services {
		position: relative;
	}

	.dropdown {
		background-color: rgb(1, 139, 139);
		padding: 1em 0;
		position: absolute; /*WITH RESPECT TO PARENT*/
		display: none;
		border-radius: 8px;
		top: 35px;
	}

	.dropdown li + li {
		margin-top: 10px;
	}

	.dropdown li {
		padding: 0.5em 1em;
		width: 8em;
		text-align: center;
	}

	.dropdown li:hover {
		background-color: #4c9e9e;
	}

	.services:hover .dropdown {
		display: block;
	}

	input {
		border-radius: 4px;
		border: solid 1px #b3b3b3;
		padding: 0.3em;
	}

	.button-action {
		background-color: rgb(1, 139, 139);
		color: #fff;
		padding: 0.5em 1em;
		border-radius: 5px;
		border: none;
		font-weight: bold;
	}

	.button-edit {
		background-color: rgb(35, 130, 87);
		color: #fff;
		padding: 0.5em 1em;
		border-radius: 5px;
		border: none;
		font-weight: bold;
	}

    .button-delete {
		background-color: rgb(240, 106, 34);
		color: #fff;
		padding: 0.5em 1em;
		border-radius: 5px;
		border: none;
		font-weight: bold;
	}        

	/* RESPONSIVE NAVBAR MENU STARTS */

	/* CHECKBOX HACK */

	input[type='checkbox'] {
		display: none;
	}

	/* HAMBURGER MENU */
	.hamburger {
		display: none;
		font-size: 24px;
		user-select: none;
	}

	/* APPLYING MEDIA QUERIES */
	@media (max-width: 768px) {
		.menu {
			display: none;
			position: absolute;
			background-color: teal;
			right: 0;
			left: 0;
			text-align: center;
			padding: 16px 0;
		}

		.menu li:hover {
			display: inline-block;
			background-color: #4c9e9e;
			transition: 0.3s ease;
		}

		.menu li + li {
			margin-top: 12px;
		}

		input[type='checkbox']:checked ~ .menu {
			display: block;
		}

		.hamburger {
			display: block;
		}

		.dropdown {
			left: 50%;
			top: 30px;
			transform: translateX(35%);
		}

		.dropdown li:hover {
			background-color: #4c9e9e;
		}
	}
</style>
