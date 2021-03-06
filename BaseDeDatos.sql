toc.dat                                                                                             0000600 0004000 0002000 00000052107 14056327522 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       :    *                y            postgres    13.2    13.2 6    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Q           1262    13442    postgres    DATABASE     g   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false         R           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3153                     2615    16501 	   educativo    SCHEMA        CREATE SCHEMA educativo;
    DROP SCHEMA educativo;
                postgres    false         ?            1259    16726    accesos    TABLE     ?   CREATE TABLE educativo.accesos (
    id_accesos integer NOT NULL,
    usuario character varying(20),
    clave character varying(20),
    CONSTRAINT nn_clave CHECK ((clave IS NOT NULL)),
    CONSTRAINT nn_usuario CHECK ((usuario IS NOT NULL))
);
    DROP TABLE educativo.accesos;
    	   educativo         heap    postgres    false    8         ?            1259    16724    accesos_id_accesos_seq    SEQUENCE     ?   CREATE SEQUENCE educativo.accesos_id_accesos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE educativo.accesos_id_accesos_seq;
    	   educativo          postgres    false    8    220         S           0    0    accesos_id_accesos_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE educativo.accesos_id_accesos_seq OWNED BY educativo.accesos.id_accesos;
       	   educativo          postgres    false    219         ?            1259    16954 	   acudiente    TABLE     A  CREATE TABLE educativo.acudiente (
    codigo_acudiente character varying(5) NOT NULL,
    nombre1_acudiente character varying(40),
    nombre2_acudiente character varying(40),
    apellido1_acudiente character varying(40),
    apellido2_acudiente character varying(40),
    telefono_acudiente character varying(10),
    correo_acudiente character varying(50),
    CONSTRAINT nn_apellido1_acudiente CHECK ((apellido1_acudiente IS NOT NULL)),
    CONSTRAINT nn_apellido2_acudiente CHECK ((apellido2_acudiente IS NOT NULL)),
    CONSTRAINT nn_correo_acudiente CHECK ((correo_acudiente IS NOT NULL)),
    CONSTRAINT nn_nombre1_acudiente CHECK ((nombre1_acudiente IS NOT NULL)),
    CONSTRAINT nn_nombre2_acudiente CHECK ((nombre2_acudiente IS NOT NULL)),
    CONSTRAINT nn_telefono_acudiente CHECK ((telefono_acudiente IS NOT NULL))
);
     DROP TABLE educativo.acudiente;
    	   educativo         heap    postgres    false    8         ?            1259    16993    auditoria_titular    TABLE     ?  CREATE TABLE educativo.auditoria_titular (
    nombre_grado character varying(11),
    grupo_grado character varying(1),
    jornada_grado character varying(6),
    codigo_profesor character varying(5),
    fecha_inicio date,
    fecha_fin date,
    CONSTRAINT nn_codigo_profesor CHECK ((codigo_profesor IS NOT NULL)),
    CONSTRAINT nn_fecha_fin CHECK ((fecha_fin IS NOT NULL)),
    CONSTRAINT nn_fecha_inicio CHECK ((fecha_inicio IS NOT NULL)),
    CONSTRAINT nn_grupo_grado CHECK ((grupo_grado IS NOT NULL)),
    CONSTRAINT nn_jornada_grado CHECK ((jornada_grado IS NOT NULL)),
    CONSTRAINT nn_nombre_grado CHECK ((nombre_grado IS NOT NULL))
);
 (   DROP TABLE educativo.auditoria_titular;
    	   educativo         heap    postgres    false    8         ?            1259    16544    departamento    TABLE     ?   CREATE TABLE educativo.departamento (
    cod_departamento character varying(3) NOT NULL,
    nombre_departamento character varying(25),
    CONSTRAINT nn_nombre_departamento CHECK ((nombre_departamento IS NOT NULL))
);
 #   DROP TABLE educativo.departamento;
    	   educativo         heap    postgres    false    8         ?            1259    16965 
   estudiante    TABLE       CREATE TABLE educativo.estudiante (
    codigo_estudiante character varying(5) NOT NULL,
    nombre1_estudiante character varying(40),
    nombre2_estudiante character varying(40),
    apellido1_estudiante character varying(40),
    apellido2_estudiante character varying(40),
    sexo_estudiante character varying(1),
    documento_identidad_estudiante character varying(10),
    fecha_nacimiento_estudiante date,
    codigo_acudiente character varying(5),
    CONSTRAINT apellido1_estudiante CHECK ((apellido1_estudiante IS NOT NULL)),
    CONSTRAINT apellido2_estudiante CHECK ((apellido2_estudiante IS NOT NULL)),
    CONSTRAINT documento_identidad_estudiante CHECK ((documento_identidad_estudiante IS NOT NULL)),
    CONSTRAINT fecha_nacimiento_estudiante CHECK ((fecha_nacimiento_estudiante IS NOT NULL)),
    CONSTRAINT nombre1_estudiante CHECK ((nombre1_estudiante IS NOT NULL)),
    CONSTRAINT nombre2_estudiante CHECK ((nombre2_estudiante IS NOT NULL)),
    CONSTRAINT sexo_estudiante CHECK ((sexo_estudiante IS NOT NULL))
);
 !   DROP TABLE educativo.estudiante;
    	   educativo         heap    postgres    false    8         ?            1259    16634    grado    TABLE     v  CREATE TABLE educativo.grado (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    matriculados integer,
    cupo integer,
    cod_sede character varying(3),
    CONSTRAINT nn_cupo CHECK ((cupo IS NOT NULL)),
    CONSTRAINT nn_matriculado CHECK ((matriculados IS NOT NULL))
);
    DROP TABLE educativo.grado;
    	   educativo         heap    postgres    false    8         ?            1259    16594    institucion_educativa    TABLE     ?  CREATE TABLE educativo.institucion_educativa (
    id_institucion_educativa character varying(10) NOT NULL,
    nombre_ins character varying(100),
    sector_ins character varying(7),
    cod_departamento character varying(3),
    cod_municipio character varying(5),
    CONSTRAINT nn_nombre_ins CHECK ((nombre_ins IS NOT NULL)),
    CONSTRAINT nn_sector_ins CHECK ((sector_ins IS NOT NULL))
);
 ,   DROP TABLE educativo.institucion_educativa;
    	   educativo         heap    postgres    false    8         ?            1259    16700 	   matricula    TABLE     N  CREATE TABLE educativo.matricula (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    codigo_estudiante character varying(5) NOT NULL,
    fecha_matricula date,
    CONSTRAINT nn_fecha_matricula CHECK ((fecha_matricula IS NOT NULL))
);
     DROP TABLE educativo.matricula;
    	   educativo         heap    postgres    false    8         ?            1259    16571 	   municipio    TABLE       CREATE TABLE educativo.municipio (
    cod_departamento character varying(3) NOT NULL,
    cod_municipio character varying(5) NOT NULL,
    nombre_municipio character varying(25),
    CONSTRAINT nn_nombre_municipio CHECK ((nombre_municipio IS NOT NULL))
);
     DROP TABLE educativo.municipio;
    	   educativo         heap    postgres    false    8         ?            1259    16887    profesor    TABLE     -  CREATE TABLE educativo.profesor (
    codigo_profesor character varying(5) NOT NULL,
    nombre1_profesor character varying(40),
    nombre2_profesor character varying(40),
    apellido1_profesor character varying(40),
    apellido2_profesor character varying(40),
    telefono_profesor character varying(10),
    correo_profesor character varying(50),
    CONSTRAINT nn_apellido1_profesor CHECK ((apellido1_profesor IS NOT NULL)),
    CONSTRAINT nn_apellido2_profesor CHECK ((apellido2_profesor IS NOT NULL)),
    CONSTRAINT nn_correo_profesor CHECK ((correo_profesor IS NOT NULL)),
    CONSTRAINT nn_nombre1_profesor CHECK ((nombre1_profesor IS NOT NULL)),
    CONSTRAINT nn_nombre2_profesor CHECK ((nombre2_profesor IS NOT NULL)),
    CONSTRAINT nn_telefono_profesor CHECK ((telefono_profesor IS NOT NULL))
);
    DROP TABLE educativo.profesor;
    	   educativo         heap    postgres    false    8         ?            1259    16606    sede    TABLE     0  CREATE TABLE educativo.sede (
    cod_sede character varying(3) NOT NULL,
    nombre_sede character varying(100),
    direccion_sede character varying(50),
    telefono_sede character varying(10),
    correo_sede character varying(50),
    id_institucion_educativa character varying(10),
    CONSTRAINT nn_correo_sede CHECK ((correo_sede IS NOT NULL)),
    CONSTRAINT nn_direccion_sede CHECK ((direccion_sede IS NOT NULL)),
    CONSTRAINT nn_nombre_sede CHECK ((nombre_sede IS NOT NULL)),
    CONSTRAINT nn_telefono_sede CHECK ((telefono_sede IS NOT NULL))
);
    DROP TABLE educativo.sede;
    	   educativo         heap    postgres    false    8         ?            1259    16898    titular    TABLE     ?  CREATE TABLE educativo.titular (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    codigo_profesor character varying(5) NOT NULL,
    fecha_inicio date,
    fecha_fin date,
    CONSTRAINT nn_fecha_fin CHECK ((fecha_fin IS NOT NULL)),
    CONSTRAINT nn_fecha_inicio CHECK ((fecha_inicio IS NOT NULL))
);
    DROP TABLE educativo.titular;
    	   educativo         heap    postgres    false    8         ?           2604    16729    accesos id_accesos    DEFAULT     ~   ALTER TABLE ONLY educativo.accesos ALTER COLUMN id_accesos SET DEFAULT nextval('educativo.accesos_id_accesos_seq'::regclass);
 D   ALTER TABLE educativo.accesos ALTER COLUMN id_accesos DROP DEFAULT;
    	   educativo          postgres    false    220    219    220         F          0    16726    accesos 
   TABLE DATA           @   COPY educativo.accesos (id_accesos, usuario, clave) FROM stdin;
 	   educativo          postgres    false    220       3142.dat I          0    16954 	   acudiente 
   TABLE DATA           ?   COPY educativo.acudiente (codigo_acudiente, nombre1_acudiente, nombre2_acudiente, apellido1_acudiente, apellido2_acudiente, telefono_acudiente, correo_acudiente) FROM stdin;
 	   educativo          postgres    false    223       3145.dat K          0    16993    auditoria_titular 
   TABLE DATA           ?   COPY educativo.auditoria_titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM stdin;
 	   educativo          postgres    false    225       3147.dat ?          0    16544    departamento 
   TABLE DATA           P   COPY educativo.departamento (cod_departamento, nombre_departamento) FROM stdin;
 	   educativo          postgres    false    213       3135.dat J          0    16965 
   estudiante 
   TABLE DATA           ?   COPY educativo.estudiante (codigo_estudiante, nombre1_estudiante, nombre2_estudiante, apellido1_estudiante, apellido2_estudiante, sexo_estudiante, documento_identidad_estudiante, fecha_nacimiento_estudiante, codigo_acudiente) FROM stdin;
 	   educativo          postgres    false    224       3146.dat C          0    16634    grado 
   TABLE DATA           j   COPY educativo.grado (nombre_grado, grupo_grado, jornada_grado, matriculados, cupo, cod_sede) FROM stdin;
 	   educativo          postgres    false    217       3139.dat A          0    16594    institucion_educativa 
   TABLE DATA           ?   COPY educativo.institucion_educativa (id_institucion_educativa, nombre_ins, sector_ins, cod_departamento, cod_municipio) FROM stdin;
 	   educativo          postgres    false    215       3137.dat D          0    16700 	   matricula 
   TABLE DATA           t   COPY educativo.matricula (nombre_grado, grupo_grado, jornada_grado, codigo_estudiante, fecha_matricula) FROM stdin;
 	   educativo          postgres    false    218       3140.dat @          0    16571 	   municipio 
   TABLE DATA           Y   COPY educativo.municipio (cod_departamento, cod_municipio, nombre_municipio) FROM stdin;
 	   educativo          postgres    false    214       3136.dat G          0    16887    profesor 
   TABLE DATA           ?   COPY educativo.profesor (codigo_profesor, nombre1_profesor, nombre2_profesor, apellido1_profesor, apellido2_profesor, telefono_profesor, correo_profesor) FROM stdin;
 	   educativo          postgres    false    221       3143.dat B          0    16606    sede 
   TABLE DATA           ~   COPY educativo.sede (cod_sede, nombre_sede, direccion_sede, telefono_sede, correo_sede, id_institucion_educativa) FROM stdin;
 	   educativo          postgres    false    216       3138.dat H          0    16898    titular 
   TABLE DATA           x   COPY educativo.titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM stdin;
 	   educativo          postgres    false    222       3144.dat T           0    0    accesos_id_accesos_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('educativo.accesos_id_accesos_seq', 1, true);
       	   educativo          postgres    false    219         ?           2606    16733    accesos pk_accesos 
   CONSTRAINT     [   ALTER TABLE ONLY educativo.accesos
    ADD CONSTRAINT pk_accesos PRIMARY KEY (id_accesos);
 ?   ALTER TABLE ONLY educativo.accesos DROP CONSTRAINT pk_accesos;
    	   educativo            postgres    false    220         ?           2606    16964    acudiente pk_acudiente 
   CONSTRAINT     e   ALTER TABLE ONLY educativo.acudiente
    ADD CONSTRAINT pk_acudiente PRIMARY KEY (codigo_acudiente);
 C   ALTER TABLE ONLY educativo.acudiente DROP CONSTRAINT pk_acudiente;
    	   educativo            postgres    false    223         ?           2606    16549     departamento pk_cod_departamento 
   CONSTRAINT     o   ALTER TABLE ONLY educativo.departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);
 M   ALTER TABLE ONLY educativo.departamento DROP CONSTRAINT pk_cod_departamento;
    	   educativo            postgres    false    213         ?           2606    16976    estudiante pk_estudiante 
   CONSTRAINT     h   ALTER TABLE ONLY educativo.estudiante
    ADD CONSTRAINT pk_estudiante PRIMARY KEY (codigo_estudiante);
 E   ALTER TABLE ONLY educativo.estudiante DROP CONSTRAINT pk_estudiante;
    	   educativo            postgres    false    224         ?           2606    16640    grado pk_grado 
   CONSTRAINT     u   ALTER TABLE ONLY educativo.grado
    ADD CONSTRAINT pk_grado PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado);
 ;   ALTER TABLE ONLY educativo.grado DROP CONSTRAINT pk_grado;
    	   educativo            postgres    false    217    217    217         ?           2606    16600 .   institucion_educativa pk_institucion_educativa 
   CONSTRAINT     ?   ALTER TABLE ONLY educativo.institucion_educativa
    ADD CONSTRAINT pk_institucion_educativa PRIMARY KEY (id_institucion_educativa);
 [   ALTER TABLE ONLY educativo.institucion_educativa DROP CONSTRAINT pk_institucion_educativa;
    	   educativo            postgres    false    215         ?           2606    16705    matricula pk_matricula 
   CONSTRAINT     ?   ALTER TABLE ONLY educativo.matricula
    ADD CONSTRAINT pk_matricula PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado, codigo_estudiante);
 C   ALTER TABLE ONLY educativo.matricula DROP CONSTRAINT pk_matricula;
    	   educativo            postgres    false    218    218    218    218         ?           2606    16576    municipio pk_municipio 
   CONSTRAINT     t   ALTER TABLE ONLY educativo.municipio
    ADD CONSTRAINT pk_municipio PRIMARY KEY (cod_departamento, cod_municipio);
 C   ALTER TABLE ONLY educativo.municipio DROP CONSTRAINT pk_municipio;
    	   educativo            postgres    false    214    214         ?           2606    16897    profesor pk_profesor 
   CONSTRAINT     b   ALTER TABLE ONLY educativo.profesor
    ADD CONSTRAINT pk_profesor PRIMARY KEY (codigo_profesor);
 A   ALTER TABLE ONLY educativo.profesor DROP CONSTRAINT pk_profesor;
    	   educativo            postgres    false    221         ?           2606    16614    sede pk_sede 
   CONSTRAINT     S   ALTER TABLE ONLY educativo.sede
    ADD CONSTRAINT pk_sede PRIMARY KEY (cod_sede);
 9   ALTER TABLE ONLY educativo.sede DROP CONSTRAINT pk_sede;
    	   educativo            postgres    false    216         ?           2606    16904    titular pk_titular 
   CONSTRAINT     ?   ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT pk_titular PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado, codigo_profesor);
 ?   ALTER TABLE ONLY educativo.titular DROP CONSTRAINT pk_titular;
    	   educativo            postgres    false    222    222    222    222         ?           2620    17006    titular tr_update    TRIGGER     t   CREATE TRIGGER tr_update BEFORE UPDATE ON educativo.titular FOR EACH ROW EXECUTE FUNCTION public.aud_titular_tgg();
 -   DROP TRIGGER tr_update ON educativo.titular;
    	   educativo          postgres    false    222         ?           2606    16977 "   estudiante fk_acudiente_estudiante    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.estudiante
    ADD CONSTRAINT fk_acudiente_estudiante FOREIGN KEY (codigo_acudiente) REFERENCES educativo.acudiente(codigo_acudiente);
 O   ALTER TABLE ONLY educativo.estudiante DROP CONSTRAINT fk_acudiente_estudiante;
    	   educativo          postgres    false    2993    224    223         ?           2606    16641    grado fk_cod_sede_grado    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.grado
    ADD CONSTRAINT fk_cod_sede_grado FOREIGN KEY (cod_sede) REFERENCES educativo.sede(cod_sede);
 D   ALTER TABLE ONLY educativo.grado DROP CONSTRAINT fk_cod_sede_grado;
    	   educativo          postgres    false    2981    217    216         ?           2606    16577 #   municipio fk_departamento_municipio    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.municipio
    ADD CONSTRAINT fk_departamento_municipio FOREIGN KEY (cod_departamento) REFERENCES educativo.departamento(cod_departamento);
 P   ALTER TABLE ONLY educativo.municipio DROP CONSTRAINT fk_departamento_municipio;
    	   educativo          postgres    false    213    214    2975         ?           2606    16706    matricula fk_grado_matricula    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.matricula
    ADD CONSTRAINT fk_grado_matricula FOREIGN KEY (nombre_grado, grupo_grado, jornada_grado) REFERENCES educativo.grado(nombre_grado, grupo_grado, jornada_grado);
 I   ALTER TABLE ONLY educativo.matricula DROP CONSTRAINT fk_grado_matricula;
    	   educativo          postgres    false    217    218    218    2983    217    217    218         ?           2606    16905    titular fk_grado_titular    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT fk_grado_titular FOREIGN KEY (nombre_grado, grupo_grado, jornada_grado) REFERENCES educativo.grado(nombre_grado, grupo_grado, jornada_grado);
 E   ALTER TABLE ONLY educativo.titular DROP CONSTRAINT fk_grado_titular;
    	   educativo          postgres    false    217    2983    217    217    222    222    222         ?           2606    16615 "   sede fk_institucion_educativa_sede    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.sede
    ADD CONSTRAINT fk_institucion_educativa_sede FOREIGN KEY (id_institucion_educativa) REFERENCES educativo.institucion_educativa(id_institucion_educativa);
 O   ALTER TABLE ONLY educativo.sede DROP CONSTRAINT fk_institucion_educativa_sede;
    	   educativo          postgres    false    215    2979    216         ?           2606    16601 8   institucion_educativa fk_municipio_institucion_eductaiva    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.institucion_educativa
    ADD CONSTRAINT fk_municipio_institucion_eductaiva FOREIGN KEY (cod_departamento, cod_municipio) REFERENCES educativo.municipio(cod_departamento, cod_municipio);
 e   ALTER TABLE ONLY educativo.institucion_educativa DROP CONSTRAINT fk_municipio_institucion_eductaiva;
    	   educativo          postgres    false    215    2977    214    214    215         ?           2606    16910    titular fk_profesor_titular    FK CONSTRAINT     ?   ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT fk_profesor_titular FOREIGN KEY (codigo_profesor) REFERENCES educativo.profesor(codigo_profesor);
 H   ALTER TABLE ONLY educativo.titular DROP CONSTRAINT fk_profesor_titular;
    	   educativo          postgres    false    2989    222    221                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3142.dat                                                                                            0000600 0004000 0002000 00000000026 14056327522 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	william	w12345
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3145.dat                                                                                            0000600 0004000 0002000 00000000501 14056327522 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22101	William	Joseph	Forero	Ortega	3132564656	Wjforeroo@gmail.com
22102	Javier	Eduardo	Sanchez	Ortega	3002564699	JaviE@gmail.com
22103	Santiago		Sanchez	Ortega	3112677609	Sasao@gmail.com
22104	Daniela	Cristina	Forero	Ortega	3132561234	Dacrifor@gmail.com
22105	Yohan	David	Aldana	Forero	3002564699	Yoaldana@gmail.com
\.


                                                                                                                                                                                               3147.dat                                                                                            0000600 0004000 0002000 00000000207 14056327522 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Once	1	Mañana	20211	2019-01-01	2021-01-01
