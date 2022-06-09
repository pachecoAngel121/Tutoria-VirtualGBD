
/*==============================================================*/
/* Table: CALIFICACION_DE_SESICION                              */
/*==============================================================*/
create table CALIFICACION_DE_SESICION (
   ID_CALIFICACION      INT4                 not null,
   ID_ESTUDIANTE        INT4                 null,
   ID_SESSION           INT4                 null,
   NOTA_SESSION         VARCHAR(10)          null,
   constraint PK_CALIFICACION_DE_SESICION primary key (ID_CALIFICACION)
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   ID_ESTUDIANTE        INT4                 not null,
   ID_PROVINCIA         INT4                 null,
   NOMBRE_ESTUDIANTE    VARCHAR(40)          null,
   APELLIDO_ESTUDIANTE  VARCHAR(40)          null,
   IDENTIFICCION        VARCHAR(10)          null,
   CORREO_ELECTRONICO   VARCHAR(50)          null,
   TELEFONO             VARCHAR(10)          null,
   constraint PK_ESTUDIANTE primary key (ID_ESTUDIANTE)
);

/*==============================================================*/
/* Table: PAGO_TUTORIA                                          */
/*==============================================================*/
create table PAGO_TUTORIA (
   ID_PAGO_TUTORIA      INT4                 not null,
   ID_SESSION           INT4                 not null,
   PAGO_TUTORIA         DECIMAL              null,
   DESCRIPICON_TUTORIA  VARCHAR(40)          null,
   FECHA_PAGO           DATE                 null,
   constraint PK_PAGO_TUTORIA primary key (ID_PAGO_TUTORIA)
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
   ID_PAIS              INT4                 not null,
   NOMBRE_PAIS          VARCHAR(40)          null,
   constraint PK_PAIS primary key (ID_PAIS)
);


/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   ID_PROVINCIA         INT4                 not null,
   ID_PAIS              INT4                 null,
   NOMBRE_PROVINCIA     VARCHAR(40)          null,
   constraint PK_PROVINCIA primary key (ID_PROVINCIA)
);

/*==============================================================*/
/* Table: SESSION                                               */
/*==============================================================*/
create table SESSION (
   ID_SESSION           INT4                 not null,
   ID_ESTUDIANTE        INT4                 not null,
   ID_TUTOR             INT4                 not null,
   TIPO_SESSION         VARCHAR(40)          null,
   SESSION_INICIO       TIME                 null,
   SESSION_FIN          TIME                 null,
   CANTIDAD_ESTUDIANTES_TUTORIA VARCHAR(20)          null,
   TIPO_DE_PAGO         VARCHAR(40)          null,
   ESTADO_SESSION       VARCHAR(50)          null,
   constraint PK_SESSION primary key (ID_SESSION)
);

/*==============================================================*/
/* Table: TUTOR                                                 */
/*==============================================================*/
create table TUTOR (
   ID_TUTOR             INT4                 not null,
   NOMBRE_TUTOR         VARCHAR(40)          null,
   APELLIDO_TUTOR       VARCHAR(40)          null,
   CEDULA_TUTOR         VARCHAR(10)          null,
   CORREO_TUTOR         VARCHAR(50)          null,
   TIPO_TUTOR           VARCHAR(40)          null,
   constraint PK_TUTOR primary key (ID_TUTOR)
