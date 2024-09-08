/*
 Navicat Premium Data Transfer

 Source Server         : DB2
 Source Server Type    : PostgreSQL
 Source Server Version : 120017 (120017)
 Source Host           : localhost:5432
 Source Catalog        : FestFinder
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120017 (120017)
 File Encoding         : 65001

 Date: 08/09/2024 19:01:38
*/


-- ----------------------------
-- Sequence structure for asistencia_evento_id_asistencia_evento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."asistencia_evento_id_asistencia_evento_seq";
CREATE SEQUENCE "public"."asistencia_evento_id_asistencia_evento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for consumo_id_consumo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."consumo_id_consumo_seq";
CREATE SEQUENCE "public"."consumo_id_consumo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for entrada_id_entrada_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entrada_id_entrada_seq";
CREATE SEQUENCE "public"."entrada_id_entrada_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for establecimiento_id_establecimiento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."establecimiento_id_establecimiento_seq";
CREATE SEQUENCE "public"."establecimiento_id_establecimiento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for etiquetas_id_etiqueta_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."etiquetas_id_etiqueta_seq";
CREATE SEQUENCE "public"."etiquetas_id_etiqueta_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for evento_id_evento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."evento_id_evento_seq";
CREATE SEQUENCE "public"."evento_id_evento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for genero_evento_id_genero_evento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."genero_evento_id_genero_evento_seq";
CREATE SEQUENCE "public"."genero_evento_id_genero_evento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for historial_asistencia_id_asistencia_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."historial_asistencia_id_asistencia_seq";
CREATE SEQUENCE "public"."historial_asistencia_id_asistencia_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_establecimiento_id_tipo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_establecimiento_id_tipo_seq";
CREATE SEQUENCE "public"."tipo_establecimiento_id_tipo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_id_usuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_id_usuario_seq";
CREATE SEQUENCE "public"."usuario_id_usuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for valoracion_establecimiento_id_valoracion_establecimiento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."valoracion_establecimiento_id_valoracion_establecimiento_seq";
CREATE SEQUENCE "public"."valoracion_establecimiento_id_valoracion_establecimiento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for valoracion_evento_id_valoracion_evento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."valoracion_evento_id_valoracion_evento_seq";
CREATE SEQUENCE "public"."valoracion_evento_id_valoracion_evento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for asistencia_evento
-- ----------------------------
DROP TABLE IF EXISTS "public"."asistencia_evento";
CREATE TABLE "public"."asistencia_evento" (
  "id_asistencia_evento" int4 NOT NULL DEFAULT nextval('asistencia_evento_id_asistencia_evento_seq'::regclass),
  "id_evento_asistido_fk" int4,
  "id_usuario_fk" int4
)
;

-- ----------------------------
-- Records of asistencia_evento
-- ----------------------------