Septimo	3	Tarde	21212	2019-01-01	2021-01-01
Once	2	Mañana	20212	2019-01-01	2021-01-01
\.


                                                                                                                                                                                                                                                                                                                                                                                         3135.dat                                                                                            0000600 0004000 0002000 00000000033 14056327522 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        54	Norte de santander
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3146.dat                                                                                            0000600 0004000 0002000 00000000470 14056327522 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        80101	Thomas		Andrade	Bachue	M	1011537281	2007-12-01	22101
80112	Yisneidy		Mora	Montejo	F	1022547280	2005-10-12	22102
80123	Andres	David	Torres	Espitia	M	1001737631	2009-03-25	22103
80134	Angie	Vanessa	Melo	Rincon	F	1021555272	2009-08-11	22104
80145	Alisson	Camila	Neme	Garcia	F	1034537974	2007-01-04	22105
\.


                                                                                                                                                                                                        3139.dat                                                                                            0000600 0004000 0002000 00000000606 14056327522 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Once	1	Mañana	24	28	001
Once	2	Mañana	20	28	001
Noveno	2	Mañana	27	30	001
Noveno	3	Mañana	27	30	001
Noveno	1	Tarde	21	26	001
Noveno	2	Tarde	22	26	001
Noveno	3	Tarde	22	26	001
Octavo	3	Tarde	25	26	001
Sexto	3	Mañana	27	30	001
Sexto	1	Tarde	29	30	001
Decimo	1	Tarde	25	28	001
Decimo	2	Tarde	28	30	001
Decimo	2	Mañana	28	30	001
Septimo	3	Tarde	22	26	001
Septimo	2	Mañana	30	35	001
\.


                                                                                                                          3137.dat                                                                                            0000600 0004000 0002000 00000000053 14056327522 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1080010046	Jose Eusebio Caro	1	54	498
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3140.dat                                                                                            0000600 0004000 0002000 00000000252 14056327522 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Noveno	1	Tarde	80101	2021-06-03
Septimo	2	Mañana	80112	2021-06-03
Sexto	3	Mañana	80123	2021-06-03
Octavo	3	Tarde	80134	2021-06-03
Septimo	3	Tarde	80145	2021-06-03
\.


                                                                                                                                                                                                                                                                                                                                                      3136.dat                                                                                            0000600 0004000 0002000 00000000023 14056327522 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        54	498	Ocaña
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3143.dat                                                                                            0000600 0004000 0002000 00000001744 14056327522 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20211	Andres	Camilo	Navarro	Picon	3132578656	AcamiloNavP@gmail.com
20212	Juan	David	Castro	Angarita	3183538666	JuanDCAA@gmail.com
20213	Vanessa	Maria	Lara	Zapata	3111268896	Vamalaza@outlook.com
20214	Ana	Maria	Pabon	San juan	3147148871	Anama556@gmail.com.com
20215	Misley	Dayana	Sanchez	Vergel	3001149844	Savergel1@gmail.com.com
20216	Keiner	Gabriel	Sanchez	Vergel	3012115655	Kgasanve@gmail.com.com
20217	Valeria	Cristina	Florez	Peña	3174564565	ValeriaCFP@gmail.com
20218	Pedro	Antonio	Lazo	Ramirez	3006561111	Pchaconla123@gmail.com
20219	Luisa	Fernanda	Ortiz	Ortiz	3271577590	Luisa00Fe@gmail.com
20210	Sergio	Andres	Clavijo	Castro	3109876543	SACC26@gmail.com
21211	Yan	Marcos	Ortiz	Martinez	3184535768	MarcosYan99@gmail.com
21213	Jose	Maria	vergel	llain	3007235124	Josemavell@gmail.com
21215	Anyul	Torcoroma	Felizzola	Gomez	3104990700	Atorfego@gmail.com
21212	luz	Marina	Becerra	barrera	3115670192	Luzmabb@gmail.com
21214	Trinidad	Del Carmen	Acosta	Quintero	3015220019	QuintriDC@gmail.com
\.


                            3138.dat                                                                                            0000600 0004000 0002000 00000000240 14056327522 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        001	Principal	Carrera 14 #83	5695164	colcaro100@hotmail.com	1080010046
