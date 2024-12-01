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

## Relaciones de Tablas

<b>Necesito relacionar las 13 tablas de la siguiente forma</b>
<ol>
    <li>Cliente con País a través del idPais.</li>
    <li>ConceptoCompra con Compra a través de idConcepto y Concepto.</li>
    <li>HorarioEstado con HoraCaptacion a través de idEstado y EstadoCaptación.</li>
    <li>Compra con CompraCliente a través de idCompra.</li>
    <li>Cliente con CompraCliente a tavés de idCliente.</li>
    <li>HoraCapClienteCampania con HoraCaptacion a través de idHCaptacion.</li>
    <li>HoraCapClienteCampania con Campania a través de idCampania.</li>
    <li>CampaniaProducto con Producto a través de idProducto.</li>
    <li>CampaniaProducto con Campania a través de idCampania.</li>
    <li>Record con RecordCliente a través de idRecord.</li>
    <li>Record con Cliente a través de idCliente.</li>
    <li>RecordCliente con Campania a través de idCampania.</li>
</ol>
<a href = ""> Acceso a las imagenes </a>

<br><hr>

## Insertar Registros

<p>Se pueden insertar los registros de la manera que quieras, tanto con Transact, como a través del SQL MMS.</p>

   <ol>
        <li>Tabla Cliente</li>
            <ol>
                <li>Primer Registro: </li>
                    <ol>
                        <li>Nombre: Raúl</li>
                        <li>Apellido: Gonzalez</li>
                        <li>Fnacimiento: 1986-05-25</li>
                        <li>Domicilio: Gualtatas 2526</li>
                        <li>idPais: ESP </li>
                        <li>Telefono: 664859632</li>
                        <li>Email: donraul@gmail.es</li>
                        <li>Observaciones: No hay observaciones</li>
                        <li>Falta: 2024-01-05 00:00:00.000</li>
                    </ol>
                <li>Segundo Registro: </li>
                    <ol>
                        <li>Nombre: James</li>
                        <li>Apellido: Nicole</li>
                        <li>Fnacimiento: 1990-03-02</li>
                        <li>Domicilio: O'Neill jack 2568</li>
                        <li>idPais: USA </li>
                        <li>Telefono: 1254685632</li>
                        <li>Email: wuarden@green.us</li>
                        <li>Observaciones: No hay observaciones</li>
                        <li>Falta: 2024-01-06 00:01:00.000</li>
                    </ol>
                <li>Tercer Registro: </li>
                    <ol>
                        <li>Nombre: Marta</li>
                        <li>Apellido: Perez</li>
                        <li>Fnacimiento: 1995-05-03</li>
                        <li>Domicilio: Brasilia 25</li>
                        <li>idPais: BRA </li>
                        <li>Telefono: 56432253</li>
                        <li>Email: mPerezbra@gmail.es</li>
                        <li>Observaciones: No hay observaciones</li>
                        <li>Falta: 2024-02-01 00:02:02.000</li>
                    </ol>
                <li>Cuarto Registro: </li>
                    <ol>
                        <li>Nombre: Claudio</li>
                        <li>Apellido: Ramirez</li>
                        <li>Fnacimiento: 1984-08-02</li>
                        <li>Domicilio: Cheguan 225</li>
                        <li>idPais: ESP </li>
                        <li>Telefono: 66852125</li>
                        <li>Email: caluRami@gmail.es</li>
                        <li>Observaciones: No hay observaciones</li>
                        <li>Falta: 2024-02-01 00:02:02.000</li>
                    </ol>
                <li>Quinto Registro: </li>
                    <ol>
                        <li>Nombre: Markuis</li>
                        <li>Apellido: Papadopulus</li>
                        <li>Fnacimiento: 1982-02-06</li>
                        <li>Domicilio: Grikindier 223</li>
                        <li>idPais: GRC </li>
                        <li>Telefono: 2548542355</li>
                        <li>Email: papadopulusm@gmail.com</li>
                        <li>Observaciones: Es griego</li>
                        <li>Falta: 2024-02-01 00:06:00.000</li>
                    </ol>
                <li>Sexto Registro: </li>
                    <ol>
                        <li>Nombre: Carlos</li>
                        <li>Apellido: Trebor</li>
                        <li>Fnacimiento: 1966-05-03</li>
                        <li>Domicilio: Pedro Pastor 2</li>
                        <li>idPais: MEX </li>
                        <li>Telefono: 135852133</li>
                        <li>Email: Carlitos@gmail.ue</li>
                        <li>Observaciones: No hay observaciones</li>
                        <li>Falta: 2024-02-01 00:00:00.000</li>
                    </ol>
                <li>Septimo Registro: </li>
                    <ol>
                        <li>Nombre: Otto</li>
                        <li>Apellido: Von Kunstmann</li>
                        <li>Fnacimiento: 1975-09-01</li>
                        <li>Domicilio: Ötiggen str 3</li>
                        <li>idPais: DEU </li>
                        <li>Telefono: 6582216335</li>
                        <li>Email: elaleman@aleman.com</li>
                        <li>Observaciones: Es Aleman</li>
                        <li>Falta: 2024-01-06 00:08:00.000</li>
                    </ol>
                <li>Octavo Registro: </li>
                    <ol>
                        <li>Uit</li>
                        <li>Apellido: Tlinnlnie</li>
                        <li>Fnacimiento: 1977-05-05</li>
                        <li>Domicilio: Intrati 22</li>
                        <li>idPais: IND </li>
                        <li>Telefono: 1325865523</li>
                        <li>Email: uit@guit.in</li>
                        <li>Observaciones: Es Indio</li>
                        <li>Falta: 2024-02-06 00:01:00.000</li>
                    </ol>
            </ol>
        <li>Tabla País</li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idPais: ESP</li>
                        <li>Pais: España</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idPais: GRC</li>
                        <li>Pais: Grecia</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idPais: India</li>
                        <li>Pais: India</li>
                    </ol>
                <li>Cuarto Registro</li>
                    <ol>
                        <li>idPais: USA</li>
                        <li>Pais: Estados Unidos</li>
                    </ol>
                <li>Quinto Registro</li>
                    <ol>
                        <li>idPais: MEX</li>
                        <li>Pais: Mexico</li>
                    </ol>
                <li>Sexto Registro</li>
                    <ol>
                        <li>idPais: BRA</li>
                        <li>Pais: Brasil</li>
                    </ol>
                <li>Septimo Registro</li>
                    <ol>
                        <li>idPais: DEU</li>
                        <li>Pais: Alemania</li>
                    </ol>
        <li>Tabla HoraCaptacion</li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idHCaptacion: 1</li>
                        <li>FechaCaptacion: 2024-01-05</li>
                        <li>EstadoCaptacion: 1</li>
                        <li>Observaciones: Lead</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idHCaptacion: 5</li>
                        <li>FechaCaptacion: 2024-01-05</li>
                        <li>EstadoCaptacion: 2</li>
                        <li>Observaciones: Lead</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idHCaptacion: 6</li>
                        <li>2024-02-01</li>
                        <li>EstadoCaptacion: 1</li>
                        <li>Observaciones: Cliente</li>
                    </ol>
                <li>Cuarto Registro</li>
                    <ol>
                        <li>idHCaptacion: 7</li>
                        <li>2024-02-01</li>
                        <li>EstadoCaptacion: 3</li>
                        <li>Observaciones: Prospecto</li>
                    </ol>
                <li>Quinto Registro</li>
                    <ol>
                        <li>idHCaptacion: 8</li>
                        <li>FechaCaptacion: 2024-02-01</li>
                        <li>EstadoCaptacion: 1</li>
                        <li>Observaciones: Lead</li>
                    </ol>
        <li>Tabla Campania></li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idCampania: 1</li>
                        <li>NombreCampaña: Producto Estrella 1</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idCampania: 2</li>
                        </li>NombreCampania: Producto Estrella 2</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idCampania: 3</li>
                        <li>NombreCampania: Producto Estrella 3</li>
                    </ol>
            </ol>
        <li>Tabla HorarioEstado</li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idEstado: 1</li>
                        <li>Descripción: Prime tarde-noche</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idEstado: 2</li>
                        <li>Descripción: Valle Media Tarde, media mañana</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idEstado: 3</li>
                        <li>Descripción: Breakfast antes de las 10 AM</li>
                    </ol>
                <li>Cuarto Registro</li>
                    <ol>
                        <li>idEstado: 4</li>
                        <li>Descripcion: Nocturno después de las 00:00</li>
                    </ol>
            </ol>
        <li>Tabla ConceptoCompra</li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idConcepto: 1</li>
                        <li>Concepto: Compra Producto Estrella 1</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idConcepto: 2</li>
                        <li>Concepto: Compra producto estrella 2</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idConcepto: 3</li>
                        <li>Concepto: Compra Producto estrella 3</li>
                    <ol>
            </ol>
         <li>Tabla Compra</li>
            <ol>
                <li>Primer Registro</li>
                    <ol>
                        <li>idCompra: 1</li>
                        <li>Concepto: 1</li>
                        <li>Fecha: 2024-01-02 00:00:00.000</li>
                        <li>Monto: 5000,0000</li>
                        <li>Observaciones: Comprador de producto estrella 1</li>
                    </ol>
                <li>Segundo Registro</li>
                    <ol>
                        <li>idCompra: 4</li>
                        <li>Concepto: 2</li>
                        <li>Fecha: 2024-01-02 00:00:00.000</li>
                        <li>Monto: 3500,0000</li>
                        <li>Observaciones: Comprador Producto Estrella 2</li>
                    </ol>
                <li>Tercer Registro</li>
                    <ol>
                        <li>idCompra: 5</li>
                        <li>Concepto: 2</li>
                        <li>Fecha: 2024-01-03 00:00:00.000</li>
                        <li>Monto: 5000,0000</li>
                        <li>Observaciones: Comprador Producto Estrella 1</li>
                    </ol>
            </ol>

            
