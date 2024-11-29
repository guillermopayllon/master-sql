# Máster en SQL Server: Desde Cero a Nivel Profesional [2024]

<p>Bienvenido a este repositorio donde os voy a mostrar el proyecto en su totalidad que realice para el curso de 
IBM y DataHack en noviembre de 2024, y que lógicamente está relacionado con una base de datos, lo primero os mostraré el enunciado, y a continuación un indice con acceso a todos los resultados que yo he presentado.</p>
<p>En el momento de crear este repositorio todavía no tengo corregido el proyecto, pero cuando lo obtenga lo pondré en este mismo repositiorio.</p>
<p>El objetivo no es que la gente que realice este curso tenga las respuestas al proyecto final, ya que por suerte lo van cambiando, es solo a modo educativo.</p>

<hr>

## Proyecto final

<p>El proyecto consiste en crear una base de datos con 13 tablas relacionadas, las cuales combinare-mos y consultaremos a través del lenguaje Transact SQL.
Te damos la bienvenida.
¿Así que tú eres el nuevo programador de bases de datos?
Hola, soy James de Marketing, encantado. Me dijo el director de estrategia del dato que tú me podrías ayudar a crear mi proyecto para almacenar y gestionar los datos de marketing de los clientes de 7 países.</p>

<hr>

## Actividades

<ol>
    <li>Necesito crear una BBDD</li>
    <p>Crea una "Base de datos" desde Transact SQL y Ponle tu nombre (nombreApellido)</p>
    <a href = "">Accede al código</a>
    <li>Nececito crear la tabla Clientes (Cliente), que contendrá los siguientes datos: </li>
        <ul>
            <li>idCliente: tipo int, no admite nulos, identity, y es Primary Key.</li>
            <li>Nombre: tipo varchar(50), no adminte nulos.</li>
            <li>Apellido: tipo varchar(50), no admite nulos.</li>
            <li>Fnacimiento: tipo date, no admite nulos.<li>
            <li>Domicilio: tipo varchar (50), no adminte nulos.</li>
            <li>idPais: tipo char(3), no adminte nulos.<li>
            <li>Teléfono: tipo varchar(12), no admite nulos.</li>
            <li>Email: tipo varchar(30), no admite nulos.</li>
            <li>Observaciones: tipo varchar(1000), admite nulos.</li>
            <li>FechaAlta: tipo datetime, no adminte nulos.</li>
        </ul>
        <a href = "">Accede al código</a>

    <li>Deberás construir una tabla de hechos llamada Record (Record), que contendrá el historial de campañas.</li>
        <ul>
            <li>idRecord: tipo int, no admite nulos, identity y es Primary Key.</li>
            <li>FechaRecord: tipo date, no admite nulos.</li>
            <li>Observaciones: tipo varchar(1000), adminte nulos</li>
        </ul>
        <a href= "">Acceso al código</a>
    <li>Deberás definir la tabha de hechos Record Cliente (RecordCliente), que contedrá el historial de campañas por las que ha pasado el cliente, Relación Historia Cliente Campaña, está tabla deberá contener una Primary Key compuesta por los tres campos.</li>
        <ul>

        </ul>
        
</ol>