002	Adolfo Milanes	Calle 10 Cra 6, Cl. 10	5695164	colcaro100@hotmail.com	1080010046
\.


                                                                                                                                                                                                                                                                                                                                                                3144.dat                                                                                            0000600 0004000 0002000 00000001224 14056327522 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Decimo	2	Mañana	20213	2019-01-01	2021-01-01
Decimo	1	Tarde	20214	2019-01-01	2021-01-01
Decimo	2	Tarde	20215	2019-01-01	2021-01-01
Noveno	2	Mañana	20216	2019-01-01	2021-01-01
Noveno	3	Mañana	20217	2019-01-01	2021-01-01
Noveno	1	Tarde	20218	2019-01-01	2021-01-01
Noveno	2	Tarde	20219	2019-01-01	2021-01-01
Noveno	3	Tarde	20210	2019-01-01	2021-01-01
Septimo	2	Mañana	21211	2019-01-01	2021-01-01
Octavo	3	Tarde	21213	2019-01-01	2021-01-01
Sexto	3	Mañana	21214	2019-01-01	2021-01-01
Sexto	1	Tarde	21215	2019-01-01	2021-01-01
Once	1	Mañana	20211	2019-01-01	2019-12-01
Septimo	3	Tarde	21212	2019-01-01	2019-11-11
Once	2	Mañana	20212	2019-01-01	2019-06-01
\.


                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000045575 14056327522 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: educativo; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA educativo;


