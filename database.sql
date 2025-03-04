PGDMP     6    ,                z         
   onlineexam    14.2    14.2 +                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    24660 
   onlineexam    DATABASE     f   CREATE DATABASE onlineexam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE onlineexam;
                postgres    false            �            1259    24661 
   javascript    TABLE     �   CREATE TABLE public.javascript (
    question character varying,
    op1 character varying,
    op2 character varying,
    op3 character varying,
    op4 character varying,
    id integer NOT NULL,
    ans character varying
);
    DROP TABLE public.javascript;
       public         heap    postgres    false            �            1259    24666    javascript_id_seq    SEQUENCE     �   CREATE SEQUENCE public.javascript_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.javascript_id_seq;
       public          postgres    false    209            $           0    0    javascript_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.javascript_id_seq OWNED BY public.javascript.id;
          public          postgres    false    210            �            1259    24667    qcss    TABLE     �   CREATE TABLE public.qcss (
    question character varying,
    op1 character varying,
    op2 character varying,
    op3 character varying,
    op4 character varying,
    id integer NOT NULL,
    ans character varying
);
    DROP TABLE public.qcss;
       public         heap    postgres    false            �            1259    24672    qcss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qcss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.qcss_id_seq;
       public          postgres    false    211            %           0    0    qcss_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.qcss_id_seq OWNED BY public.qcss.id;
          public          postgres    false    212            �            1259    24673    qhtml    TABLE     �   CREATE TABLE public.qhtml (
    question character varying,
    op1 character varying,
    op2 character varying,
    op3 character varying,
    op4 character varying,
    id integer NOT NULL,
    ans character varying
);
    DROP TABLE public.qhtml;
       public         heap    postgres    false            �            1259    24678    qhtml_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qhtml_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.qhtml_id_seq;
       public          postgres    false    213            &           0    0    qhtml_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.qhtml_id_seq OWNED BY public.qhtml.id;
          public          postgres    false    214            �            1259    24679 
   regdetails    TABLE     �   CREATE TABLE public.regdetails (
    name text NOT NULL,
    qua text NOT NULL,
    email text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.regdetails;
       public         heap    postgres    false            �            1259    24684    regdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.regdetails_id_seq;
       public          postgres    false    215            '           0    0    regdetails_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.regdetails_id_seq OWNED BY public.regdetails.id;
          public          postgres    false    216            �            1259    24779    result    TABLE     �  CREATE TABLE public.result (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    scorehtml integer,
    correctanshtml integer,
    incorrectanshtml integer,
    scorecss integer,
    correctanscss integer,
    incorrectanscss integer,
    scorejs integer,
    correctansjs integer,
    incorrectansjs integer,
    sid integer,
    subb_date date DEFAULT CURRENT_DATE,
    subb_time time without time zone DEFAULT CURRENT_TIME,
    css_date date DEFAULT CURRENT_DATE,
    css_time time without time zone DEFAULT CURRENT_TIME,
    js_date date DEFAULT CURRENT_DATE,
    js_time time without time zone DEFAULT CURRENT_TIME
);
    DROP TABLE public.result;
       public         heap    postgres    false            �            1259    24778    result_id_seq    SEQUENCE     �   CREATE SEQUENCE public.result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.result_id_seq;
       public          postgres    false    220            (           0    0    result_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.result_id_seq OWNED BY public.result.id;
          public          postgres    false    219            �            1259    24685    rules    TABLE     T   CREATE TABLE public.rules (
    terms character varying,
    id integer NOT NULL
);
    DROP TABLE public.rules;
       public         heap    postgres    false            �            1259    24690    rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rules_id_seq;
       public          postgres    false    217            )           0    0    rules_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rules_id_seq OWNED BY public.rules.id;
          public          postgres    false    218            u           2604    24691    javascript id    DEFAULT     n   ALTER TABLE ONLY public.javascript ALTER COLUMN id SET DEFAULT nextval('public.javascript_id_seq'::regclass);
 <   ALTER TABLE public.javascript ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            v           2604    24692    qcss id    DEFAULT     b   ALTER TABLE ONLY public.qcss ALTER COLUMN id SET DEFAULT nextval('public.qcss_id_seq'::regclass);
 6   ALTER TABLE public.qcss ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            w           2604    24693    qhtml id    DEFAULT     d   ALTER TABLE ONLY public.qhtml ALTER COLUMN id SET DEFAULT nextval('public.qhtml_id_seq'::regclass);
 7   ALTER TABLE public.qhtml ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            x           2604    24694    regdetails id    DEFAULT     n   ALTER TABLE ONLY public.regdetails ALTER COLUMN id SET DEFAULT nextval('public.regdetails_id_seq'::regclass);
 <   ALTER TABLE public.regdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            z           2604    24782 	   result id    DEFAULT     f   ALTER TABLE ONLY public.result ALTER COLUMN id SET DEFAULT nextval('public.result_id_seq'::regclass);
 8   ALTER TABLE public.result ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            y           2604    24695    rules id    DEFAULT     d   ALTER TABLE ONLY public.rules ALTER COLUMN id SET DEFAULT nextval('public.rules_id_seq'::regclass);
 7   ALTER TABLE public.rules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                      0    24661 
   javascript 
   TABLE DATA           K   COPY public.javascript (question, op1, op2, op3, op4, id, ans) FROM stdin;
    public          postgres    false    209   �.                 0    24667    qcss 
   TABLE DATA           E   COPY public.qcss (question, op1, op2, op3, op4, id, ans) FROM stdin;
    public          postgres    false    211   �0                 0    24673    qhtml 
   TABLE DATA           F   COPY public.qhtml (question, op1, op2, op3, op4, id, ans) FROM stdin;
    public          postgres    false    213   H2                 0    24679 
   regdetails 
   TABLE DATA           N   COPY public.regdetails (name, qua, email, username, password, id) FROM stdin;
    public          postgres    false    215   t4                 0    24779    result 
   TABLE DATA           �   COPY public.result (id, name, email, scorehtml, correctanshtml, incorrectanshtml, scorecss, correctanscss, incorrectanscss, scorejs, correctansjs, incorrectansjs, sid, subb_date, subb_time, css_date, css_time, js_date, js_time) FROM stdin;
    public          postgres    false    220   5                 0    24685    rules 
   TABLE DATA           *   COPY public.rules (terms, id) FROM stdin;
    public          postgres    false    217   �5       *           0    0    javascript_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.javascript_id_seq', 24, true);
          public          postgres    false    210            +           0    0    qcss_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.qcss_id_seq', 32, true);
          public          postgres    false    212            ,           0    0    qhtml_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.qhtml_id_seq', 71, true);
          public          postgres    false    214            -           0    0    regdetails_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.regdetails_id_seq', 60, true);
          public          postgres    false    216            .           0    0    result_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.result_id_seq', 5, true);
          public          postgres    false    219            /           0    0    rules_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rules_id_seq', 16, true);
          public          postgres    false    218            �           2606    24697    regdetails regdetails_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.regdetails
    ADD CONSTRAINT regdetails_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.regdetails DROP CONSTRAINT regdetails_pkey;
       public            postgres    false    215            �           2606    24786    result result_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.result DROP CONSTRAINT result_pkey;
       public            postgres    false    220            �           2606    24699    rules rules_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rules
    ADD CONSTRAINT rules_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rules DROP CONSTRAINT rules_pkey;
       public            postgres    false    217               �  x�e��n�0����������9zJ�^z�ɕ-[!e.-J~���vP��H
���fH��k8�W菅���x�b�b���ʺ�?���z�V�u�����:�3�5yǦ�}K��c�p9���l~�њg��!��ٳ�aj���R�e8Q��T}��ى�B���XE���
U���+]g�ٰ9	{�$�cR��Z[Z�PD/��!*�����h� �nռ�v!G٧��>�]�i�?Z:�3	CJ�H:R���T6�PnǠxǜ������=��d]�$��G�l���p�%���#�]��l�͘G�KТ ��3y�Q^a*���b���ג��}t�u�#�����>C��ib���P͋ܵ!�����Qn����ֱ��v�o�� QUt1%�0�ΚWI��]�M���r���n(��ቦ}�)�i&tS�Z���w���Q�         �  x��S�r� >��b���J��)�i��K/+XY�lX	�O�E�]׭3#���X^tM�x�R��/��u��<l^g�=���G�cqa�$�\7
�
4f�(�R�a�s�.��\P�{��Q"����v��lTa_��1��ә���N4w��:V{�P���K<9C]P�*����f�2�����Ĕ��9k.d�2�G�ȫ��s��&�"�����Cj�|����|�4�$����@a��R2�m���7�����2L�p���m�)����r6�����S���|��UNe��)��Q�P��1N�V�sJ[^��]�I�04��+��t�ӶY#�*\�����]�ۥ,+��#�|4�e�*���G������ŝm�*��$0����j~R6V;'B�=�^�8+*\x�g"�Nd ��)x�����o6��O):t           x��SMs� =�_�/�Աd7'M?9������F�,6 Q��wۊ3�N� 3��ݷˮ�M']+c��uֺ���l:��D�A�^�"�ƺ�ga_KqJ���* o�z#���T�|���z����/+�xvI�@4�+�Q��IXGV�EE�LT=��� n�@T�F|+ �S�}(�y�[��aP-�w��6���Ov�@A�G9J1:�04^�����4�s����+�g�!(��H)b��q5}9���'�|!?���"Տ�r��V�&�I-r��z	��	bT�jE�Z�'R~�8ﱉ2��1�G�Y��u��b�j�_�i��r�����$�ߩ��l�B�z�V�jK���	���oG������u��䘆�J�����"��?�/�^Tk������pǸ�呗5/���H�`�1f��*��ت�<b�o��6l�5�8������Y���c�����@QQ$֡J��,���δj�`K�GwJ�J�G��K��)(\���䂲�*[��i2�`�۷+���P�?䇿"         �   x�}��� DϻC�"���z�4iVl� �P��/JM95�þٝ���3��PhۻّY�Z]f�:�
�&8��<EZ�s��b�Xz�ǽ�<� $��L�Ec�"�w>b��-�����^/&ca`�C�T8�p���5_ܬ��C�� O�         �   x�}��
�@��wɲw�]%VV>A�S!	�y~/�P#�;��cp��ԕί�wc�xy�@U�ik�!���� "٬I"�D���g&d���r�e�7����U�^�����b֥����"J��I
d��cH1Ir-:瞢v9f         P   x��H-JU(���QHJU��W�suw�sU�u���sWH�/R(� �)��KW�44�JI,������DNC3�=... �U     