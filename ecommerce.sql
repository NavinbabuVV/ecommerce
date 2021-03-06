PGDMP     1                    z         	   ecommerce    12.1    12.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    155648 	   ecommerce    DATABASE     ?   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE ecommerce;
                postgres    false            ?            1259    155657    productCategory    TABLE     p   CREATE TABLE public."productCategory" (
    "Id" integer NOT NULL,
    "categoryName" character varying(225)
);
 %   DROP TABLE public."productCategory";
       public         heap    postgres    false            ?            1259    155662    productReview    TABLE     ?   CREATE TABLE public."productReview" (
    id bigint NOT NULL,
    "reviewDesc" character varying(500),
    "productId" bigint,
    "reviewRating" integer
);
 #   DROP TABLE public."productReview";
       public         heap    postgres    false            ?            1259    155679    product_seq    SEQUENCE     |   CREATE SEQUENCE public.product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 "   DROP SEQUENCE public.product_seq;
       public          postgres    false            ?            1259    155649    products    TABLE       CREATE TABLE public.products (
    id integer DEFAULT nextval('public.product_seq'::regclass) NOT NULL,
    product_name character varying(500),
    product_price bigint,
    short_desc character varying(255),
    image character varying(500),
    "categoryId" bigint
);
    DROP TABLE public.products;
       public         heap    postgres    false    205                      0    155657    productCategory 
   TABLE DATA           A   COPY public."productCategory" ("Id", "categoryName") FROM stdin;
    public          postgres    false    203                    0    155662    productReview 
   TABLE DATA           X   COPY public."productReview" (id, "reviewDesc", "productId", "reviewRating") FROM stdin;
    public          postgres    false    204   $                 0    155649    products 
   TABLE DATA           d   COPY public.products (id, product_name, product_price, short_desc, image, "categoryId") FROM stdin;
    public          postgres    false    202   A                  0    0    product_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.product_seq', 9, true);
          public          postgres    false    205            ?
           2606    155661 $   productCategory productCategory_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."productCategory"
    ADD CONSTRAINT "productCategory_pkey" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."productCategory" DROP CONSTRAINT "productCategory_pkey";
       public            postgres    false    203            ?
           2606    155669     productReview productReview_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."productReview"
    ADD CONSTRAINT "productReview_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."productReview" DROP CONSTRAINT "productReview_pkey";
       public            postgres    false    204            ?
           2606    155671    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    202                  x?????? ? ?            x?????? ? ?           x???Mn?0??9?/?j	???T?	`??@Pʈ?7U3?JtU??|???a?>??s?想wBZF^wj\?N??y??8? T??D?X??w???v??5N&?S?~=??E??t????c`G
Q??H? y??F????[?3=? ϬHLB????g?l?????R?:?v?}@???2????ZS??g䇄?>S?h	A?1<N?̡$??3*?~~v????? ?8?*?????l!??=????W

?βN??o?M
??gY?x?     