ALTER SCHEMA educativo OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accesos; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.accesos (
    id_accesos integer NOT NULL,
    usuario character varying(20),
    clave character varying(20),
    CONSTRAINT nn_clave CHECK ((clave IS NOT NULL)),
    CONSTRAINT nn_usuario CHECK ((usuario IS NOT NULL))
);


ALTER TABLE educativo.accesos OWNER TO postgres;

--
-- Name: accesos_id_accesos_seq; Type: SEQUENCE; Schema: educativo; Owner: postgres
--

CREATE SEQUENCE educativo.accesos_id_accesos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE educativo.accesos_id_accesos_seq OWNER TO postgres;

--
-- Name: accesos_id_accesos_seq; Type: SEQUENCE OWNED BY; Schema: educativo; Owner: postgres
--

ALTER SEQUENCE educativo.accesos_id_accesos_seq OWNED BY educativo.accesos.id_accesos;


--
-- Name: acudiente; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.acudiente (
    codigo_acudiente character varying(5) NOT NULL,
    nombre1_acudiente character varying(40),
    nombre2_acudiente character varying(40),
    apellido1_acudiente character varying(40),
    apellido2_acudiente character varying(40),
    telefono_acudiente character varying(10),
    correo_acudiente character varying(50),
    CONSTRAINT nn_apellido1_acudiente CHECK ((apellido1_acudiente IS NOT NULL)),
    CONSTRAINT nn_apellido2_acudiente CHECK ((apellido2_acudiente IS NOT NULL)),
    CONSTRAINT nn_correo_acudiente CHECK ((correo_acudiente IS NOT NULL)),
    CONSTRAINT nn_nombre1_acudiente CHECK ((nombre1_acudiente IS NOT NULL)),
    CONSTRAINT nn_nombre2_acudiente CHECK ((nombre2_acudiente IS NOT NULL)),
    CONSTRAINT nn_telefono_acudiente CHECK ((telefono_acudiente IS NOT NULL))
);