<br><hr>

## Edición de tablas
<p>Deberás insertar nuevos registros en las tablas HoraCaptacion y HoraCapClienteCampania utilizando solo comando o 
lenguaje Transact SQL.</p>
<ol>
    <li>Tabla HoraCaptacion</li>
        <ol>
            <li>Fecha: 2024-01-01 10:00</li>
            <li>Estado: 1</li>
            <li>Observacion: DESCONOCIDO</li>
        </ol>
    <li>Tabla HoraCapClienteCampania</li>
        <ol>
            <li>idHCaptacion: Deberás colocar el idHCaptacion autogenerado en la tabla HoraCaptacion</li>
            <li>idCliente: Deberás colocar cualquier idCampania existente en la tabla Campania</li>
        </ol>
</ol>

<br><hr>

## consultas

<ol>
    <li>Haz una consulta "SELECT" que llame a la tabla Cliente y te muestre su contenido.</li>
    <li>Haz una consulta "SELECT" que te muestre solo los nombres de los clientes.</li>
    <li>Haz una consulta que muestre los tres primeros registros (TOP N) de la tabla Cliente y que los ordene por
    fecha de nacimiento de forma ascendente.</li>
    <li>Haz una consulta que muestro los idPais distintos por Cliente.(Muchas atención a este enunciado)</li>
    <li>Haz una sentencia que modifique el EMAIL del primer registro de tu tabla Clientes, el nuevo Email es
    200@gmail.es, utiliza "UPDATE...SET....WHERE...."</li>
    <li>Realiza un promedio del campo monto de la tabla Compra.</li>
    <li>Haz una consulta que te muestre los datos de la tabla HoraCaptacion filtrados por fechas entre el 
    2024-01-01 y el 2024-01-30, debes utilizar el operador "BETWEEN".</li>
    <li>Crea una consulta "IF" que te devuelva los registros de nacionalidad española de la tabla Cliente.</li>
    <li>Crea una consulta "CONIDICIONAL CASE" que te devuelva un campo llamdo continente con los continentes de lo
    paises de la tabla Pais.</li>
    <li>Crea un STORED PROCEDURE para insertar nuevos registros en la tabla Clientes.</li>
        <ul>
            <li>Añade un campo DNI al igual que en el ejercicio del curso(los registros anteriores quedarán 
            en blanco o nulos).</li>
            <li>El STORED PROCEDURE debe ejecutarse con la siguiente expresión:<li>
            <p>EXEC Nuevo_Cliente '2351365', 'Raúl', 'Stuart', '19850521', 'La regasta 25', 'ESP',655821547',
            'Raul@krokimail.com',''</p>
            <p>Tener en cuenta la información que te entrega la expresión anterior, por ejemplo, el nombre de la tabla
            que debes usar.</p>
        </ul>