-- ----------------------------
-- Table structure for consumo
-- ----------------------------
DROP TABLE IF EXISTS "public"."consumo";
CREATE TABLE "public"."consumo" (
  "id_consumo" int4 NOT NULL DEFAULT nextval('consumo_id_consumo_seq'::regclass),
  "id_establecimiento_fk" int4,
  "titulo_consumo" varchar(20) COLLATE "pg_catalog"."default",
  "precio_consumo" numeric,
  "descripcion_consumo" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of consumo
-- ----------------------------

-- ----------------------------
-- Table structure for entrada
-- ----------------------------
DROP TABLE IF EXISTS "public"."entrada";
CREATE TABLE "public"."entrada" (
  "id_entrada" int4 NOT NULL DEFAULT nextval('entrada_id_entrada_seq'::regclass),
  "id_evento_fk" int4,
  "titulo_entrada" varchar(20) COLLATE "pg_catalog"."default",
  "precio_entrada" numeric,
  "descripcion_entrada" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of entrada
-- ----------------------------

-- ----------------------------
-- Table structure for establecimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."establecimiento";
CREATE TABLE "public"."establecimiento" (
  "id_establecimiento" int4 NOT NULL DEFAULT nextval('establecimiento_id_establecimiento_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "direccion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "coordenada_x" numeric(10,8) NOT NULL,
  "coordenada_y" numeric(10,2) NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default" NOT NULL,
  "tipo_fk" int4 NOT NULL
)
;

-- ----------------------------
-- Records of establecimiento
-- ----------------------------

-- ----------------------------
-- Table structure for etiquetas
-- ----------------------------
DROP TABLE IF EXISTS "public"."etiquetas";
CREATE TABLE "public"."etiquetas" (
  "id_etiqueta" int4 NOT NULL DEFAULT nextval('etiquetas_id_etiqueta_seq'::regclass),
  "etiqueta_texto" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of etiquetas
-- ----------------------------

-- ----------------------------
-- Table structure for etiquetas_establecimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."etiquetas_establecimiento";
CREATE TABLE "public"."etiquetas_establecimiento" (
  "id_establecimiento_fk" int4 NOT NULL,
  "id_etiqueta_fk" int4 NOT NULL
)
;

-- ----------------------------
-- Records of etiquetas_establecimiento
-- ----------------------------

-- ----------------------------
-- Table structure for evento
-- ----------------------------
DROP TABLE IF EXISTS "public"."evento";
CREATE TABLE "public"."evento" (
  "id_evento" int4 NOT NULL DEFAULT nextval('evento_id_evento_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date NOT NULL,
  "id_establecimiento" int4 NOT NULL,
  "fecha_final" date NOT NULL,
  "horario_inicio" time(6) NOT NULL,
  "horario_fin" time(6) NOT NULL,
  "id_genero_fk" int4 NOT NULL
)
;

-- ----------------------------
-- Records of evento
-- ----------------------------

-- ----------------------------
-- Table structure for genero_evento
-- ----------------------------
DROP TABLE IF EXISTS "public"."genero_evento";
CREATE TABLE "public"."genero_evento" (
  "id_genero_evento" int4 NOT NULL DEFAULT nextval('genero_evento_id_genero_evento_seq'::regclass),
  "titulo_genero" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion_genero" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of genero_evento
-- ----------------------------

-- ----------------------------
-- Table structure for historial_visita
-- ----------------------------
DROP TABLE IF EXISTS "public"."historial_visita";
CREATE TABLE "public"."historial_visita" (
  "id_visita" int4 NOT NULL DEFAULT nextval('historial_asistencia_id_asistencia_seq'::regclass),
  "id_establecimiento_visitado_fk" int4,
  "id_usuario_fk" int4
)
;

-- ----------------------------
-- Records of historial_visita
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_establecimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_establecimiento";
CREATE TABLE "public"."tipo_establecimiento" (
  "id_tipo" int4 NOT NULL DEFAULT nextval('tipo_establecimiento_id_tipo_seq'::regclass),
  "nombre_tipo" varchar(30) COLLATE "pg_catalog"."default",
  "descripcion_tipo" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tipo_establecimiento
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuario";
CREATE TABLE "public"."usuario" (
  "id_usuario" int4 NOT NULL DEFAULT nextval('usuario_id_usuario_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "telefono" varchar(20) COLLATE "pg_catalog"."default",
  "pass" varchar(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO "public"."usuario" VALUES (1, 'pablo', 'pablo@gmail.com', '70711360', 'hans');

-- ----------------------------
-- Table structure for valoracion_establecimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."valoracion_establecimiento";
CREATE TABLE "public"."valoracion_establecimiento" (
  "id_valoracion_establecimiento" int4 NOT NULL DEFAULT nextval('valoracion_establecimiento_id_valoracion_establecimiento_seq'::regclass),
  "id_visita_fk" int4,
  "puntuacion" int4,
  "comentario" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_publicacion" timestamp(6)
)
;

-- ----------------------------
-- Records of valoracion_establecimiento
-- ----------------------------

-- ----------------------------
-- Table structure for valoracion_evento
-- ----------------------------
DROP TABLE IF EXISTS "public"."valoracion_evento";
CREATE TABLE "public"."valoracion_evento" (
  "id_valoracion_evento" int4 NOT NULL DEFAULT nextval('valoracion_evento_id_valoracion_evento_seq'::regclass),
  "id_asistencia_fk" int4 NOT NULL,
  "puntuacion" int4 NOT NULL,
  "comentario" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_publicacion" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of valoracion_evento
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."asistencia_evento_id_asistencia_evento_seq"
OWNED BY "public"."asistencia_evento"."id_asistencia_evento";
SELECT setval('"public"."asistencia_evento_id_asistencia_evento_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."consumo_id_consumo_seq"
OWNED BY "public"."consumo"."id_consumo";
SELECT setval('"public"."consumo_id_consumo_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."entrada_id_entrada_seq"
OWNED BY "public"."entrada"."id_entrada";
SELECT setval('"public"."entrada_id_entrada_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."establecimiento_id_establecimiento_seq"
OWNED BY "public"."establecimiento"."id_establecimiento";
SELECT setval('"public"."establecimiento_id_establecimiento_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."etiquetas_id_etiqueta_seq"
OWNED BY "public"."etiquetas"."id_etiqueta";
SELECT setval('"public"."etiquetas_id_etiqueta_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."evento_id_evento_seq"
OWNED BY "public"."evento"."id_evento";
SELECT setval('"public"."evento_id_evento_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."genero_evento_id_genero_evento_seq"
OWNED BY "public"."genero_evento"."id_genero_evento";
SELECT setval('"public"."genero_evento_id_genero_evento_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."historial_asistencia_id_asistencia_seq"
OWNED BY "public"."historial_visita"."id_visita";
SELECT setval('"public"."historial_asistencia_id_asistencia_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tipo_establecimiento_id_tipo_seq"
OWNED BY "public"."tipo_establecimiento"."id_tipo";
SELECT setval('"public"."tipo_establecimiento_id_tipo_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."usuario_id_usuario_seq"
OWNED BY "public"."usuario"."id_usuario";
SELECT setval('"public"."usuario_id_usuario_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."valoracion_establecimiento_id_valoracion_establecimiento_seq"
OWNED BY "public"."valoracion_establecimiento"."id_valoracion_establecimiento";
SELECT setval('"public"."valoracion_establecimiento_id_valoracion_establecimiento_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."valoracion_evento_id_valoracion_evento_seq"
OWNED BY "public"."valoracion_evento"."id_valoracion_evento";
SELECT setval('"public"."valoracion_evento_id_valoracion_evento_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table asistencia_evento
-- ----------------------------
ALTER TABLE "public"."asistencia_evento" ADD CONSTRAINT "asistencia_evento_pkey" PRIMARY KEY ("id_asistencia_evento");

-- ----------------------------
-- Primary Key structure for table consumo
-- ----------------------------
ALTER TABLE "public"."consumo" ADD CONSTRAINT "consumo_pkey" PRIMARY KEY ("id_consumo");

-- ----------------------------
-- Primary Key structure for table entrada
-- ----------------------------
ALTER TABLE "public"."entrada" ADD CONSTRAINT "entrada_pkey" PRIMARY KEY ("id_entrada");

-- ----------------------------
-- Primary Key structure for table establecimiento
-- ----------------------------
ALTER TABLE "public"."establecimiento" ADD CONSTRAINT "establecimiento_pkey" PRIMARY KEY ("id_establecimiento");

-- ----------------------------
-- Primary Key structure for table etiquetas
-- ----------------------------
ALTER TABLE "public"."etiquetas" ADD CONSTRAINT "etiquetas_pkey" PRIMARY KEY ("id_etiqueta");

-- ----------------------------
-- Primary Key structure for table etiquetas_establecimiento
-- ----------------------------
ALTER TABLE "public"."etiquetas_establecimiento" ADD CONSTRAINT "etiquetas_establecimiento_pkey" PRIMARY KEY ("id_establecimiento_fk", "id_etiqueta_fk");

-- ----------------------------
-- Primary Key structure for table evento
-- ----------------------------
ALTER TABLE "public"."evento" ADD CONSTRAINT "evento_pkey" PRIMARY KEY ("id_evento");

-- ----------------------------
-- Primary Key structure for table genero_evento
-- ----------------------------
ALTER TABLE "public"."genero_evento" ADD CONSTRAINT "genero_evento_pkey" PRIMARY KEY ("id_genero_evento");

-- ----------------------------
-- Primary Key structure for table historial_visita
-- ----------------------------
ALTER TABLE "public"."historial_visita" ADD CONSTRAINT "historial_asistencia_pkey" PRIMARY KEY ("id_visita");

-- ----------------------------
-- Primary Key structure for table tipo_establecimiento
-- ----------------------------
ALTER TABLE "public"."tipo_establecimiento" ADD CONSTRAINT "tipo_establecimiento_pkey" PRIMARY KEY ("id_tipo");

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_pkey" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Primary Key structure for table valoracion_establecimiento
-- ----------------------------
ALTER TABLE "public"."valoracion_establecimiento" ADD CONSTRAINT "valoracion_establecimiento_pkey" PRIMARY KEY ("id_valoracion_establecimiento");

-- ----------------------------
-- Primary Key structure for table valoracion_evento
-- ----------------------------
ALTER TABLE "public"."valoracion_evento" ADD CONSTRAINT "valoracion_evento_pkey" PRIMARY KEY ("id_valoracion_evento");

-- ----------------------------
-- Foreign Keys structure for table asistencia_evento
-- ----------------------------
ALTER TABLE "public"."asistencia_evento" ADD CONSTRAINT "asistente_fk" FOREIGN KEY ("id_usuario_fk") REFERENCES "public"."usuario" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."asistencia_evento" ADD CONSTRAINT "evento_asistido_fk" FOREIGN KEY ("id_evento_asistido_fk") REFERENCES "public"."evento" ("id_evento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table consumo
-- ----------------------------
ALTER TABLE "public"."consumo" ADD CONSTRAINT "establecimiento_fk" FOREIGN KEY ("id_establecimiento_fk") REFERENCES "public"."establecimiento" ("id_establecimiento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table entrada
-- ----------------------------
ALTER TABLE "public"."entrada" ADD CONSTRAINT "evento_fk" FOREIGN KEY ("id_evento_fk") REFERENCES "public"."evento" ("id_evento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table establecimiento
-- ----------------------------
ALTER TABLE "public"."establecimiento" ADD CONSTRAINT "tipo_establecimiento_fk" FOREIGN KEY ("tipo_fk") REFERENCES "public"."tipo_establecimiento" ("id_tipo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table etiquetas_establecimiento
-- ----------------------------
ALTER TABLE "public"."etiquetas_establecimiento" ADD CONSTRAINT "establecimiento_fk" FOREIGN KEY ("id_establecimiento_fk") REFERENCES "public"."establecimiento" ("id_establecimiento") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."etiquetas_establecimiento" ADD CONSTRAINT "etiqueta_fk" FOREIGN KEY ("id_etiqueta_fk") REFERENCES "public"."etiquetas" ("id_etiqueta") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table evento
-- ----------------------------
ALTER TABLE "public"."evento" ADD CONSTRAINT "evento_genero_fk" FOREIGN KEY ("id_genero_fk") REFERENCES "public"."genero_evento" ("id_genero_evento") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."evento" ADD CONSTRAINT "evento_id_establecimiento_fkey" FOREIGN KEY ("id_establecimiento") REFERENCES "public"."establecimiento" ("id_establecimiento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table historial_visita
-- ----------------------------
ALTER TABLE "public"."historial_visita" ADD CONSTRAINT "establecimiento_visitado_fk" FOREIGN KEY ("id_establecimiento_visitado_fk") REFERENCES "public"."establecimiento" ("id_establecimiento") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."historial_visita" ADD CONSTRAINT "usuario_visita_fk" FOREIGN KEY ("id_usuario_fk") REFERENCES "public"."usuario" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table valoracion_establecimiento
-- ----------------------------
ALTER TABLE "public"."valoracion_establecimiento" ADD CONSTRAINT "visita_fk" FOREIGN KEY ("id_visita_fk") REFERENCES "public"."historial_visita" ("id_visita") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table valoracion_evento
-- ----------------------------
ALTER TABLE "public"."valoracion_evento" ADD CONSTRAINT "asistencia_fk" FOREIGN KEY ("id_asistencia_fk") REFERENCES "public"."asistencia_evento" ("id_asistencia_evento") ON DELETE NO ACTION ON UPDATE NO ACTION;