ALTER TABLE educativo.acudiente OWNER TO postgres;

--
-- Name: auditoria_titular; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.auditoria_titular (
    nombre_grado character varying(11),
    grupo_grado character varying(1),
    jornada_grado character varying(6),
    codigo_profesor character varying(5),
    fecha_inicio date,
    fecha_fin date,
    CONSTRAINT nn_codigo_profesor CHECK ((codigo_profesor IS NOT NULL)),
    CONSTRAINT nn_fecha_fin CHECK ((fecha_fin IS NOT NULL)),
    CONSTRAINT nn_fecha_inicio CHECK ((fecha_inicio IS NOT NULL)),
    CONSTRAINT nn_grupo_grado CHECK ((grupo_grado IS NOT NULL)),
    CONSTRAINT nn_jornada_grado CHECK ((jornada_grado IS NOT NULL)),
    CONSTRAINT nn_nombre_grado CHECK ((nombre_grado IS NOT NULL))
);


ALTER TABLE educativo.auditoria_titular OWNER TO postgres;

--
-- Name: departamento; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.departamento (
    cod_departamento character varying(3) NOT NULL,
    nombre_departamento character varying(25),
    CONSTRAINT nn_nombre_departamento CHECK ((nombre_departamento IS NOT NULL))
);


ALTER TABLE educativo.departamento OWNER TO postgres;

