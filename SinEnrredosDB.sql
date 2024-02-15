create database SinEnrredodDB
go

Use SinEnrredodDB
go

Create Table Marca(
Id_Marca varchar(20) Primary key Not Null,
Nombre_Marca Nvarchar(50)Not Null,
);

Create Table Utilidad(
Id_Utilidad varchar(20) Primary key Not Null,
Utilidad Nvarchar(50)Not Null,
);

Create Table Tipo_de_Cabello(
Id_Tipo_de_Cabello varchar(20)Primary key Not Null,
Tipo_de_Cabello Nvarchar(50)Not Null,
Textura Nvarchar(50) Not Null,
);

Create Table Presentacion(
Id_Presentacion varchar(20) Primary key Not Null,
Ml Nvarchar(10)Not Null,
Gr Nvarchar(10) Not Null,
);

Create Table Finalidad(
Id_Finalidad varchar(20) Primary key Not Null,
Descripcion_Finalidad Nvarchar(Max)Not Null,
);

Create Table Producto(
Id_Nombre_Producto varchar(20) Primary key Not Null,
Nombre_Marca Nvarchar(50)Not Null,
Id_Marca varchar(20) Not Null,
Foreign Key(Id_Marca)  References Marca(Id_Marca ),
);

Create Table Productos_referencias_completas(
Id_Producto_referenciado_Completo varchar(20)Primary Key Not Null,
Id_Marca varchar(20) Not Null,
Id_Nombre_Producto varchar(20) Not Null, 
Id_Presentacion varchar(20) Not Null,
Id_Utilidad varchar(20) Not Null,
Id_Tipo_de_Cabello_I varchar(20),
Id_Tipo_de_Cabello_II varchar(20),
Id_Finalidad varchar(20) ,
Foreign Key (Id_Marca)  References Marca(Id_Marca),
Foreign Key (Id_Nombre_Producto)  References Producto(Id_Nombre_Producto),
Foreign Key (Id_Presentacion )  References Presentacion(Id_Presentacion),
Foreign Key (Id_Utilidad)  References Utilidad(Id_Utilidad),
Foreign Key (Id_Tipo_de_Cabello_I)  References Tipo_de_Cabello(Id_Tipo_de_Cabello),
Foreign Key (Id_Tipo_de_Cabello_II)  References Tipo_de_Cabello(Id_Tipo_de_Cabello),
Foreign Key (Id_Finalidad)  References Finalidad(Id_Finalidad),
);

----------------------------------------
BULK INSERT Utilidad
FROM 'D:\N\Documents\SQL Server Management Studio\SinEnredosBD\csv\InfoSinEnrredosDB-Utilidad.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',   
	  FIRSTROW = 0
);

BULK INSERT Tipo_de_Cabello
FROM 'D:\N\Documents\SQL Server Management Studio\SinEnredosBD\csv\InfoSinEnrredosDB-Tipo de cabello.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',   
	  FIRSTROW = 0
);

BULK INSERT Marca
FROM 'D:\N\Documents\SQL Server Management Studio\SinEnredosBD\csv\InfoSinEnrredosDB-marca.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',   
	  FIRSTROW = 0
);

BULK INSERT Presentacion
FROM 'D:\N\Documents\SQL Server Management Studio\SinEnredosBD\csv\InfoSinEnrredosDB-Presentacion.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',   
	  FIRSTROW = 0
);

BULK INSERT Finalidad
FROM 'D:\N\Documents\SQL Server Management Studio\SinEnredosBD\csv\InfoSinEnrredosDB-finalidad.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',   
	  FIRSTROW = 0
);

