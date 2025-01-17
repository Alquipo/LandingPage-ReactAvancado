PGDMP         3                x            strapi    13.1 (Debian 13.1-1.pgdg100+1)    13.1 (Debian 13.1-1.pgdg100+1) *   e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            h           1262    16384    strapi    DATABASE     Z   CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE strapi;
                strapi    false            �            1259    17310    authors    TABLE     r  CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    description text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer
);
    DROP TABLE public.authors;
       public         heap    strapi    false            �            1259    17318    authors_components    TABLE       CREATE TABLE public.authors_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    author_id integer NOT NULL
);
 &   DROP TABLE public.authors_components;
       public         heap    strapi    false            �            1259    17324    authors_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.authors_components_id_seq;
       public          strapi    false    209            i           0    0    authors_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;
          public          strapi    false    210            �            1259    17326    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          strapi    false    208            j           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          strapi    false    211            �            1259    17328    components_page_buttons    TABLE     �   CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);
 +   DROP TABLE public.components_page_buttons;
       public         heap    strapi    false            �            1259    17334    components_page_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_buttons_id_seq;
       public          strapi    false    212            k           0    0    components_page_buttons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;
          public          strapi    false    213            �            1259    17336    components_page_concepts    TABLE     l   CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);
 ,   DROP TABLE public.components_page_concepts;
       public         heap    strapi    false            �            1259    17339    components_page_concepts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_page_concepts_id_seq;
       public          strapi    false    214            l           0    0    components_page_concepts_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;
          public          strapi    false    215            �            1259    17341    components_page_headers    TABLE     �   CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 +   DROP TABLE public.components_page_headers;
       public         heap    strapi    false            �            1259    17347 "   components_page_headers_components    TABLE     $  CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);
 6   DROP TABLE public.components_page_headers_components;
       public         heap    strapi    false            �            1259    17353 )   components_page_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_page_headers_components_id_seq;
       public          strapi    false    217            m           0    0 )   components_page_headers_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;
          public          strapi    false    218            �            1259    17355    components_page_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_headers_id_seq;
       public          strapi    false    216            n           0    0    components_page_headers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;
          public          strapi    false    219            �            1259    17357    components_page_modules    TABLE     �   CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);
 +   DROP TABLE public.components_page_modules;
       public         heap    strapi    false            �            1259    17363    components_page_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_modules_id_seq;
       public          strapi    false    220            o           0    0    components_page_modules_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;
          public          strapi    false    221            �            1259    17365    components_page_pricing_boxes    TABLE     �   CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    "totalPrice" integer,
    "numberInstallments" integer,
    "priceInstallment" integer,
    benefits text
);
 1   DROP TABLE public.components_page_pricing_boxes;
       public         heap    strapi    false            �            1259    17371 (   components_page_pricing_boxes_components    TABLE     /  CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_pricing_box_id integer NOT NULL
);
 <   DROP TABLE public.components_page_pricing_boxes_components;
       public         heap    strapi    false            �            1259    17377 /   components_page_pricing_boxes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_page_pricing_boxes_components_id_seq;
       public          strapi    false    223            p           0    0 /   components_page_pricing_boxes_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;
          public          strapi    false    224            �            1259    17379 $   components_page_pricing_boxes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_page_pricing_boxes_id_seq;
       public          strapi    false    222            q           0    0 $   components_page_pricing_boxes_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;
          public          strapi    false    225            �            1259    17381    components_page_questions    TABLE     o   CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);
 -   DROP TABLE public.components_page_questions;
       public         heap    strapi    false            �            1259    17387     components_page_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_page_questions_id_seq;
       public          strapi    false    226            r           0    0     components_page_questions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;
          public          strapi    false    227            �            1259    17389    components_page_reviews    TABLE     y   CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);
 +   DROP TABLE public.components_page_reviews;
       public         heap    strapi    false            �            1259    17395    components_page_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_reviews_id_seq;
       public          strapi    false    228            s           0    0    components_page_reviews_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;
          public          strapi    false    229            �            1259    17397 &   components_page_section_about_projects    TABLE     �   CREATE TABLE public.components_page_section_about_projects (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 :   DROP TABLE public.components_page_section_about_projects;
       public         heap    strapi    false            �            1259    17403 -   components_page_section_about_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_page_section_about_projects_id_seq;
       public          strapi    false    230            t           0    0 -   components_page_section_about_projects_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_page_section_about_projects_id_seq OWNED BY public.components_page_section_about_projects.id;
          public          strapi    false    231            �            1259    17405 !   components_page_section_aboutuses    TABLE     u   CREATE TABLE public.components_page_section_aboutuses (
    id integer NOT NULL,
    title character varying(255)
);
 5   DROP TABLE public.components_page_section_aboutuses;
       public         heap    strapi    false            �            1259    17408 *   components_page_section_aboutuses__authors    TABLE     �   CREATE TABLE public.components_page_section_aboutuses__authors (
    id integer NOT NULL,
    components_page_section_aboutus_id integer,
    author_id integer
);
 >   DROP TABLE public.components_page_section_aboutuses__authors;
       public         heap    strapi    false            �            1259    17411 1   components_page_section_aboutuses__authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_aboutuses__authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_page_section_aboutuses__authors_id_seq;
       public          strapi    false    233            u           0    0 1   components_page_section_aboutuses__authors_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_aboutuses__authors_id_seq OWNED BY public.components_page_section_aboutuses__authors.id;
          public          strapi    false    234            �            1259    17413 (   components_page_section_aboutuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_page_section_aboutuses_id_seq;
       public          strapi    false    232            v           0    0 (   components_page_section_aboutuses_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_page_section_aboutuses_id_seq OWNED BY public.components_page_section_aboutuses.id;
          public          strapi    false    235            �            1259    17415    components_page_section_agenda    TABLE     �   CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 2   DROP TABLE public.components_page_section_agenda;
       public         heap    strapi    false            �            1259    17421 %   components_page_section_agenda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_section_agenda_id_seq;
       public          strapi    false    236            w           0    0 %   components_page_section_agenda_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;
          public          strapi    false    237            �            1259    17423     components_page_section_concepts    TABLE     t   CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255)
);
 4   DROP TABLE public.components_page_section_concepts;
       public         heap    strapi    false            �            1259    17426 +   components_page_section_concepts_components    TABLE     6  CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_concept_id integer NOT NULL
);
 ?   DROP TABLE public.components_page_section_concepts_components;
       public         heap    strapi    false            �            1259    17432 2   components_page_section_concepts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_page_section_concepts_components_id_seq;
       public          strapi    false    239            x           0    0 2   components_page_section_concepts_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;
          public          strapi    false    240            �            1259    17434 '   components_page_section_concepts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_page_section_concepts_id_seq;
       public          strapi    false    238            y           0    0 '   components_page_section_concepts_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;
          public          strapi    false    241            �            1259    17436    components_page_section_faqs    TABLE     p   CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);
 0   DROP TABLE public.components_page_section_faqs;
       public         heap    strapi    false            �            1259    17439 '   components_page_section_faqs_components    TABLE     .  CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_faq_id integer NOT NULL
);
 ;   DROP TABLE public.components_page_section_faqs_components;
       public         heap    strapi    false            �            1259    17445 .   components_page_section_faqs_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_page_section_faqs_components_id_seq;
       public          strapi    false    243            z           0    0 .   components_page_section_faqs_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;
          public          strapi    false    244            �            1259    17447 #   components_page_section_faqs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_page_section_faqs_id_seq;
       public          strapi    false    242            {           0    0 #   components_page_section_faqs_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;
          public          strapi    false    245            �            1259    17449    components_page_section_modules    TABLE     s   CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255)
);
 3   DROP TABLE public.components_page_section_modules;
       public         heap    strapi    false            �            1259    17452 *   components_page_section_modules_components    TABLE     4  CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_module_id integer NOT NULL
);
 >   DROP TABLE public.components_page_section_modules_components;
       public         heap    strapi    false            �            1259    17458 1   components_page_section_modules_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_page_section_modules_components_id_seq;
       public          strapi    false    247            |           0    0 1   components_page_section_modules_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;
          public          strapi    false    248            �            1259    17460 &   components_page_section_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_section_modules_id_seq;
       public          strapi    false    246            }           0    0 &   components_page_section_modules_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;
          public          strapi    false    249            �            1259    17462    components_page_section_reviews    TABLE     s   CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);
 3   DROP TABLE public.components_page_section_reviews;
       public         heap    strapi    false            �            1259    17465 *   components_page_section_reviews_components    TABLE     4  CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_review_id integer NOT NULL
);
 >   DROP TABLE public.components_page_section_reviews_components;
       public         heap    strapi    false            �            1259    17471 1   components_page_section_reviews_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_page_section_reviews_components_id_seq;
       public          strapi    false    251            ~           0    0 1   components_page_section_reviews_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;
          public          strapi    false    252            �            1259    17473 &   components_page_section_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_section_reviews_id_seq;
       public          strapi    false    250                       0    0 &   components_page_section_reviews_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;
          public          strapi    false    253            �            1259    17475    components_page_section_teches    TABLE     r   CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);
 2   DROP TABLE public.components_page_section_teches;
       public         heap    strapi    false            �            1259    17478 )   components_page_section_teches_components    TABLE     1  CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_tech_id integer NOT NULL
);
 =   DROP TABLE public.components_page_section_teches_components;
       public         heap    strapi    false                        1259    17484 0   components_page_section_teches_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_page_section_teches_components_id_seq;
       public          strapi    false    255            �           0    0 0   components_page_section_teches_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;
          public          strapi    false    256                       1259    17486 %   components_page_section_teches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_section_teches_id_seq;
       public          strapi    false    254            �           0    0 %   components_page_section_teches_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;
          public          strapi    false    257                       1259    17488    components_page_social_links    TABLE     �   CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 0   DROP TABLE public.components_page_social_links;
       public         heap    strapi    false                       1259    17494 #   components_page_social_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_page_social_links_id_seq;
       public          strapi    false    258            �           0    0 #   components_page_social_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;
          public          strapi    false    259                       1259    17496    components_page_tech_icons    TABLE     n   CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255)
);
 .   DROP TABLE public.components_page_tech_icons;
       public         heap    strapi    false                       1259    17499 !   components_page_tech_icons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_page_tech_icons_id_seq;
       public          strapi    false    260            �           0    0 !   components_page_tech_icons_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;
          public          strapi    false    261                       1259    17501 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    strapi    false                       1259    17507    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          strapi    false    262            �           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          strapi    false    263                       1259    17509    landing_pages    TABLE     �   CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    created_by integer,
    updated_by integer
);
 !   DROP TABLE public.landing_pages;
       public         heap    strapi    false            	           1259    17514    landing_pages_components    TABLE       CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    landing_page_id integer NOT NULL
);
 ,   DROP TABLE public.landing_pages_components;
       public         heap    strapi    false            
           1259    17520    landing_pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.landing_pages_components_id_seq;
       public          strapi    false    265            �           0    0    landing_pages_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;
          public          strapi    false    266                       1259    17522    landing_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.landing_pages_id_seq;
       public          strapi    false    264            �           0    0    landing_pages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;
          public          strapi    false    267            �            1259    16439    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    strapi    false            �            1259    16437    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          strapi    false    205            �           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          strapi    false    204            �            1259    16409    strapi_permission    TABLE     S  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    strapi    false            �            1259    16407    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          strapi    false    201            �           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          strapi    false    200            �            1259    16422    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    strapi    false            �            1259    16420    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          strapi    false    203            �           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          strapi    false    202            �            1259    16452    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    strapi    false            �            1259    16450    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          strapi    false    207            �           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          strapi    false    206                       1259    17524    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    strapi    false                       1259    17530    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          strapi    false    268            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          strapi    false    269                       1259    17532    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    created_by integer,
    updated_by integer
);
    DROP TABLE public.upload_file;
       public         heap    strapi    false                       1259    17540    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          strapi    false    270            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          strapi    false    271                       1259    17542    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    strapi    false                       1259    17548    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          strapi    false    272            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          strapi    false    273                       1259    17550    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    strapi    false                       1259    17556 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          strapi    false    274            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          strapi    false    275                       1259    17558    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    strapi    false                       1259    17564    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          strapi    false    276            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          strapi    false    277                       1259    17566    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "confirmationToken" character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    strapi    false                       1259    17574    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          strapi    false    278            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          strapi    false    279                       2604    17576 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    211    208                       2604    17577    authors_components id    DEFAULT     ~   ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);
 D   ALTER TABLE public.authors_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    210    209                       2604    17578    components_page_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);
 I   ALTER TABLE public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    213    212                       2604    17579    components_page_concepts id    DEFAULT     �   ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);
 J   ALTER TABLE public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    215    214                       2604    17580    components_page_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);
 I   ALTER TABLE public.components_page_headers ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    219    216            	           2604    17581 %   components_page_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);
 T   ALTER TABLE public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    218    217            
           2604    17582    components_page_modules id    DEFAULT     �   ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);
 I   ALTER TABLE public.components_page_modules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    221    220                       2604    17583     components_page_pricing_boxes id    DEFAULT     �   ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);
 O   ALTER TABLE public.components_page_pricing_boxes ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    225    222                       2604    17584 +   components_page_pricing_boxes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);
 Z   ALTER TABLE public.components_page_pricing_boxes_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    224    223                       2604    17585    components_page_questions id    DEFAULT     �   ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);
 K   ALTER TABLE public.components_page_questions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    227    226                       2604    17586    components_page_reviews id    DEFAULT     �   ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);
 I   ALTER TABLE public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    229    228                       2604    17587 )   components_page_section_about_projects id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_about_projects_id_seq'::regclass);
 X   ALTER TABLE public.components_page_section_about_projects ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    231    230                       2604    17588 $   components_page_section_aboutuses id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_id_seq'::regclass);
 S   ALTER TABLE public.components_page_section_aboutuses ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    235    232                       2604    17589 -   components_page_section_aboutuses__authors id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_aboutuses__authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses__authors_id_seq'::regclass);
 \   ALTER TABLE public.components_page_section_aboutuses__authors ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    234    233                       2604    17590 !   components_page_section_agenda id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);
 P   ALTER TABLE public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    237    236                       2604    17591 #   components_page_section_concepts id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);
 R   ALTER TABLE public.components_page_section_concepts ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    241    238                       2604    17592 .   components_page_section_concepts_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_page_section_concepts_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    240    239                       2604    17593    components_page_section_faqs id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);
 N   ALTER TABLE public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    245    242                       2604    17594 *   components_page_section_faqs_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);
 Y   ALTER TABLE public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    244    243                       2604    17595 "   components_page_section_modules id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_section_modules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    249    246                       2604    17596 -   components_page_section_modules_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);
 \   ALTER TABLE public.components_page_section_modules_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    248    247                       2604    17597 "   components_page_section_reviews id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    253    250                       2604    17598 -   components_page_section_reviews_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);
 \   ALTER TABLE public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    252    251                       2604    17599 !   components_page_section_teches id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);
 P   ALTER TABLE public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    257    254                       2604    17600 ,   components_page_section_teches_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);
 [   ALTER TABLE public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    256    255                       2604    17601    components_page_social_links id    DEFAULT     �   ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);
 N   ALTER TABLE public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    259    258                       2604    17602    components_page_tech_icons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);
 L   ALTER TABLE public.components_page_tech_icons ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    261    260                       2604    17603    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    263    262            "           2604    17604    landing_pages id    DEFAULT     t   ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);
 ?   ALTER TABLE public.landing_pages ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    267    264            #           2604    17605    landing_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);
 J   ALTER TABLE public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    266    265                        2604    16442    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    204    205    205            �           2604    16412    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    201    200    201            �           2604    16425    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    203    202    203                       2604    16455    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    206    207    207            $           2604    17606    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    269    268            '           2604    17607    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    271    270            (           2604    17608    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    273    272            )           2604    17609    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    275    274            *           2604    17610    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    277    276            -           2604    17611    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    279    278                      0    17310    authors 
   TABLE DATA           |   COPY public.authors (id, name, role, created_at, updated_at, description, published_at, created_by, updated_by) FROM stdin;
    public          strapi    false    208                      0    17318    authors_components 
   TABLE DATA           i   COPY public.authors_components (id, field, "order", component_type, component_id, author_id) FROM stdin;
    public          strapi    false    209                      0    17328    components_page_buttons 
   TABLE DATA           A   COPY public.components_page_buttons (id, label, url) FROM stdin;
    public          strapi    false    212            !          0    17336    components_page_concepts 
   TABLE DATA           =   COPY public.components_page_concepts (id, title) FROM stdin;
    public          strapi    false    214            #          0    17341    components_page_headers 
   TABLE DATA           I   COPY public.components_page_headers (id, title, description) FROM stdin;
    public          strapi    false    216            $          0    17347 "   components_page_headers_components 
   TABLE DATA           �   COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
    public          strapi    false    217            '          0    17357    components_page_modules 
   TABLE DATA           S   COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
    public          strapi    false    220            )          0    17365    components_page_pricing_boxes 
   TABLE DATA           }   COPY public.components_page_pricing_boxes (id, "totalPrice", "numberInstallments", "priceInstallment", benefits) FROM stdin;
    public          strapi    false    222            *          0    17371 (   components_page_pricing_boxes_components 
   TABLE DATA           �   COPY public.components_page_pricing_boxes_components (id, field, "order", component_type, component_id, components_page_pricing_box_id) FROM stdin;
    public          strapi    false    223            -          0    17381    components_page_questions 
   TABLE DATA           I   COPY public.components_page_questions (id, question, answer) FROM stdin;
    public          strapi    false    226            /          0    17389    components_page_reviews 
   TABLE DATA           A   COPY public.components_page_reviews (id, name, text) FROM stdin;
    public          strapi    false    228            1          0    17397 &   components_page_section_about_projects 
   TABLE DATA           X   COPY public.components_page_section_about_projects (id, title, description) FROM stdin;
    public          strapi    false    230            3          0    17405 !   components_page_section_aboutuses 
   TABLE DATA           F   COPY public.components_page_section_aboutuses (id, title) FROM stdin;
    public          strapi    false    232            4          0    17408 *   components_page_section_aboutuses__authors 
   TABLE DATA           w   COPY public.components_page_section_aboutuses__authors (id, components_page_section_aboutus_id, author_id) FROM stdin;
    public          strapi    false    233            7          0    17415    components_page_section_agenda 
   TABLE DATA           P   COPY public.components_page_section_agenda (id, title, description) FROM stdin;
    public          strapi    false    236            9          0    17423     components_page_section_concepts 
   TABLE DATA           E   COPY public.components_page_section_concepts (id, title) FROM stdin;
    public          strapi    false    238            :          0    17426 +   components_page_section_concepts_components 
   TABLE DATA           �   COPY public.components_page_section_concepts_components (id, field, "order", component_type, component_id, components_page_section_concept_id) FROM stdin;
    public          strapi    false    239            =          0    17436    components_page_section_faqs 
   TABLE DATA           A   COPY public.components_page_section_faqs (id, title) FROM stdin;
    public          strapi    false    242            >          0    17439 '   components_page_section_faqs_components 
   TABLE DATA           �   COPY public.components_page_section_faqs_components (id, field, "order", component_type, component_id, components_page_section_faq_id) FROM stdin;
    public          strapi    false    243            A          0    17449    components_page_section_modules 
   TABLE DATA           D   COPY public.components_page_section_modules (id, title) FROM stdin;
    public          strapi    false    246            B          0    17452 *   components_page_section_modules_components 
   TABLE DATA           �   COPY public.components_page_section_modules_components (id, field, "order", component_type, component_id, components_page_section_module_id) FROM stdin;
    public          strapi    false    247            E          0    17462    components_page_section_reviews 
   TABLE DATA           D   COPY public.components_page_section_reviews (id, title) FROM stdin;
    public          strapi    false    250            F          0    17465 *   components_page_section_reviews_components 
   TABLE DATA           �   COPY public.components_page_section_reviews_components (id, field, "order", component_type, component_id, components_page_section_review_id) FROM stdin;
    public          strapi    false    251            I          0    17475    components_page_section_teches 
   TABLE DATA           C   COPY public.components_page_section_teches (id, title) FROM stdin;
    public          strapi    false    254            J          0    17478 )   components_page_section_teches_components 
   TABLE DATA           �   COPY public.components_page_section_teches_components (id, field, "order", component_type, component_id, components_page_section_tech_id) FROM stdin;
    public          strapi    false    255            M          0    17488    components_page_social_links 
   TABLE DATA           F   COPY public.components_page_social_links (id, title, url) FROM stdin;
    public          strapi    false    258            O          0    17496    components_page_tech_icons 
   TABLE DATA           ?   COPY public.components_page_tech_icons (id, title) FROM stdin;
    public          strapi    false    260            Q          0    17501 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          strapi    false    262            S          0    17509    landing_pages 
   TABLE DATA           [   COPY public.landing_pages (id, created_at, updated_at, created_by, updated_by) FROM stdin;
    public          strapi    false    264            T          0    17514    landing_pages_components 
   TABLE DATA           u   COPY public.landing_pages_components (id, field, "order", component_type, component_id, landing_page_id) FROM stdin;
    public          strapi    false    265                      0    16439    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
    public          strapi    false    205                      0    16409    strapi_permission 
   TABLE DATA           r   COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
    public          strapi    false    201                      0    16422    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          strapi    false    203                      0    16452    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          strapi    false    207            W          0    17524    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          strapi    false    268            Y          0    17532    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_at, updated_at, created_by, updated_by) FROM stdin;
    public          strapi    false    270            [          0    17542    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          strapi    false    272            ]          0    17550    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          strapi    false    274            _          0    17558    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          strapi    false    276            a          0    17566    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", confirmed, blocked, role, created_at, updated_at, "confirmationToken", created_by, updated_by) FROM stdin;
    public          strapi    false    278            �           0    0    authors_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.authors_components_id_seq', 19, true);
          public          strapi    false    210            �           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 9, true);
          public          strapi    false    211            �           0    0    components_page_buttons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 2, true);
          public          strapi    false    213            �           0    0    components_page_concepts_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 18, true);
          public          strapi    false    215            �           0    0 )   components_page_headers_components_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 1, true);
          public          strapi    false    218            �           0    0    components_page_headers_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);
          public          strapi    false    219            �           0    0    components_page_modules_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_modules_id_seq', 6, true);
          public          strapi    false    221            �           0    0 /   components_page_pricing_boxes_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 1, true);
          public          strapi    false    224            �           0    0 $   components_page_pricing_boxes_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 1, true);
          public          strapi    false    225            �           0    0     components_page_questions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_page_questions_id_seq', 6, true);
          public          strapi    false    227            �           0    0    components_page_reviews_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 4, true);
          public          strapi    false    229            �           0    0 -   components_page_section_about_projects_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_page_section_about_projects_id_seq', 1, true);
          public          strapi    false    231            �           0    0 1   components_page_section_aboutuses__authors_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_aboutuses__authors_id_seq', 5, true);
          public          strapi    false    234            �           0    0 (   components_page_section_aboutuses_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_page_section_aboutuses_id_seq', 1, true);
          public          strapi    false    235            �           0    0 %   components_page_section_agenda_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);
          public          strapi    false    237            �           0    0 2   components_page_section_concepts_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 18, true);
          public          strapi    false    240            �           0    0 '   components_page_section_concepts_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 1, true);
          public          strapi    false    241            �           0    0 .   components_page_section_faqs_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 6, true);
          public          strapi    false    244            �           0    0 #   components_page_section_faqs_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);
          public          strapi    false    245            �           0    0 1   components_page_section_modules_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 6, true);
          public          strapi    false    248            �           0    0 &   components_page_section_modules_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 1, true);
          public          strapi    false    249            �           0    0 1   components_page_section_reviews_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 4, true);
          public          strapi    false    252            �           0    0 &   components_page_section_reviews_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);
          public          strapi    false    253            �           0    0 0   components_page_section_teches_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 10, true);
          public          strapi    false    256            �           0    0 %   components_page_section_teches_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);
          public          strapi    false    257            �           0    0 #   components_page_social_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 19, true);
          public          strapi    false    259            �           0    0 !   components_page_tech_icons_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 10, true);
          public          strapi    false    261            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 90, true);
          public          strapi    false    263            �           0    0    landing_pages_components_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 10, true);
          public          strapi    false    266            �           0    0    landing_pages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);
          public          strapi    false    267            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 3, true);
          public          strapi    false    204            �           0    0    strapi_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 83, true);
          public          strapi    false    200            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          strapi    false    202            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          strapi    false    206            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          strapi    false    269            �           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 33, true);
          public          strapi    false    271            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 238, true);
          public          strapi    false    273            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 222, true);
          public          strapi    false    275            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          strapi    false    277            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);
          public          strapi    false    279            ?           2606    17613 *   authors_components authors_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.authors_components DROP CONSTRAINT authors_components_pkey;
       public            strapi    false    209            =           2606    17615    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            strapi    false    208            A           2606    17617 4   components_page_buttons components_page_buttons_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_buttons DROP CONSTRAINT components_page_buttons_pkey;
       public            strapi    false    212            C           2606    17619 6   components_page_concepts components_page_concepts_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_page_concepts DROP CONSTRAINT components_page_concepts_pkey;
       public            strapi    false    214            G           2606    17621 J   components_page_headers_components components_page_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_headers_components_pkey;
       public            strapi    false    217            E           2606    17623 4   components_page_headers components_page_headers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_headers DROP CONSTRAINT components_page_headers_pkey;
       public            strapi    false    216            I           2606    17625 4   components_page_modules components_page_modules_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_modules DROP CONSTRAINT components_page_modules_pkey;
       public            strapi    false    220            M           2606    17627 V   components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT components_page_pricing_boxes_components_pkey;
       public            strapi    false    223            K           2606    17629 @   components_page_pricing_boxes components_page_pricing_boxes_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_page_pricing_boxes DROP CONSTRAINT components_page_pricing_boxes_pkey;
       public            strapi    false    222            O           2606    17631 8   components_page_questions components_page_questions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_page_questions DROP CONSTRAINT components_page_questions_pkey;
       public            strapi    false    226            Q           2606    17633 4   components_page_reviews components_page_reviews_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_reviews DROP CONSTRAINT components_page_reviews_pkey;
       public            strapi    false    228            S           2606    17635 R   components_page_section_about_projects components_page_section_about_projects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_about_projects
    ADD CONSTRAINT components_page_section_about_projects_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_page_section_about_projects DROP CONSTRAINT components_page_section_about_projects_pkey;
       public            strapi    false    230            W           2606    17637 Z   components_page_section_aboutuses__authors components_page_section_aboutuses__authors_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_aboutuses__authors
    ADD CONSTRAINT components_page_section_aboutuses__authors_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_aboutuses__authors DROP CONSTRAINT components_page_section_aboutuses__authors_pkey;
       public            strapi    false    233            U           2606    17639 H   components_page_section_aboutuses components_page_section_aboutuses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_aboutuses
    ADD CONSTRAINT components_page_section_aboutuses_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_page_section_aboutuses DROP CONSTRAINT components_page_section_aboutuses_pkey;
       public            strapi    false    232            Y           2606    17641 B   components_page_section_agenda components_page_section_agenda_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_section_agenda DROP CONSTRAINT components_page_section_agenda_pkey;
       public            strapi    false    236            ]           2606    17643 \   components_page_section_concepts_components components_page_section_concepts_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_concepts_components DROP CONSTRAINT components_page_section_concepts_components_pkey;
       public            strapi    false    239            [           2606    17645 F   components_page_section_concepts components_page_section_concepts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_page_section_concepts DROP CONSTRAINT components_page_section_concepts_pkey;
       public            strapi    false    238            a           2606    17647 T   components_page_section_faqs_components components_page_section_faqs_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_page_section_faqs_components DROP CONSTRAINT components_page_section_faqs_components_pkey;
       public            strapi    false    243            _           2606    17649 >   components_page_section_faqs components_page_section_faqs_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_page_section_faqs DROP CONSTRAINT components_page_section_faqs_pkey;
       public            strapi    false    242            e           2606    17651 Z   components_page_section_modules_components components_page_section_modules_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_modules_components DROP CONSTRAINT components_page_section_modules_components_pkey;
       public            strapi    false    247            c           2606    17653 D   components_page_section_modules components_page_section_modules_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_section_modules DROP CONSTRAINT components_page_section_modules_pkey;
       public            strapi    false    246            i           2606    17655 Z   components_page_section_reviews_components components_page_section_reviews_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_reviews_components DROP CONSTRAINT components_page_section_reviews_components_pkey;
       public            strapi    false    251            g           2606    17657 D   components_page_section_reviews components_page_section_reviews_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_section_reviews DROP CONSTRAINT components_page_section_reviews_pkey;
       public            strapi    false    250            m           2606    17659 X   components_page_section_teches_components components_page_section_teches_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_teches_components DROP CONSTRAINT components_page_section_teches_components_pkey;
       public            strapi    false    255            k           2606    17661 B   components_page_section_teches components_page_section_teches_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_section_teches DROP CONSTRAINT components_page_section_teches_pkey;
       public            strapi    false    254            o           2606    17663 >   components_page_social_links components_page_social_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_page_social_links DROP CONSTRAINT components_page_social_links_pkey;
       public            strapi    false    258            q           2606    17665 :   components_page_tech_icons components_page_tech_icons_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_page_tech_icons DROP CONSTRAINT components_page_tech_icons_pkey;
       public            strapi    false    260            s           2606    17667    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            strapi    false    262            w           2606    17669 6   landing_pages_components landing_pages_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.landing_pages_components DROP CONSTRAINT landing_pages_components_pkey;
       public            strapi    false    265            u           2606    17671     landing_pages landing_pages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.landing_pages DROP CONSTRAINT landing_pages_pkey;
       public            strapi    false    264            7           2606    17738 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            strapi    false    205            9           2606    16447 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            strapi    false    205            /           2606    16419 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            strapi    false    201            1           2606    17736 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            strapi    false    203            3           2606    17734 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            strapi    false    203            5           2606    16432    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            strapi    false    203            ;           2606    16457 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            strapi    false    207            y           2606    17673 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            strapi    false    268            }           2606    17675 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            strapi    false    272            {           2606    17677    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            strapi    false    270                       2606    17679 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            strapi    false    274            �           2606    17681 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            strapi    false    276            �           2606    17740 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            strapi    false    276            �           2606    17685 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            strapi    false    278            �           2606    17742 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            strapi    false    278            �           2606    17688    authors_components author_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT author_id_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.authors_components DROP CONSTRAINT author_id_fk;
       public          strapi    false    208    3133    209            �           2606    17693 ?   components_page_headers_components components_page_header_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_header_id_fk;
       public          strapi    false    217    216    3141            �           2606    17698 J   components_page_pricing_boxes_components components_page_pricing_box_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_box_id_fk FOREIGN KEY (components_page_pricing_box_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT components_page_pricing_box_id_fk;
       public          strapi    false    223    222    3147            �           2606    17703 Q   components_page_section_concepts_components components_page_section_concept_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concept_id_fk FOREIGN KEY (components_page_section_concept_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.components_page_section_concepts_components DROP CONSTRAINT components_page_section_concept_id_fk;
       public          strapi    false    238    239    3163            �           2606    17708 I   components_page_section_faqs_components components_page_section_faq_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faq_id_fk FOREIGN KEY (components_page_section_faq_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.components_page_section_faqs_components DROP CONSTRAINT components_page_section_faq_id_fk;
       public          strapi    false    242    243    3167            �           2606    17713 O   components_page_section_modules_components components_page_section_module_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_module_id_fk FOREIGN KEY (components_page_section_module_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.components_page_section_modules_components DROP CONSTRAINT components_page_section_module_id_fk;
       public          strapi    false    247    246    3171            �           2606    17718 O   components_page_section_reviews_components components_page_section_review_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_review_id_fk FOREIGN KEY (components_page_section_review_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.components_page_section_reviews_components DROP CONSTRAINT components_page_section_review_id_fk;
       public          strapi    false    3175    251    250            �           2606    17723 L   components_page_section_teches_components components_page_section_tech_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_tech_id_fk FOREIGN KEY (components_page_section_tech_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.components_page_section_teches_components DROP CONSTRAINT components_page_section_tech_id_fk;
       public          strapi    false    254    3179    255            �           2606    17728 +   landing_pages_components landing_page_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_page_id_fk FOREIGN KEY (landing_page_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.landing_pages_components DROP CONSTRAINT landing_page_id_fk;
       public          strapi    false    265    3189    264               �  x�}��N�@�����^7�l'ᐻ����V*�7���Y�݉���}�D%^��~��.	��,[{���ϳ3���a��Z�r8xK^u�ܠ.�r\��z�d>ٝOv���~Y�����<Ť�JG{�m��-��&,�K@�E�-�^��ڐ����E�/��7\��D,�ը%Gh	Z�輈������9���_:Bh<�Z��a��D�
�K�/d�.�R�jD@Zf��v�W�/�}�$�Aܑk�6�|mdW�W)G�0��U-���:��'�Ta%5D.�!
q�'���&ɿjPg����!������J/1�J�=�v����t>�U5���d6/+9�Tí\j��^��l.2U����r+�5*��fm;z1�v;���[�piՒV�o��;<p�1��.�>'�V، J%�jP�K���\	��������BHt-XB��w�)L���(�l�Z��(|�(?�
�9X�M�$L�4J���Y�6�����z��{����_<���HPN_��
-F/J�#Ym��	�;�z���O���F2l�ZsU�aJ=�k�|�an��?9A�n�yP�`_�� ������.8�9��=��.���#KF2���I�����61�IK�G�֠��� (۸�fEZһ���ꠎ������?-���_uؚ�         W   x�34�,�O�L�����.�4�L��-��K�+)�/HLO�����@�8M�Q��b�bA�%�&\��Xa	�`H�@�\1z\\\ �Wo         b   x�3�t��-(J,��())(���///�+MIͭ�K���O�/-*N�/JML.�M,K�KNL�׷
��9秤�������r�LR�WHjʧ��=... C7�      !   J  x�m�=N1�k�.I����D �H�Y����埈�6��p�������{��7����(|��	�*\%���t�x���Ҷ�{��{�	"�3aA(4@i�@@�GJ-;|�TҴCj1�~�m�y���%ʋX�� a�֯US�Gl�mAf]�MN'�A��↏�"SM�q�S��a��k�^������ Fyʦuh����F���ด�!a��zZc0�^�����QɅ�s�\��c'wWQ���K�Ab��2
���t�u�$'�ҡ���s��>�#�!������!_��x���,x�P�m^�S.��|��O8�G��"      #   Y   x�3�JML.Qp,K�;�<1%�ӹ(3U!� '39����[S��R3���s�R+J��u�K�2u܁TF��B�B.P�"W� ��      $   .   x�3�L*-)���4�L��-��K�+)�/HLO��He�b���� U��      '   �  x�eV�nG<S_1�H��$� Lh$�\��Mr�ٙ�<hѷ|����CNF�`,�=�]J�\�����z_����l�R�f(&��%�t�vA_���캿��Q]=ju>*�r-���z��k�V-~Kc(sJ�j|��N��M�Z�:m����5�����W}�w����U�"~Ӝ�	F�S��T�[��=G"�;�c��`��V��鞚����$�Ds�VNhW���t�!���{��-��[-e]�� |=[,���[�$@G@@I�>Tx���:�8��UҶc�s܉�e� ��|R���/@]ztJВ�/}�v�%�	��O�(7|����{�B�(ĳ��x$z���
�'���X�E�Kuk�o�jP������d�#�� *i�C%r{ᖙT����,�V��C���w:!���d��g#�f��:��?����Ui�Z�*�ۣV�Y'�|��27�� QhR8�s��A��5͉1Țq�-���x��qԢ�
iȓ�zn�LO*��q�:V��p9c`�f7�X
��̻WP
��r։ۚ�ܖB�,��j5�����J��&�������*PJ�����Ij���(?�p�i�{�%Lm'�mXg���R��)�PY�&��B��;�D9��uʵ��V���Gҟ��@�78�����4-�8Ӱ+x`(]-ޯ%�W��|�
�Z��@*f�nW�
��P�JhYm��8?����%y֛!S���8tn�e6Dނ�X/��&R8>�-N�6��E&�7Y8=��5P!�+�؂�}1��r���i�[����[&�c�2,'KY	S�$�	��W�xj�g��y'[g�A��P��w09��d��psBo� _�lwI�a�+jx1y��ɴ��A8kYop]j ���8���06J�繅�r�d����g���	n���Ձ���:n���y�[,�������Y��q��g�k��[]�w��iVm,�3iLx�{�����\k@z�`d���"\/�����.y���;/��)��J���k��uR����g�0a��{�%l�T�
�/'
_��͈#����1���'���(�3����:��ݸ��ˋH?��Վ�w�ĔG��a�y��Y-GfXW#7�`��e8���<�WУ�`�ņ�����6��>>�����P.�������vMY�lg�����=�͂�P���U'e>�1>�M
ٶ�ߌ"�X�2:aLί����&�-(*��qyqq����      )   �   x�U�M�AF�ݧ�	���A��έ�P$cUũT5��x/fDm���=�̚�|�,�ռ�j���Ƒ� �B�%K:�K����A���"@U��W	���ch�C��6<��"^@��嗊|4J'�Ep#�/���EF�����>ؖ�,�E2)��莣���`s:�P����׌��m�jVy�S�F���m{Q�h      *   0   x�3�L*-)���4�L��-��K�+)�/HLO��Hsqr��qqq U��      -   _  x�}S=oA��_1�>l>
d����q �����nw6�q���)U���ǘݻ8�������7�}1��e"p�j����G���~�r�3�؝��Q`;���g������+aa�K5�0�=��� �=J��Z4S�J?��k� ��{}�=Е�F]�Q��ݎP.�C�s�ϓ���p�s��'x
NM�a�Z���x���X��mCr�ui;2��?`�2�*%k���`�dk��lYыB�C���Mڶc�����	�ԑG�<��u8r/�T�(�7M�r�%aF�d\~�ݤp��j�S�6�{��gUn�U��PbVz�VA/렊���֕2h0{��DG�<A�Q	G>�f�B�	H9AM>r[�*$N�T�� {��D{����)߶�W��y��`�vg9	�Ir@�1�x��1?#��Y���W��K��+���[Q;̡��cL%��Ṅ�	�l���K:<�]!�<��v1��v���]�h/��m���/�⣵����C���}3;�����^-�rAQ.��'�c;�u<
��Z���5y�b���֡$$sh�c��lh��
�"w|���U��:7^N�dFE�/���?A��       /     x�mT͎E>�OQ��k����fY�H0.垲�BO���cy�x��C�H{��p�㫞6ɖ5������t񍤬��˸�\i�z��,n�j��hoJ�BOWtc��R?h5긐��Q�o�?��i'=���O�v���ˊ������p�R�ߍ�(���c?����ߗ�R���-�h�9u��${�u���dCW�3g &|-�q&�f��f���2� Y�'4ͼ�.E�����w(����(4�h���H.��l
L�v�
�^|h\~��e���*�"�`�q�0+��\_��$'#|��G{�=7	gU;�`M�DdW�T6���9�D�~� �QO���ۿ#�����#��m�`���g��7���9'��Ϻ��p��~|Lj��@JQK*����}/9s/��T	ɢOS_..l/�Ȁ��hCh��IP����~��uA���&�'��~#�;�kbǝ�]��俅ǕI�v� 0����u�7 ���$�\���v���s(V�//4�&���[I����|�M�.��GE�A��BMTiGC~�A�H�����R��.}��4H��}
��z����� ��?kz�����A��G����_�_[�4>vbh��ײ�M�Gor�k�ݯ�&������h������S��U��eRf����_�>Z �������/�7��k0����9k�0x���W ��NOS��S�]O㜨���Q|���j��g���g���(݅S�O���.����+U,��n(�7�#O���z��e�\.�0GC      1   �  x�MRˎ�@<o������EB�@ZvE8r�x:�^͸M��
�k@g��Ǩ����.Uף�n�KR�d�zs�~����.3Wv���uo)��BA�����Ǫc0*��&�� &8�X@!4wa����l�!_�3M��F'>�ӱ��}�X��#ګ���``w���3@Yj^���\�t����p�IV��q����<�8����(eQ
�%=s�����X8$��EyΜ�8��ZZ2=��9�">���X0��s�#I��f-��b�Z�cS�,%�Fls��˫��[���\$\xl�ug��֜��^�F�9��}	D�"@$	 ^�Q++�8?r|�3�(ܗ���>���ћ�bl�X�ݓ6
��[:��]����$���Q����;� n����;*����!�����˫%5�����f���
V      3       x�3�,M�U(���/V�;��؞+F��� e��      4   !   x�3�4�4�2��\�@Ҍ�HZp��qqq 5      7   Z  x�M�AN�0E��)� !�-�*!�$�l&�4�=�v�^�*+����T�U����r���%8�1�竁���^B�M3�R��4yꦘ�䔣�E tԣU$)3�,�
g�?��i�Kgao�C�E�%zEUӽyҔ0�����	��:k��	�u�W"کx�KϚ(��:��}[`�	���Ah᳄�b��{�r�����e�dm�r*���i��.n��/��b�\�;��đ���N:��	�A�YlA����LX˰���)L���_N�MR����
p �О�ST7��]�r���'`�\���n]O0giv~����Ep���F�96ח95=K��e��?ܖU�/�v��$δ      9   1   x�3�t��KN�,�/V(,MU(�O>�J!���B�Ă�Լ��"�=... B4�      :   �   x�}�K
�PF�w1ţ��^
RD:�
����I2���f;�m���A��u�������{Q:�],;���>���j�Ʋ�L�D�&�X�"'�S,'���9������E$���M�o�pJK�R��Bc�j��B{႑C�ᚑDC�ᲑtC��ʑ�C����C�_��?K��      =      x�3�ts����� 1�      >   X   x�}�;
�0 й9��Or��q0���ߌ�2�����\��L9���5�8.��2wKp���nn���m�mv�].�%w)�dw� ��]�      A   %   x�3��=�9�4'�XA!%��$U!���8�+F��� �	x      B   V   x�u�;
�0 �99����i�"Z��T�o�8e~������s�9z����%�B��}l������辨O��D_��ܗ��"~"�R*      E   1   x�3��*�+I�-NUHT�M�,VHIU020P���QH�)��/����� s�      F   H   x�3�,J-�L-/�4�L��-��K�+)�/HLO�G�r���TgTgWg�S�1P�	\�	Nu&@u1z\\\ c�7S      I   &   x�3�IM����O�L,V(-��ɬJLI,����� �1	�      J   w   x�}�M
�0 D�ur�����$ۅI��?��bV�|�o5Woۣ�q�մ�9���:��z��{u���.w��q�K�;��'����pP8 G�Q��'�p&����pQ� ?o��/��3      M   �   x�}�A� E��a�Q����tcb������`�o��;�?��7���]gK�#3DS:	Ak�}��奌}H����UJ9]�\���G-�p�.�LV?�P�WX}���![gt�څ 6��P�����Y9ޟ9���0�+ZIl{�?�q xPw�      O   s   x�3��,HN.�,(�2�JML.�2��K�(�
�2�.)J,��2�t,�����2�t
d�p�sz��pYp� �̼t�̤�ĢJ.K����ʤ��l.CN�ʂ���b�=... ^�!n      Q      x��=ks�6���_���~ٱ����tۛ��n榭7�ݹ�v4	Y�)�!);ގ������N4�I-88x�7��ɢLa>i�T��N�ey�<�s\���9no+��1���㻽�Ε�-���sRX7J�MY�x��YP�iS�dZ�9���Q9�&���~F�}u$M�"lѿ�+x�D��K�@��t4��uV��a�,o��㻁��r٠�د`�Ț&+�f"�~����q?,�OI[/��8)�Yv���<��g o����e��zu i*����](��̳ı|��h�d�����7Z���L�oU�������2x�y�,d�� �̲zτ�9x���h�k�o��'�򭖻�M��s�zV��m_�9�.����^ �P{�f�����E��5���)L�ȃ��q`�U�3x�>iS^g����J!L�)hA��0-� 	&F�����Z���b��0O�������,���wh�,*�r�4��q��X�������@�y���w�Q�װ����aPd0K�R4׾]�L]K�[�|�L�in�Z%��SĪή��X԰��������� �@M�2������2oE� j|��V1� ��"�1�6I���>�޻o��*��<M�L�:���2��q��;��%�g�^5Ld���_���߅�ٛ��O�VyX�s�����&���Gx}"�#�ѝ�����9�G����xO+�2uz��%Yko�At��C����m�
���yDg���U�vV
�|�"��쿀R�N�
�9�lDS0ZF���"=0/+�b=�������i� @�LĚa�cܜ��6�k�4�j�gnTm>><5�e~E��d�/u2W�T�Dp<|��.Ȋ�t�D������n���K3~��9^).���.�i��!*̑ ���`J�ūt�ªA`��;�G1P�;������l��˜�F�^�)=`8J6fpn�Nkb�\���S��ԞML�ђX
�!*����VG	;Ii0q��%1P�C0�<����Ekb�"�8f}��2�)�e�3nn�%��)�_1��4'Q�:�ƿS��`�B	��t� �����U�O��D����'[���PnRv�5�Ċq��K��x�񚼄p�f�1Y�,��)�PmNa�
��B�����l�P2�A�׶�YDب�[}�9iɳx+����$���D�?� �rz�Xi��OZA:C�:j�����Q���*kM#�e)� ��}�_D:�/�O0�/����E"�pn�zm�FXN��ܘi�D[�c`F�	����DeiaT��44ٸ��8�
�C���
>�e������H��a) �h�: ��\��,o��e	�t���~aC�D4;�E!dit5���v�XLX7T)�9-��.]���%��H�ςp�.��5���p&����m��U</���3ʆqKJ0�&�FO�U
�(�h���v��>�V^��M�bw�a	��R��>���Y~�Z�* C`L��Y1+�&c�iE	9 ���V-� ��8�(m[g�eI�а����F3�Y2wW6ɇG���2w_�}��6������uÝj���RS�C7��bK���_�LȬ��+��0�D��-^ϼz�\x�]̟u��q����G.��;)�db�z?.>fXi��p�Y�w�G�x�'��:��
�Ƚ�uZ����r`T̩�-��Ɨfu�P�3��j�.@1�f~�qQ�װ�o���d%�}O#��j�22"(#TF�6���������s:j����eC��E��"���L�B�������~+���kZ��};��5�2�?(�M&j G3����vFyV\��rDfH��AE ����G�߼����$P��~�����}��~7�Us����x Ä9�'��urTk��ar��|X�ny͞%I�,ڑ���rd�dŐ����a qD��8x%���9g�謓~G M&���"� -V�g����Y+Dʛ��:C�J���E�"����ԁ�	L�hC"Y�LQj����a��X~��XE�u�$5��5�����囘gެŤ�	u����[�f	�_����ں|�$ЖJȌ�!*":d�5�Am	�����1G�����|j��J�F���@8"�"����'���� ��ǞQ�"�|=]_��]��k�P3��@��9�2F���X�0[�S,�H�5�b
K��d ��.�ѓP݂�/R,$����F��֞��r� �AO��D8�oT��f�L���k�Ҧ�_�ې;C��s����mO�p��#5��詟�4��O�L3������[�&+P��oV��e���m�@��2f�M��҇JW�� ��r���-/������d�X">n>�@!^ɶ�*3��]]�-������`� ��������,`>U&�0���buT��]��UdC�Y�%���V4���O� �n��k�OW�Y�J�K���	a{p�ZQ&��O`H�P߽�xnU���ut3`n�sQ)�[@AU��b"�+������#�B>Q(�"�km�(��5���wϹ��c��fWL�<�7�Tn~^�Fל�OM�;u�J�8p�˪��])`~���s���A�����3Z
t�_{���ռl�hz6���ի�ޘ%b߹XF�N��7_'�lŗp�(J��bCTW�d������x^�3@?&���t���qo�=^�W��,�{G"H�tؚ����+RCyC&3ݸE�3����3F3�C
u.?�;Z��'X2�ܜJH1m�{�N�;� ���p����S醳����`9��LY��o��e�8p�W	cW	�O��k0�#�*xTO��	N�)q�ny����=g����P�Q�T���U*�����#��~^�������,9#�$1���Y�8����
�!�:>���#u��jP�ɭ:�8^�b�#�Vg����Fe 
��|�⡞�̪������*B�Ա��$3���5%Og��Q�;%���hj�u�_,a����'�<���;O�M�K�������[�i�~�����q��Qw^�<^�8�I�[>0Kw�S@U�tDj�E����"���p*xro}	�D��6e�Um��
�'�����=?�����j �I�͠Bgm�ɴ�Hu������k�j�i�w�N�����֯
$����x������fa�����L�C�(�u;-5�Z�hF�����vDV$���KԞt��2�@>��7]&Dk~���[�Y;_Nчw7Yے9�ɋ�)�Q�,���^��0-�+��4�V��?��dE����>ړ:�V
�M���A�͏�"�����,�B�U�A9<�4���a׊����MX0�M��v�N��_V'AQ
��� xY�H	<lw��x�.Ʈ���wl$��2B*�N�v5�+O���B��
G�E����'�6��@*��_:����Ǌ�D���.��=/x<�
���LF�v}we����d�g�jBD�����)%�f���uQ���Ӏ�5q�������R�&���feP���Q7�S�.��p8]U��W����ag�׉5�U���[%_�&[�����|y�'�u�L��׋�l��� �� o&C�Pt.J����V�P*|�<i'Ţ�T�Mo0i�7�}�D,zM�����![�陋��亱�D��_z<f�tgi��r��c�>cE[��+�ۚ�]IF-;C��g��0�L�G^��)���[9��0H���2:=gA�� L���?���&�Z�N�X�)�u��$�_B}?�YR
�?������,��n`( f�E����`U߂�i�obf�����\}���#a�6 Ѫq|��h�t꠪r����3�O�WY$����r"�X<'�&��GI�H>�$����?y�\�����2ȏ�����uT�����Ϡ�p���;z�,�� ��w�v�5�DD}`����z���ku1l�>���<�*�f�=�!��	.�-+����S��]��׈MW��$o��4��5"�>,��)Ay�� �
  �q��w���q*��J4�:~el.[kⲵ�KN�K��ʹiG���`��O���-vU�4��7��}��q䪱k�3��d�<ˊ��|�&;��}6zjV6�)��ͣ�B�$�Ūyp�y9�;�'�o�u��x���^���V���/�����t��u����#�}!��彠%1p��<�b�]gXY~�1��K���K��m����~Ӣŉ����+�5��R�֣Vf������W��&&��5ȗ����ɗ�����0���\:�����м9��K��Q���=��9zsg7��啲v����Ǌ��;2g�71C���3�m(K�$�<�,�s8>{�Y6�!��C�y��w��u|}�Jn��
T�5�q�4�d����t�u�$TB��h��3���56����T�rc�����u���r⺧{�D1{A��C�y��)xje/��#x���Ʋp�栉8u[�ThN�E�&��lo�n��$�8�[6���o�{3#�2M+�dfKc3ܖe>uy	����sXkp��n�t^��e�����D�bL�[Ra�TXs�݁����U��E����\&�ڸ�,

<���)�"��pv�H��w�c��⫬H�^�ؓ�Ƥ�_����~�v����ĕ��=���ܝ� �jɎ�qi$�nf+:p �S�v��]Fc�f1a���ED��Y��k�}O�z&݉�Տ����!��͒��閳�~�I��z]�`�^a|x�Zò ˘�Z��&�;��:��^�+�ӫD�+:c{S�W�7d"֝�a�r�� n�s��+��Z*-�V��}ˡ��+�;�Q��@T�]���2��#�5��ϊ�b9ͳf�&��w�����//0xz�{&�8��rSgz�h��A+=-���Ò�5���<��;�1UM�H�U����6몧N���<��e샭1���0@�6���+f��qr���W�_.仔�֔�»��̕�B�<O�S��O�M�W^E�F	1A�;X���NrQ��ҥ.s����M�i�X�=��+�	m�E�^=�cN���E6x;���v`����c����6��`���)?��m�yY�{��ٜ�n�����yY�s�fM�߀��b�y�=��DЄװ�'h�MAr�~}����Y��E����H�3^��)6�͸n�ǁW�o>,	�Å�s"#1�,�K���U�V��j��r�@`����S�����%�,�˦��8� �$~�0$L/������Y/���¾�;�/��.]��EG?�NhO����u���
�~ݷa�@٭%���M��%s�5SvNNrjfE�J(
���z�g-��1�zB�iZæ!8%�e��l&n��7�iZ�`D�sq{ ~"��p!�:�X%�k`A��m-�����sm�D����!2i�����2�o\�CY�,����
�.
�
����c���A\���~����f_��N�6���TY�Kݲ/���A�y�"t�`{�`�+�`�����Q�!ׂ�5�ж�VWL���4޵fn%��i~�O$�&��E�q�*CX�h�����5�tw�ĥ�MƟ_���X���}�(��9�A��i�!�VH�X��zu��� 'q�xw��3���O0�){���jU������0�����zl��>h��۠�Zd�,�S� =9n��5��U�}0Ҧ�o�8����R~?"tM�i�$���0��_���h�\����.�1��^^�{pot|O�o��u�S?;t�r/�]�!`���X�6D@����_�}�8!�`&�8�!"�J�	Zs�U�<�#s�5g۲%��0O�b�S�)�[�a��� �!���9�l��s	��`�B���zI]ڠ����UG�P�{�<E��`QOK�6�����e9W�VR�Ib]SN�IHt�
W��ఢ()p�$%�3q|IKb�(@f��X��J^�J	>_΢ML����e}�R ��H�v6�Ȓ����MI�@���K���C�R^m�˄������պ.�|noN���}~q�_ �	n7�A[J�4�K���ΞMr�Ou0�c`�G]��>j��F�(�cz�;w�y���M3\\�{>�M�bz��XX?��S��}�x-��w����n�5O�Vx��ak*b�W0$��|����kQx(�����Ey�N�S�H�`Q,�ǐCz�J	y���}���X��8c��v��;�	�#f��Y)��^B��Y�.^��%�Mu�ɇ���H�p�À�e�����(ʓ��Z��`sI�����n�F�f7
|���Th�Ֆ�:�S����A��P�c��)����\^�?��t��NhR��?��s��d���9�o{I\�o�����_c��Zڊ>	~�R?8OE�;x���<��n�d�ۙE>�Y����׺o�!��3�h���G����i���I�R![���zp��"��&�>A�]����]C��Mv����er� T�7d�0"�uN�`��\La�
������&߀J��VSX�Y���$�T���7�Z�hF�!�&���QX�9Y��B�^�|�K���f�,�$i`�� ���@l���{zSO@�<���	�k6��"�Ϟ���iv�z�sg������pp�Нc+�(Zg��F�1�J
ō��|�ð�t�/�?R	_�ֽ�� �~��n��p
�t���]6J�~;�ꫯ���J      S   @   x�3�4202�50�5�P00�21�26�3�4�60�H��*��L-�L-@21~��\1z\\\ �d�      T   �   x�}��� �5|��.�ĝ�1�3!��m�ehi��o-PcRY�{���H
"��0"1ר@U�k� ��iF'Ā�2T���X�=���S���숩q�h��`�̓*	���o�ѹ����\�7]�[&�b��]]f2S���Ba�nY���%���k����<3x�`�7ec�����(,��(�og�4         w   x�3�t�),�,���K-����L���\��Ғ���l���\��"N�DC�0gwêȀ2�Hg#gW����<�c�ʔ��̠(}��(����L� ��pӐ�\��@T$�b���� �y%�           x��ݏ�8����b��;�o�z'�T��:���}p�M�L�����g��8�V��H����<��G�]Ը�U��m�	�m�`�����y�� � �r���M=/ub;L�_gR�!-�H/l�;��z;�S�:+  _�ɾ��D� �@J'����E��cD��fx�jx�Ҵh,90��>-�i}A�DE�c���
����+%d��G���j��׹"TO�a�GHF*�*f���Dm�©�_��t�M�hcՈ�E����-��⣂%Z���B%,���)y.rD�5�`Oh.�)��<��U��w�sAKȸ��F$�[c���KJ0�c��w'��}��?����eb�`�w�X���i�o`�02��KCUO�i8�$�����Z�·<d��}��b�H�a�W�3�@���_�H$\S�� TC|	qG�`E�i��;QF�	h�f�9��V��ݴY��σ��� �T��`�2Q:n�+W~\S.2R֤�-�X_I������ t�G�A�<Ӳ��y�QJ�-A42K�D�I��/�G�e~���Drg�
��%y��ԁZ��cə�b��1'�ؖ�N�X�rQ"�\�4�҈��0�U�r�b:C�s��_G�
�v�`�o�JHw�qgf��&���;��ݛi�_1�Ũ�H��:&�a�����(@{���3+�F���j�1�U�;#ņ�3���6����@�:���e.�Y�WN7�w����Z��6���V3��b>���zW�0���?���A�U,�z�s�Fޝ��k5��&|{�ɹ^S�j��L��=�5.2��MS���v��ڧ7������du�n[97v�lK��}Lv�~��!��V_Q(W���Sݮq�l�E/"�02?��t�iUo	#��a8����!Y�|�ج`�Ɩ�#�5-j�}���h�h��IAl��8�M����3���<��7I�����UÒ��d#������O;l]�����Z#<n�������k���5��>R��=�ۄ���?�e��{]#��>�"�x� �|�w��5�2���U_�^ʛv=�ȴ7�mP�ñ��wjZd|�#/6#|1���х�j�5���n)!.��D~!^�
}.Fo]F�X�G�i �;v��ޥgs"�����C;�?�4V�za���?��Q�}iQ��k�R> �f�jO%A�>u�O]O�(:�� �ǥ����_Lܫƽjܫ�O_5�/¯�B�^7�u�^7~��+������r����B�         �   x�}��n� �gx��#[���ʖ�O�5�.1����%F�����_��->�B	�����p�?P�+�3X��3`ppǀ7�g�撨q��}�q/�2�Ӧ3#(}��z����ԋH��|�i�5�,��ڶ����6�L!3�`�� �)2A�B�S}EaJ{R�+�Fr�R��Ia�|��]��c��	�+I������n��K/����}U            x�3�4�4����� �X      W      x������ � �      Y   �  x��YK��H>W�
��3��J����؈=�fvo��(�$��!#�m��?fO�C�M 	D!�����ԗ��&��eoI��!L"�$z�ko]E	I��)� ��EY������s�#�G�;��J��wN�F
��W����`�+,<,�\�9�1�?�=������:ms}X���y`?@��!(����(a��{s����g�@Oɵb�	]�h����-���Δu��dV:�M}�C?�TKR���� a�	_�OK�X��V�֬j]T�7˪YVRr�M�ٸ`ó.��R?�Dt]�YiV�IMV����LT�Ib�ɝ!���=�eJDO)ёZ%p��L�L=���n"�D�ą��+�)����4r�C�Q~��X%�>�Y�:d����ꨪ�*apiB"�ԡwh�
/UDN+"{�Td��qt�NǪ�CGP"�p*7R�>�`Jn!rN"oIr�t�w��6L����*�Hr�����[�<��yԷ9C�y��'Sh
����|ܝ���Y����>��G���l����|��������a
�� ����>��]n�Xd���W��ս>Z���pw���<�mw���!bn�v&�����oȱ�������Rc��r:��~���.�ڬ�&�^�ð��LU��aG"I�*�]�e�Hz�'ܒ:EJu��|���V����$EHb�&�����i��?D���S��r����u�Ҕ��
�,��g|��R��4�;Bɗ}m�Pa���nQQ�Cab"���{Ev,s����	'SLG�J���~�1oZ_ٴ�@���o5���ޱ�2��d�H-T�Wsh[t�\��p'���n�a�빆�I���J�bTB6~mݎ϶l�THHi��:����,���+��I ���x��Dg��B����mKB��x(��;2��$E�1d��L$hLI�)}�+�C�e��4<ه���X�_��0yYVi��n[rq�������97I���8}hν�-�<�soIfք���Zخ)�H�,"7V�=�ވ,��NMWR��Ծ���߮)Ct$$�@p�����VdNA&q���FYR�+,�E
���j(��L?i���	*2:��	�8��I�줝�$� ��I�.�bB��s|�+J�ڜN�WRgs�����1�UAm�k��X�aT�`H屦"�#3���o�}�7/��}�r¿Y�B�¤a���z8e>{��8�/L���%�[�Y�l�a�b�=��T2��;��Ӝ�)���qO	���d	'�v��cI�t�u��3ɣɺґ�|-����*�������_�_��;޾���-tZ�^R���K��w49|O��f����᤽MmʣA�A=�!m�i֕�o� ��P�r���Qw�bsZ|Qe ���h���_�P�V�me������qo�)H�D��� 7'���`�A?��S���,��.��P���w�=B����T���1Nwga�;��f�K����U�)�CU�YjOAs^�m��� L/�^�c���5B�x{}w��m���� ��.�>�����4�c��A��V`��?��`�"ܒ�Xc�Kr�	ڌ��V�7;�y�x�%�=����O�ͶR!3d�&�YW>
�}n�e��K�.^3���:fȶ����@v=����������5�������c���`��@��OWݎ0a9�uf�1߃�J°w'Y���d5��=��4a�g�R��Ior{B�^��`��#nC��)���F/���)ˡ��N�������*�_�.L	���\ߝ�.[+��Ȱ��l�=.��$?�s�ʵͭ� d�^1��c>]q�LW�)e'E��uRz2�S�Kp�"K�jS�p�ˏ']BQ���ض�f4�~'�[+��p3�i�Xt�͐�ñwF[�&XF���?8#�;�#�/�y�?==���L�      [   �   x����n� E�׏iD�iB��y�^��ݼ���nH�0�\�g��ql!PC��P �a?��>E}���h����+<�>��ͅ��.�p� �}v��k������PSa�f�bt;�n���C_}�Ж�i7�(�7��zM:@�*t���Ԡ��%�eg��@�,�B	�YU�lJb�B;及���*O�?���}�����rp ��rp�BN9��J	��כ�x��:��h���]      ]   �  x��Y�r�:�Mߥw0>^�>��!�L	0@���_�e�8�3;ۆ�ɇcY�XU�Ͳ���� �Ϸ���l?/r�$ǻ���*��#D��_��-�^�F6��U�N]��Y^��Q�Z�r�?������ZN�,�nf�������c
�Q*���*��ֹ�C�T�$�z˝04��JtbƂ;P��ȁ�������Gn���Psw99��ֹY�u����~
��fn�#ϋ�5𘾄X���ߪ?�.;ʯX��S��X�1�X��d��v�:;�>�<pb�����yB��`Z �C��"�ײi��dW�	Ґ��Nc���e����ޣi�Eh��Q�i{t��)�y2+棱֒3�� T�0I����x2a�(Lr�����E�q��Vy��X}"*[f�,�Ϋ/��l��P�j���b�ٺC�fQʫ�hz�xm�������Te۞���$�����s�F��u	�ԑG�f����nQ��f��K�F�'�03ۉ�}�㥟�r���I���3O�aFyi�Y�3C~mr��y��%�����|?.���r�T��px�RDHa�+[sQ^B �&��z�}�Z������M�ؗ`�o3>gD�]7�Ӄ�����XT�/��m�՚����v|��q+;L�;�e-�ݻ�E��L��y���A���-�Zu����ȭ�ټ��s7{���A�^h��"�­�co�(�2lwcń�Ba�������E$^8B0��4�sC#������!KBp�h�H�������7D�_��sԑ�#���(%���l+��cE�Le��P$u���9�!|��#h����eWɚE���x1�B�C��2B�2�
RC�� ���n���%8f��\JJE��*��Q'VO�2�cʱ�QY��m"d�����W$g>���-g��^�W��n�S�+�IMζ��[6|br��b�i})�iAM/(��&R�ь!�s��+�Ql�vFy�
^`w����(�ˌ�0��q���Zv*h9��v}-���e:��/�7�,
��8�gd���rq#֗G�� [|sR���N~ {�ӗp���+�(��V��-���"�pG�x�g���fB��D�a ���udF!$�����'�JAy	��Qn�������mt���X�$P	�2�;�����2F!�vx�N�f�%Ȣ����҄�����HR�5G�!J��<7��|��,���}����.ͤdi%:���!�p����OY}�_ʻ:Z�s�6�����w��m¥9�\C#�W9�j_����ql�H�L�x��"�.E_d'U���j��+���.S+�.��A��Z'���vP}�q�Tw?�������X�TC�3Br��[.��=����V��(yBG�{l�9`n4�P�m#�� �y{{���.      _   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      a      x������ � �     