--
-- Name: estudiante; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.estudiante (
    codigo_estudiante character varying(5) NOT NULL,
    nombre1_estudiante character varying(40),
    nombre2_estudiante character varying(40),
    apellido1_estudiante character varying(40),
    apellido2_estudiante character varying(40),
    sexo_estudiante character varying(1),
    documento_identidad_estudiante character varying(10),
    fecha_nacimiento_estudiante date,
    codigo_acudiente character varying(5),
    CONSTRAINT apellido1_estudiante CHECK ((apellido1_estudiante IS NOT NULL)),
    CONSTRAINT apellido2_estudiante CHECK ((apellido2_estudiante IS NOT NULL)),
    CONSTRAINT documento_identidad_estudiante CHECK ((documento_identidad_estudiante IS NOT NULL)),
    CONSTRAINT fecha_nacimiento_estudiante CHECK ((fecha_nacimiento_estudiante IS NOT NULL)),
    CONSTRAINT nombre1_estudiante CHECK ((nombre1_estudiante IS NOT NULL)),
    CONSTRAINT nombre2_estudiante CHECK ((nombre2_estudiante IS NOT NULL)),
    CONSTRAINT sexo_estudiante CHECK ((sexo_estudiante IS NOT NULL))
);


ALTER TABLE educativo.estudiante OWNER TO postgres;

--
-- Name: grado; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.grado (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    matriculados integer,
    cupo integer,
    cod_sede character varying(3),
    CONSTRAINT nn_cupo CHECK ((cupo IS NOT NULL)),
    CONSTRAINT nn_matriculado CHECK ((matriculados IS NOT NULL))
);


ALTER TABLE educativo.grado OWNER TO postgres;

--
-- Name: institucion_educativa; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.institucion_educativa (
    id_institucion_educativa character varying(10) NOT NULL,
    nombre_ins character varying(100),
    sector_ins character varying(7),
    cod_departamento character varying(3),
    cod_municipio character varying(5),
    CONSTRAINT nn_nombre_ins CHECK ((nombre_ins IS NOT NULL)),
    CONSTRAINT nn_sector_ins CHECK ((sector_ins IS NOT NULL))
);


ALTER TABLE educativo.institucion_educativa OWNER TO postgres;

--
-- Name: matricula; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.matricula (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    codigo_estudiante character varying(5) NOT NULL,
    fecha_matricula date,
    CONSTRAINT nn_fecha_matricula CHECK ((fecha_matricula IS NOT NULL))
);


ALTER TABLE educativo.matricula OWNER TO postgres;

--
-- Name: municipio; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.municipio (
    cod_departamento character varying(3) NOT NULL,
    cod_municipio character varying(5) NOT NULL,
    nombre_municipio character varying(25),
    CONSTRAINT nn_nombre_municipio CHECK ((nombre_municipio IS NOT NULL))
);


