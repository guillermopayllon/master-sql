# Máster en SQL Server: Desde Cero a Nivel Profesional [2024]

<p>Bienvenido a este repositorio donde os voy a mostrar el proyecto en su totalidad que realice para el curso de 
IBM y DataHack en noviembre de 2024, y que lógicamente está relacionado con una base de datos, lo primero os mostraré el enunciado, y a continuación un indice con acceso a todos los resultados que yo he presentado.</p>
<p>En el momento de crear este repositorio todavía no tengo corregido el proyecto, pero cuando lo obtenga lo pondré en este mismo repositiorio.</p>
<p>El objetivo no es que la gente que realice este curso tenga las respuestas al proyecto final, ya que por suerte lo van cambiando, es solo a modo educativo.</p>

<hr>

## Proyecto final

<p>El proyecto consiste en crear una base de datos con 13 tablas relacionadas, las cuales combinare-mos y consultaremos a través del lenguaje Transact SQL.</p>
<p>Te damos la bienvenida.</p>
<p>¿Así que tú eres el nuevo programador de bases de datos?</p>
<p>Hola, soy James de Marketing, encantado. Me dijo el director de estrategia del dato que tú me podrías ayudar a crear mi proyecto para almacenar y gestionar los datos de marketing de los clientes de 7 países.</p>

<hr>

## Actividades

<b><u>Creación de la base de datos</u></b>

<ol>
    <li>Necesito crear una BBDD</li>
    <p>Crea una "Base de datos" desde Transact SQL y Ponle tu nombre (nombreApellido)</p>
    <a href = "">Accede al código</a>
    <li>Nececito crear la tabla Clientes (Cliente), que contendrá los siguientes datos: </li>
        <ul>
            <li>idCliente: tipo int, no admite nulos, identity, y es Primary Key.</li>
            <li>Nombre: tipo varchar(50), no adminte nulos.</li>
            <li>Apellido: tipo varchar(50), no admite nulos.</li>
            <li>Fnacimiento: tipo date, no admite nulos.</li>
            <li>Domicilio: tipo varchar (50), no adminte nulos.</li>
            <li>idPais: tipo char(3), no adminte nulos.</li>
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
            <li>idRecord: tipo int, no admite nulos.</li>
            <li>idCliente: tipo int, no admite nulos.</li>
            <li>idCampania: tipo int, no admite nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás hacer una tabla país(Pais), que contendrá los países de origen de los clientes.</li>
        <ul>
            <li>idPais: tipo char(3), no admite nulos, y es Primary Key.</li>
            <li>NombrePais: tipo varchar(100), no admite nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás crear la tabla Horario Captación Campaña(HorarioCaptacion), que contendrá la hora en la cual los clientes se registrarón en las campañas.</li>
        <ul>
            <li>idHCaptacion: tipo int, no admite nulos, identity, y es Primary Key.</li>
            <li>FechaCaptacion: tipo date, no admite nulos.</li>
            <li>EstadoCaptacion: tipo smallint, no admite nulos.</li>
            <li>Observaciones: tipo varchar(1000), admite nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás definir la tabla Horario Estado (HorarioEstado) que contendrá la dimensión del horario con la descripción del estado.</li>
        <ul>
            <li>idEstado: tipo smallint, no adminte nulos, identity, y es Primary Key.</li>
            <li>Descripción: tipo varchar(50), no adminte nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás crear la tabla Producto(Producto), que contendrá los productos asociados a las campañas.</li>
        <ul>
            <li>idProducto: tipo int, no admite nulos, identity, y es Primary Key.</li>
            <li>Producto: tipo varchar(100), no adminte nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás construir la tabla Compras(Compra), que contendrá las compras en dinero que han realizado los clientes.</li>
        <ul>
            <li>idCompras: tipo int, no adminte nulos, identity, y es Primary Key.</li>
            <li>Concepto: tipo int, y no admite nulos.</li>
            <li>Fecha(de la compra): tipo datetime, y no adminte nulos.</li>
            <li>Monto: tipo money, y no admite nulos.</li>
            <li>Observaciones: tipo varchar(1000) y adminte nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás constuir la tabla Compras Cliente(ComprasCliente), que conectará a las compras con los clientes y su captación. La Primary Key de esta tabla estará compuesta por los tres campos.</li>
        <ul>
            <li>idCompras: tipo int, no adminte nulos.</li>
            <li>idCliente: tipo int, no adminte nulos.</li>
            <li>idHCaptacion: tipo int, no adminte nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás construir la tabla Campaña(Campania), que contendrá la dimensión de campañas que han realizado los clientes.</li>
        <ul>
            <li>idCampania: tipo int, no adminte nulos, identity, y es Primary Key.</li>
            <li>NombreCampaña: tipo varchar (50), no admite nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás construir la tabla Campaña Producto(CampaniaProducto), que contendrá las relaciones entre las campañas y los productos.</li>
        <ul>
            <li>idCampania: tipo int, no adminte nulos, identity, es Primary Key.</li>
            <li>idProducto: tipo int, no admite nulos, y es Primary Key.</li>
            <li>Descripción: tipo varchar(100), no adminte nulos.</li>
        </ul>
        <a href = "">Acceso al código</a>
    <li>Deberás construir la tabla Conceto Compra(ConceptoCompra), que contendrá la dimensión de conceptos de compra.</li>
        <ul>
            <li>idConcepto: tipo int, identity, no adminte nulos, y es Primary Key.</li>
            <li>Concepto: tipo varchar(100), no adminte nulos.</li>
            <a href = "">Acceso al código</a>        
</ol>

<br><hr>