</ol>

<hr>
<p>Este es el proyecto que nos solicitarón, si tienes experiencia trabajando con SQL verás que no es muy complicado, pero 
en algunos puntos tendrás que pararte a pensar.</p>
<p>A continuación te dejo un enlace a cada uno de los archivos sql que resuelven los ejercicios, espero que te sirvan para aprender
un poco más sobre SQL.</p>

<hr>

## Resolución de ejercicios

<ol>
    <b><li>Creación de tablas.</li></b>
            <ol>
                <li><a href = "https://github.com/guillermopayllon/master-sql/blob/main/creation-tables/create-table-client.sql">Creación Tabla Clientes.</a></li>
                <li><a a href = "https://github.com/guillermopayllon/master-sql/blob/main/creation-tables/create-table-record.sql">Creación Tabla Records</a></li>
                <li><a href = "https://github.com/guillermopayllon/master-sql/blob/main/creation-tables/create-table-recordCliente.sql">Creación Tabla RecordCliente</a></li>
                <li><a href = "https://github.com/guillermopayllon/master-sql/blob/main/creation-tables/create-table-country.sql">Creación Tabla País</a></li>
                <li><a href = "">Creación Tabla HorarioCaptacion</a></li>
                <li><a href = "https://github.com/guillermopayllon/master-sql/blob/main/creation-tables/create-table-scheduleCapClientCampaign.sql">Creación Tabla HoraCapClienteCampania</a></li>
                

                