ALTER TABLE educativo.municipio OWNER TO postgres;

--
-- Name: profesor; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.profesor (
    codigo_profesor character varying(5) NOT NULL,
    nombre1_profesor character varying(40),
    nombre2_profesor character varying(40),
    apellido1_profesor character varying(40),
    apellido2_profesor character varying(40),
    telefono_profesor character varying(10),
    correo_profesor character varying(50),
    CONSTRAINT nn_apellido1_profesor CHECK ((apellido1_profesor IS NOT NULL)),
    CONSTRAINT nn_apellido2_profesor CHECK ((apellido2_profesor IS NOT NULL)),
    CONSTRAINT nn_correo_profesor CHECK ((correo_profesor IS NOT NULL)),
    CONSTRAINT nn_nombre1_profesor CHECK ((nombre1_profesor IS NOT NULL)),
    CONSTRAINT nn_nombre2_profesor CHECK ((nombre2_profesor IS NOT NULL)),
    CONSTRAINT nn_telefono_profesor CHECK ((telefono_profesor IS NOT NULL))
);


ALTER TABLE educativo.profesor OWNER TO postgres;

--
-- Name: sede; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.sede (
    cod_sede character varying(3) NOT NULL,
    nombre_sede character varying(100),
    direccion_sede character varying(50),
    telefono_sede character varying(10),
    correo_sede character varying(50),
    id_institucion_educativa character varying(10),
    CONSTRAINT nn_correo_sede CHECK ((correo_sede IS NOT NULL)),
    CONSTRAINT nn_direccion_sede CHECK ((direccion_sede IS NOT NULL)),
    CONSTRAINT nn_nombre_sede CHECK ((nombre_sede IS NOT NULL)),
    CONSTRAINT nn_telefono_sede CHECK ((telefono_sede IS NOT NULL))
);


ALTER TABLE educativo.sede OWNER TO postgres;

--
-- Name: titular; Type: TABLE; Schema: educativo; Owner: postgres
--

CREATE TABLE educativo.titular (
    nombre_grado character varying(11) NOT NULL,
    grupo_grado character varying(1) NOT NULL,
    jornada_grado character varying(6) NOT NULL,
    codigo_profesor character varying(5) NOT NULL,
    fecha_inicio date,
    fecha_fin date,
    CONSTRAINT nn_fecha_fin CHECK ((fecha_fin IS NOT NULL)),
    CONSTRAINT nn_fecha_inicio CHECK ((fecha_inicio IS NOT NULL))
);


ALTER TABLE educativo.titular OWNER TO postgres;

--
-- Name: accesos id_accesos; Type: DEFAULT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.accesos ALTER COLUMN id_accesos SET DEFAULT nextval('educativo.accesos_id_accesos_seq'::regclass);


--
-- Data for Name: accesos; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.accesos (id_accesos, usuario, clave) FROM stdin;
\.
COPY educativo.accesos (id_accesos, usuario, clave) FROM '$$PATH$$/3142.dat';

--
-- Data for Name: acudiente; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.acudiente (codigo_acudiente, nombre1_acudiente, nombre2_acudiente, apellido1_acudiente, apellido2_acudiente, telefono_acudiente, correo_acudiente) FROM stdin;
\.
COPY educativo.acudiente (codigo_acudiente, nombre1_acudiente, nombre2_acudiente, apellido1_acudiente, apellido2_acudiente, telefono_acudiente, correo_acudiente) FROM '$$PATH$$/3145.dat';

--
-- Data for Name: auditoria_titular; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.auditoria_titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM stdin;
\.
COPY educativo.auditoria_titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM '$$PATH$$/3147.dat';

--
-- Data for Name: departamento; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.departamento (cod_departamento, nombre_departamento) FROM stdin;
\.
COPY educativo.departamento (cod_departamento, nombre_departamento) FROM '$$PATH$$/3135.dat';

--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.estudiante (codigo_estudiante, nombre1_estudiante, nombre2_estudiante, apellido1_estudiante, apellido2_estudiante, sexo_estudiante, documento_identidad_estudiante, fecha_nacimiento_estudiante, codigo_acudiente) FROM stdin;
\.
COPY educativo.estudiante (codigo_estudiante, nombre1_estudiante, nombre2_estudiante, apellido1_estudiante, apellido2_estudiante, sexo_estudiante, documento_identidad_estudiante, fecha_nacimiento_estudiante, codigo_acudiente) FROM '$$PATH$$/3146.dat';

--
-- Data for Name: grado; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.grado (nombre_grado, grupo_grado, jornada_grado, matriculados, cupo, cod_sede) FROM stdin;
\.
COPY educativo.grado (nombre_grado, grupo_grado, jornada_grado, matriculados, cupo, cod_sede) FROM '$$PATH$$/3139.dat';

--
-- Data for Name: institucion_educativa; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.institucion_educativa (id_institucion_educativa, nombre_ins, sector_ins, cod_departamento, cod_municipio) FROM stdin;
\.
COPY educativo.institucion_educativa (id_institucion_educativa, nombre_ins, sector_ins, cod_departamento, cod_municipio) FROM '$$PATH$$/3137.dat';

--
-- Data for Name: matricula; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.matricula (nombre_grado, grupo_grado, jornada_grado, codigo_estudiante, fecha_matricula) FROM stdin;
\.
COPY educativo.matricula (nombre_grado, grupo_grado, jornada_grado, codigo_estudiante, fecha_matricula) FROM '$$PATH$$/3140.dat';

--
-- Data for Name: municipio; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.municipio (cod_departamento, cod_municipio, nombre_municipio) FROM stdin;
\.
COPY educativo.municipio (cod_departamento, cod_municipio, nombre_municipio) FROM '$$PATH$$/3136.dat';

--
-- Data for Name: profesor; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.profesor (codigo_profesor, nombre1_profesor, nombre2_profesor, apellido1_profesor, apellido2_profesor, telefono_profesor, correo_profesor) FROM stdin;
\.
COPY educativo.profesor (codigo_profesor, nombre1_profesor, nombre2_profesor, apellido1_profesor, apellido2_profesor, telefono_profesor, correo_profesor) FROM '$$PATH$$/3143.dat';

--
-- Data for Name: sede; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.sede (cod_sede, nombre_sede, direccion_sede, telefono_sede, correo_sede, id_institucion_educativa) FROM stdin;
\.
COPY educativo.sede (cod_sede, nombre_sede, direccion_sede, telefono_sede, correo_sede, id_institucion_educativa) FROM '$$PATH$$/3138.dat';

--
-- Data for Name: titular; Type: TABLE DATA; Schema: educativo; Owner: postgres
--

COPY educativo.titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM stdin;
\.
COPY educativo.titular (nombre_grado, grupo_grado, jornada_grado, codigo_profesor, fecha_inicio, fecha_fin) FROM '$$PATH$$/3144.dat';

--
-- Name: accesos_id_accesos_seq; Type: SEQUENCE SET; Schema: educativo; Owner: postgres
--

SELECT pg_catalog.setval('educativo.accesos_id_accesos_seq', 1, true);


--
-- Name: accesos pk_accesos; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.accesos
    ADD CONSTRAINT pk_accesos PRIMARY KEY (id_accesos);


--
-- Name: acudiente pk_acudiente; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.acudiente
    ADD CONSTRAINT pk_acudiente PRIMARY KEY (codigo_acudiente);


--
-- Name: departamento pk_cod_departamento; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);


--
-- Name: estudiante pk_estudiante; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.estudiante
    ADD CONSTRAINT pk_estudiante PRIMARY KEY (codigo_estudiante);


--
-- Name: grado pk_grado; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.grado
    ADD CONSTRAINT pk_grado PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado);


--
-- Name: institucion_educativa pk_institucion_educativa; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.institucion_educativa
    ADD CONSTRAINT pk_institucion_educativa PRIMARY KEY (id_institucion_educativa);


--
-- Name: matricula pk_matricula; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.matricula
    ADD CONSTRAINT pk_matricula PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado, codigo_estudiante);


--
-- Name: municipio pk_municipio; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.municipio
    ADD CONSTRAINT pk_municipio PRIMARY KEY (cod_departamento, cod_municipio);


--
-- Name: profesor pk_profesor; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.profesor
    ADD CONSTRAINT pk_profesor PRIMARY KEY (codigo_profesor);


--
-- Name: sede pk_sede; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.sede
    ADD CONSTRAINT pk_sede PRIMARY KEY (cod_sede);


--
-- Name: titular pk_titular; Type: CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT pk_titular PRIMARY KEY (nombre_grado, grupo_grado, jornada_grado, codigo_profesor);


--
-- Name: titular tr_update; Type: TRIGGER; Schema: educativo; Owner: postgres
--

CREATE TRIGGER tr_update BEFORE UPDATE ON educativo.titular FOR EACH ROW EXECUTE FUNCTION public.aud_titular_tgg();


--
-- Name: estudiante fk_acudiente_estudiante; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.estudiante
    ADD CONSTRAINT fk_acudiente_estudiante FOREIGN KEY (codigo_acudiente) REFERENCES educativo.acudiente(codigo_acudiente);


--
-- Name: grado fk_cod_sede_grado; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.grado
    ADD CONSTRAINT fk_cod_sede_grado FOREIGN KEY (cod_sede) REFERENCES educativo.sede(cod_sede);


--
-- Name: municipio fk_departamento_municipio; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.municipio
    ADD CONSTRAINT fk_departamento_municipio FOREIGN KEY (cod_departamento) REFERENCES educativo.departamento(cod_departamento);


--
-- Name: matricula fk_grado_matricula; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.matricula
    ADD CONSTRAINT fk_grado_matricula FOREIGN KEY (nombre_grado, grupo_grado, jornada_grado) REFERENCES educativo.grado(nombre_grado, grupo_grado, jornada_grado);


--
-- Name: titular fk_grado_titular; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT fk_grado_titular FOREIGN KEY (nombre_grado, grupo_grado, jornada_grado) REFERENCES educativo.grado(nombre_grado, grupo_grado, jornada_grado);


--
-- Name: sede fk_institucion_educativa_sede; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.sede
    ADD CONSTRAINT fk_institucion_educativa_sede FOREIGN KEY (id_institucion_educativa) REFERENCES educativo.institucion_educativa(id_institucion_educativa);


--
-- Name: institucion_educativa fk_municipio_institucion_eductaiva; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.institucion_educativa
    ADD CONSTRAINT fk_municipio_institucion_eductaiva FOREIGN KEY (cod_departamento, cod_municipio) REFERENCES educativo.municipio(cod_departamento, cod_municipio);


--
-- Name: titular fk_profesor_titular; Type: FK CONSTRAINT; Schema: educativo; Owner: postgres
--

ALTER TABLE ONLY educativo.titular
    ADD CONSTRAINT fk_profesor_titular FOREIGN KEY (codigo_profesor) REFERENCES educativo.profesor(codigo_profesor);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   