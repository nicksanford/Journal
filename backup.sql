--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: user; Tablespace: 
--

CREATE TABLE orders (
    id integer NOT NULL,
    name text,
    title text,
    cell_number character varying(255),
    email character varying(255),
    ambit_handle character varying(255),
    coupon_code character varying(255),
    referral text,
    alternate_keyword text,
    alternate_web text,
    website text,
    video_url text,
    alternate_video_url text,
    check_rates_url text,
    get_more_info_url text,
    valid_order boolean,
    email_to_client_sent boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    photo_updated_at timestamp without time zone
);


ALTER TABLE public.orders OWNER TO "user";

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO "user";

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: user; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "user";

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: user
--

COPY orders (id, name, title, cell_number, email, ambit_handle, coupon_code, referral, alternate_keyword, alternate_web, website, video_url, alternate_video_url, check_rates_url, get_more_info_url, valid_order, email_to_client_sent, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, photo_updated_at) FROM stdin;
20	Kelly & Kim Largent	Independent Consultants	4696885471	kimklargent@yahoo.com	K3Energy	DON526	John Morrision and Don Boyd	KIM	www.k3energy.joinambit.com			www.k3energy.energy526.com	K3Energy.myambit.com/rates-and-plans	K3Energy.myambit.com/get-more-info	f	f	2014-12-15 17:35:05.586071	2014-12-15 17:48:02.668418	Kim___Kelly_Largent.jpg	image/jpeg	932890	2014-12-15 17:48:02.640968
2	Mike Snow	Energy Consultant 	2543001526	msnow@myvideoshowsall.com	msnow	John526	John Morrison	msnow	http://MyVideoShowsAll.com 			http://MyVideoShowsAll.com	msnow.myambit.com/rates-and-plans	msnow.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.530925	2014-12-12 03:55:03.57302	Mike_Snow_Cropped.PNG	image/png	196644	2014-12-12 03:55:03.527722
1	Don & Brenda Boyd	Executive Consultants	9036540674	don@dboyd-ambitenergy.com	dboyd		John Morrison	DON		dboyd.myambit.com		www.energygoldrush.com/dboyd	dboyd.myambit.com/rates-and-plans	dboyd.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.524335	2014-12-12 03:57:53.602103	Don___Brenda_Boyd.PNG	image/png	533636	2014-12-12 03:54:10.159988
21	Judy Key	Marketing Consultant	5126636723	judykey51@gmail.com	DualEnergy	Mike-free1year	Yolanda McKelvey	DualEnergy		DualEnergy.myambit.com	DualEnergy.energy526.com		DualEnergy.myambit.com/rates-and-plans	DualEnergy.myambit.com/get-more-info	f	f	2014-12-16 18:55:04.223337	2015-01-05 06:25:06.788134	Judy_Key_Cropped.PNG	image/png	373696	2014-12-17 11:56:51.000895
22	Marjorie & Granville Edwards	Independent Consultants	6823339772	mmedwards.me50@gmail.com	MMGS		Michael Snow	MMGS		MMGS.myambit.com	MMGS.energy526.com		MMGS.myambit.com/rates-and-plans	MMGS.myambit.com/get-more-info	f	f	2014-12-16 21:10:04.919945	2015-01-04 00:08:21.955608	Marjorie___Granville_Edwards_Cropped.PNG	image/png	439903	2015-01-04 00:08:21.859476
13	Michael Sanford	Independent Consultant	2142053839	michael@textingcloud.net	mds			MONEY		mds.myambit.com	mds.energy526.com		mds.myambit.com/rates-and-plans	mds.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.573564	2014-12-14 22:30:40.722862	Sanford_Picture_for_Facebook.png	image/png	104179	2014-12-14 22:30:40.67113
15	Martha J. Kelly	Marketing Consultant	8179918722	kashkow14@gmail.com	marthakelly	john526	John Morrison	KASHKOW		marthakelly.myambit.com	marthakelly.energy526.com		marthakelly.myambit.com/rates-and-plans	marthakelly.myambit.com/get-more-info	f	f	2014-12-12 17:30:04.260404	2015-01-04 21:46:36.878774	Martha_J._Kelly_cropped.PNG	image/png	202832	2014-12-13 21:02:59.445571
5	Justin Dorsey	Independent Consultant	2545343040	jdenergy@vvm.com	929	MIKE-EVAL2WKS	John's training	JD	929.energy526.com			Www.jdenergy526.com	929.myambit.com/rates-and-plans	929.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.542675	2014-12-13 21:41:19.955232	FREE_ENERGY_Production.PNG	image/png	60343	2014-12-13 21:41:19.934034
18	Ely Erdan	Senior Consultant	3107222411	Ely.Energy@gmail.com	Ely	John526	John Morrison	Ely		Ely.myambit.com	Ely.energy526.com		Ely.myambit.com/rates-and-plans	Ely.myambit.com/get-more-info	f	f	2014-12-13 20:10:03.930676	2014-12-29 21:16:02.54646	Ely_Cropped.PNG	image/png	287388	2014-12-13 20:11:14.535579
19	Greg M Shaw	Independent Consultant	8179290220	gmsenergy@att.net	gms					gms.myambit.com	gms.energy526.com		gms.myambit.com/rates-and-plans	gms.myambit.com/get-more-info	f	f	2014-12-15 17:35:05.579263	2015-01-04 12:25:32.013475	AMBIT_STAR_Graphic_Red__White_and_Blue.PNG	image/png	45059	2015-01-04 12:25:31.973658
4	MaryLou Snow	Independent Consultant	6829708521	maybe321456@gmail.com	MLS			MLS		MLS.myambit.com	MLS.energy526.com		MLS.myambit.com/rates-and-plans	MLS.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.538763	2014-12-29 21:10:54.409494	MaryLou_Snow_Cropped.PNG	image/png	515138	2014-12-12 04:44:51.401235
17	Yolanda McKelvey	Marketing Consultant	5129215195	ymkambit@gmail.com	ymkenergy	JOHN526FREE	John Morrison's Intensified Training 120714	Legacy		ymkenergy.myambit.com	ymkenergy.energy526.com		ymkenergy.myambit.com/rates-and-plans	ymkenergy.myambit.com/get-more-info	f	f	2014-12-13 03:50:03.150393	2015-01-04 21:57:24.438738	Yolanda_McKelvey_Cropped.PNG	image/png	693054	2014-12-14 22:17:16.125765
8	John Morrison	Executive Consultant	5129314257	john@myvideotellsall.com	helpmejohn			JOHN	MyVideoTellsAll.com	MyVideoTellsAll.com	MyVideoTellsAll.com		helpmejohn.myambit.com/rates-and-plans	helpmejohn.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.554023	2014-12-14 23:51:03.629019	John_Morrison_Picture_Cropped_for_Banner_and_BusCard.PNG	image/png	143190	2014-12-14 23:51:03.599259
14	Claude Bourgeois	Marketing Consultant	8178220733	Claude3530@gmail.com	CaptainClaude	John526	John Morrison Training	CaptainC		CaptainClaude.myambit.com		captainclaude.whyambitworks.com	CaptainClaude.myambit.com/rates-and-plans	CaptainClaude.myambit.com/get-more-info	f	f	2014-12-12 15:55:03.925108	2014-12-13 22:00:04.838605	AMBIT_STAR_Graphic_Red__White_and_Blue.PNG	image/png	45059	2014-12-13 21:53:56.698828
9	Christie O'Brien	Senior Consultant	7275144296	c.obrien4062@gmail.com	christieo			CHRISTIE		christieo.myambit.com	christieo.energy526.com		christieo.myambit.com/rates-and-plans	christieo.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.557755	2014-12-15 03:34:37.148643	Christie_O'Brien_Picture_for_Banner_and_Graphic.PNG	image/png	400910	2014-12-15 03:23:58.481107
12	Mike & Jan Snow	Regional Consultants	8173604299	mdsnow01@gmail.com	mdjl	John526	John Morrison	SNOW		mdjl.myambit.com	mdjl.energy526.com		mdjl.myambit.com/rates-and-plans	mdjl.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.569732	2014-12-15 01:22:37.072253	Mike_and_Jan_Snow_Cropped.PNG	image/png	381147	2014-12-15 01:22:37.022284
7	Elizabeth Oliva	Consultant	8179255898	liz_oliva2002@yahoo.com	elizabetholiva			LIZ		elizabetholiva.myambit.com	elizabetholiva.energy526.com		elizabetholiva.myambit.com/rates-and-plans	elizabetholiva.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.550178	2014-12-15 01:41:39.96335	LIz_Oliva's_Picture_Cropped.PNG	image/png	163440	2014-12-15 01:41:39.944773
11	Jo Vitek	Independent Consultant	5122993316	Jovitek@gmail.com	djv			JO	www.textingcloud.net	djv.myambit.com	djv.energy526.com		djv.myambit.com/rates-and-plans	djv.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.565997	2014-12-15 03:03:13.38199	Jo_Vitek_Cropped.PNG	image/png	570109	2014-12-15 03:03:13.360158
10	Norma Olmos	Independent Consultant	8172195524	normao@jimaustinonline.com	nolmos	MIKE526	Michael Sanford	LIGHT		nolmos.myambit.com	nolmos.energy526.com		nolmos.myambit.com/rates-and-plans	nolmos.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.562103	2014-12-17 11:45:29.152271	Norma_Olmos_Cropped.PNG	image/png	160089	2014-12-17 11:45:29.12374
3	Michael Harris	Regional Consultant	2542586868	RevEnergy@my.com	RevolutionaryEnergy	John526	John Morrison & Michael Sanford	Revenergy	RevolutionaryEnergy.JoinAmbit.com			RevolutionaryEnergy.Energy526.com	RevolutionaryEnergy.myambit.com/rates-and-plans	RevolutionaryEnergy.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.534993	2014-12-30 12:36:37.933659	Michael_Harris_Cropped.PNG	image/png	344697	2014-12-12 04:36:28.01413
6	Gene Allen	Independent Consultant	2144028140	gca8140@gmail.com	gca			GENE		gca.myambit.com		https://www.youtube.com/watch?v=xrIuZ_abUOQ	gca.myambit.com/rates-and-plans	gca.myambit.com/get-more-info	f	f	2014-12-10 23:36:53.546419	2015-01-04 20:33:20.534354	Success_Magazine_Cover_Art_Production.PNG	image/png	292765	2015-01-04 20:33:20.480324
16	Dale & Laura Tomlinson	Independent Consultants	3252344108	dale2506@yahoo.com	Tomlinson	John526	John Morrison email list	FreeEnergy	Tomlinson.myambit.com			www.tomlinson.energygoldrush.com	Tomlinson.myambit.com/rates-and-plans	Tomlinson.myambit.com/get-more-info	f	f	2014-12-12 20:25:03.146826	2014-12-29 03:45:00.032405	Inc_Magazine_Production.PNG	image/png	198853	2014-12-13 21:27:53.469871
49	Howard Holloway	Independent Consultant	2542141995	hholloway526@gmail.com	howardh	john526	John Morrison (at Training Session	howardh		howardh.myambit.com	howardh.energy526.com		howardh.myambit.com/rates-and-plans	howardh.myambit.com/get-more-info	f	f	2015-01-05 22:19:04.183138	2015-01-06 12:16:12.069969	Never_Sacrifice_Production.PNG	image/png	107343	2015-01-06 11:31:08.029468
40	Rodger L. Scott	Executive Consultant	8179383790	rodger@esninc.net	esn	\N	Michael Sanford	esn	\N	esn.myambit.com	\N	esn.energygoldrush.com	esn.myambit.com/rates-and-plans	esn.myambit.com/get-more-info	\N	f	2015-01-04 16:09:20.4344	2015-01-04 16:09:20.4344	\N	\N	\N	\N
25	John Fraser, M.D.	Independent Consultant	7137246212	jjfraserjr@gmail.com	jfraser	john526	John Morrison	jfrasermd		jfraser.myambit.com		www.jfraser.energygoldrush.com	jfraser.myambit.com/rates-and-plans	jfraser.myambit.com/get-more-info	f	f	2014-12-23 03:55:08.4008	2014-12-23 04:07:58.638958	John_Fraser_MD_Cropped.PNG	image/png	556359	2014-12-23 04:07:58.602021
30	Ralph & Ann Nicosia	Executive Consultants	7132543491	texasbestenergy@comcast.net	texasbestenergy	John526	John Morrison	coach526	www.coach526.com		texasbestenergy.energy526.com		texasbestenergy.myambit.com/rates-and-plans	texasbestenergy.myambit.com/get-more-info	f	f	2014-12-24 22:50:03.085107	2014-12-24 23:01:21.274065	Ralph___Ann_Nicosia_Cropped.PNG	image/png	245469	2014-12-24 22:57:48.567638
26	Kathy Jackson	Network Marketing Professional	8176182075	kathiesoffice@yahoo.com	kathy		John Morrison Training Temple	kathy		kathy.energy526.com.myambit.com		kathy.whyambitworks.com	kathy.energy526.com.myambit.com/rates-and-plans	kathy.energy526.com.myambit.com/get-more-info	f	f	2014-12-23 03:55:08.411078	2014-12-23 23:20:43.895289	Kathy_Jackson_Cropped.PNG	image/png	660488	2014-12-23 04:11:54.964803
35	Tony J. Dines	Marketing Consultant	8434107987	tdines@yahoo.com	tdines	MIKEFREE03	Intensity Training	TDINES		http://tdines.myambit.com	http://tdines.energy526.com		http://tdines.myambit.com/rates-and-plans	http://tdines.myambit.com/get-more-info	f	f	2014-12-29 21:57:04.003785	2014-12-30 06:38:42.11574	FREE_ENERGY_Production.PNG	image/png	60343	2014-12-30 06:38:42.080497
27	Paul Hopper	Independent Consultant	2102879061	smartpower.ambitenergy@yahoo.com	smartpower	John526	John Morrison	Pablo	paulhhopper.com			paulhhopper.com	smartpower.myambit.com/rates-and-plans	smartpower.myambit.com/get-more-info	f	f	2014-12-24 18:30:03.511005	2014-12-24 19:48:44.5983	Never_Sacrifice_Production.PNG	image/png	107343	2014-12-24 19:11:01.526227
41	Heath & Lori Cook	Regional Consultants	8179387456	hlcook@sbcglobal.net	hlcook	\N	Michael Sanford	hlcook	hlcook.joinambit.com	\N	hlcook.energy526.com	\N	hlcook.myambit.com/rates-and-plans	hlcook.myambit.com/get-more-info	\N	f	2015-01-04 16:09:20.440719	2015-01-04 16:09:20.440719	\N	\N	\N	\N
42	Marty Chartier	Senior Consultant	2146810261	mcc@airmail.net	mc2e	\N	Michael Sanford	MARTY	\N	mc2e.myambit.com	mc2e.energy526.com	\N	mc2e.myambit.com/rates-and-plans	mc2e.myambit.com/get-more-info	\N	f	2015-01-04 16:09:20.446725	2015-01-04 16:09:20.446725	\N	\N	\N	\N
33	Pam & Tom Castagnola	Independent Consultants	2147621236	pkchromebiz@gmail.com	fliptheswitch	PAT526	Pat Ezernack	SPARK		fliptheswitch.myambit.com		https://www.youtube.com/watch?v=gDnhHM6aXz0&feature=youtu.be&list=PLOidOX20OSczuTpHa2sGZhV3Q2qDYI8uo	fliptheswitch.myambit.com/rates-and-plans	fliptheswitch.myambit.com/get-more-info	f	f	2014-12-25 00:10:03.254585	2014-12-25 00:13:12.08511	Pam___Tom_Castagnola_Cropped.PNG	image/png	328635	2014-12-25 00:13:12.059413
37	Sharon Mills	Energy Consultant	8172191698	sharonmills55@gmail.com	gracetou		Michael Sanford	GRACE		gracetou.myambit.com		gracetou.whyambitworks.com	gracetou.myambit.com/rates-and-plans	gracetou.myambit.com/get-more-info	f	f	2015-01-04 16:09:20.409016	2015-01-08 00:47:40.474388	FREE_ENERGY_Production.PNG	image/png	60343	2015-01-08 00:47:40.443415
29	Blenda Aycock	Executive Consultant	3256505280	blenda.david@verizon.net	dba	John526	John Morrison	dba	dba.energygoldrush.com			dba.energygoldrush.com	dba.myambit.com/rates-and-plans	dba.myambit.com/get-more-info	f	f	2014-12-24 21:50:03.555993	2015-01-04 00:33:59.723259	Blenda_Aycock_Cropped.PNG	image/png	253256	2015-01-04 00:33:59.704977
28	Joe & Cynthia Cappadona	Senior Consultants	4097718621	joecappado@aol.com	cappadona	John526	John Morrison	cappadona		cappadona.myambit.com.myambit.com		cappy.energygoldrush.com	cappadona.myambit.com/rates-and-plans	cappadona.myambit.com/get-more-info	f	f	2014-12-24 21:25:03.308944	2014-12-29 21:16:25.536752	Joe___Cynthia_Cappadona_Cropped.jpg	image/jpeg	116519	2014-12-24 21:30:41.582871
31	Clyde George	Senior Consultant	8172333964	clyde.george@yahoo.com	gcriss	John526	John Morrison	gcriss		gcriss.myambit.com	gcriss.energy526.com		gcriss.myambit.com/rates-and-plans	gcriss.myambit.com/get-more-info	f	f	2014-12-24 23:15:03.33188	2014-12-29 21:16:51.146504	AMBIT_STAR_Broze_Production.PNG	image/png	14906	2014-12-24 23:22:10.719705
32	Pat Ezernack	Senior Consultant	2144607533	pat@teamfin.com	pge		Michael Sanford	pge		pge.myambit.com	pge.energy526.com		pge.myambit.com/rates-and-plans	pge.myambit.com/get-more-info	f	f	2014-12-24 23:35:03.462443	2014-12-29 21:17:00.293909	FREE_ENERGY_Production.PNG	image/png	60343	2014-12-24 23:48:40.593249
34	Sherry Dunn	Independent Consultant	2145375935	dunnsl0849@att.net	sherrydunn	Pat526	Pat Ezernack	sherrydunn		sherrydunn.myambit.com	sherrydunn.energy526.com		sherrydunn.myambit.com/rates-and-plans	sherrydunn.myambit.com/get-more-info	f	f	2014-12-25 00:20:02.843669	2014-12-29 21:17:09.725354	FREE_ENERGY_Production.PNG	image/png	60343	2014-12-25 00:26:15.976519
38	JJ Salomon	Senior Consultant	2143926450	j.salomon03@gmail.com	jj	\N	Michael Sanford	jj	mylightduty.com	\N	jj.energy526.com	\N	jj.myambit.com/rates-and-plans	jj.myambit.com/get-more-info	\N	f	2015-01-04 16:09:20.420703	2015-01-04 16:09:20.420703	\N	\N	\N	\N
39	Lee Sansing	Independent Consultant	8178293807	leesansing@gmail.com	cl4	\N	Michael Sanford	cl4	\N	cl4.myambit.com	cl4.energy526.com	\N	cl4.myambit.com/rates-and-plans	cl4.myambit.com/get-more-info	\N	f	2015-01-04 16:09:20.42732	2015-01-04 16:09:20.42732	\N	\N	\N	\N
43	Steve & Fran Ostrom	Senior Consultants	2547221770	franostrom@hotmail.com	freedomwithostroms	john526	John Morrison	freedom	www.OstromEnergy.com		freedomwithostroms.energy526.com		freedomwithostroms.myambit.com/rates-and-plans	freedomwithostroms.myambit.com/get-more-info	f	f	2015-01-05 06:54:04.538684	2015-01-06 10:28:06.183574	Fran_Ostrom_Cropped.PNG	image/png	264851	2015-01-06 10:17:30.969894
44	Carol Peters	Independent Consultant	5129177688	carolpetersrn@yahoo.com	cpetersrn	john526	John Morrison	CAROL		cpetersrn.myambit.com	cpetersrn.energy526.com		cpetersrn.myambit.com/rates-and-plans	cpetersrn.myambit.com/get-more-info	f	f	2015-01-05 13:39:03.933046	2015-01-05 14:02:06.340402	Carol_Peters_Cropped.jpg	image/jpeg	52393	2015-01-05 13:54:58.264177
46	Mynea Short	Senior Consultant	3256684693	myneashort@gmail.com	mshort	john526	John Morrison	Mynea	http://mshort.energygoldrush.com/			www.mshort.energygoldrush.com	mshort.myambit.com/rates-and-plans	mshort.myambit.com/get-more-info	f	f	2015-01-05 19:26:03.7321	2015-01-07 16:21:27.941027	Inc_Magazine_Production.PNG	image/png	198853	2015-01-07 16:18:16.23632
47	 Julie B Johnson	Independent Consultant	2544938948	jjohnson12@hot.rr.com	earlyretirement	John526	John Morriaon'a training, website & text	money1		earlyretirement.myambit.com	earlyretirement.energy526.com		earlyretirement.myambit.com/rates-and-plans	earlyretirement.myambit.com/get-more-info	f	f	2015-01-05 20:20:02.938608	2015-01-06 11:26:23.963566	Never_Sacrifice_Production.PNG	image/png	107343	2015-01-06 11:26:23.928097
45	James Stafford	Independent Consultant	9792299598	jamess212@aol.com	staffordenergy	john526	John Morrison	stafford		staffordenergy.myambit.com	staffordenergy.energy526.com		staffordenergy.myambit.com/rates-and-plans	staffordenergy.myambit.com/get-more-info	f	f	2015-01-05 19:21:03.525383	2015-01-07 12:11:17.279831	FREE_ENERGY_Production.PNG	image/png	60343	2015-01-06 11:22:27.478641
36	James & Diane Mills	Independent Consultants	8324658403	dianemillsrn@yahoo.com	jamesmills	MIKE-FREE1YEAR	DR. JOHN FRASER	JAMES		jamesmills.myambit.com	jamesmills.energy526.com		jamesmills.myambit.com/rates-and-plans	jamesmills.myambit.com/get-more-info	f	f	2015-01-02 02:13:15.841428	2015-01-08 01:10:04.593492	James___Diane_Mills_-_Cropped.PNG	image/png	326942	2015-01-02 19:27:55.263019
23	Don & Debbie Tossie	Independent Consultants	5415318111	1craternation@gmail.com	craternation	john526	John Morrison	CRATER		craternation.myambit.com	craternation.energygoldrush.com		craternation.myambit.com/rates-and-plans	craternation.myambit.com/get-more-info	f	f	2014-12-17 20:05:05.786145	2015-01-06 03:37:01.032383	Don___Debbie_Tossie_Cropped.PNG	image/png	177552	2015-01-04 00:22:46.650759
48	Vance Worsham	Consultant 	8477320597	vworsham111@yahoo.com	vance	john526	John Morrison	vance		www.vance.myambit.com		www.ambitlifestyle.com	www.vance.myambit.com/rates-and-plans	www.vance.myambit.com/get-more-info	f	f	2015-01-05 21:09:02.923108	2015-01-06 11:29:58.425965	Never_Sacrifice_Production.PNG	image/png	107343	2015-01-06 11:29:58.392006
50	Placido Rodriguez Jr	Marketing Consultant	5126599906	placidojr4033@sbcglobal.net	Placido	john526	email from John Morrison	Placido		Placido.myambit.com	Placido.energy526.com		Placido.myambit.com/rates-and-plans	Placido.myambit.com/get-more-info	f	f	2015-01-05 23:32:03.6223	2015-01-06 11:33:30.094694	FREE_ENERGY_Production.PNG	image/png	60343	2015-01-06 11:33:30.057305
52	Sherry Denton	Regional Consultant	2542312939	sdentonambit@gmail.com	LiveItUp	john526	John Morrison	sherry		LiveItUp.myambit.com	LiveItUp.energy526.com		LiveItUp.myambit.com/rates-and-plans	LiveItUp.myambit.com/get-more-info	f	f	2015-01-06 02:40:11.177496	2015-01-06 11:38:12.917063	Never_Sacrifice_Production.PNG	image/png	107343	2015-01-06 11:38:12.886887
53	Susan K Hopper	Marketing Consultant	2549130402	susan@oceansandstherapy.com	skh	john526	Training	Security		skh.myambit.com	skh.energy526.com		skh.myambit.com/rates-and-plans	skh.myambit.com/get-more-info	f	f	2015-01-06 02:50:04.462364	2015-01-06 11:39:02.060653	FREE_ENERGY_Production.PNG	image/png	60343	2015-01-06 11:39:02.030209
54	Bruce Paxton	Independent Consultant	7244335443	energy333email@gmail.com	energy333	JOHN526	John Morrison	energy333		energy333.myambit.com		www.energy333.energygoldrush.com/presentation/?video=3D3	energy333.myambit.com/rates-and-plans	energy333.myambit.com/get-more-info	f	f	2015-01-06 02:58:04.081403	2015-01-06 11:40:35.572396	Bruce_Paxton_Cropped.jpg	image/jpeg	71089	2015-01-06 11:40:35.550442
57	Mike & Suzzane Reaves	Regional Consultants	2542242807	mike@electric-change.com	mymoneynow	john526	John Morrison	REAVES		mymoneynow.myambit.com		www.electric-change.com	mymoneynow.myambit.com/rates-and-plans	mymoneynow.myambit.com/get-more-info	f	f	2015-01-06 19:27:33.018515	2015-01-06 20:11:00.62361	Inc_Magazine_Production.PNG	image/png	198853	2015-01-06 20:11:00.597971
55	Gary Baumdraher	Regional Consultant	2547211269	mrgary21449@hot.rr.com	mrgary	john526		mrgary		mrgary.myambit.com	mrgary.energy526.com		mrgary.myambit.com/rates-and-plans	mrgary.myambit.com/get-more-info	f	f	2015-01-06 03:29:03.684695	2015-01-06 12:35:29.572925	Get_Plugged_In_Production.PNG	image/png	37175	2015-01-06 12:35:29.549349
62	Rich Randle	Consultant	2244132074	ambitspower247@gmail.com	richrandle	john526	Vance Worsham	richrandle	\N	richrandle.myambit.com	\N	richrandle	richrandle.myambit.com/rates-and-plans	richrandle.myambit.com/get-more-info	\N	f	2015-01-08 01:46:03.167114	2015-01-08 01:46:03.167114	\N	\N	\N	\N
51	Roberta Amos	Regional Consultant 	2547602646	roboamos@hotmail.com	Roboamosenergy	John526		energy		Roboamosenergy.myambit.com	Roboamosenergy.energy526.com		Roboamosenergy.myambit.com/rates-and-plans	Roboamosenergy.myambit.com/get-more-info	f	f	2015-01-06 02:38:08.969197	2015-01-06 18:46:25.559645	FREE_ENERGY_Production.PNG	image/png	60343	2015-01-06 11:36:58.491098
56	Doug & Rhonda Johns	Senior Consultants	2543077526	electricity526@gmail.com	johnsdw	john526	John Morrison	freedom1	www.johnsdw.myambit.com			johnsdw.energygoldrush.com	johnsdw.myambit.com/rates-and-plans	johnsdw.myambit.com/get-more-info	f	f	2015-01-06 04:56:04.808928	2015-01-06 19:25:51.309042	Doug___Rhonda_Johns_Cropped.PNG	image/png	206341	2015-01-06 12:45:06.238292
61	Patricia Finch	Marketing Consultant	5129712409	finchpatricia@sbcglobal.net	thriftyopportunity	john526	John Morrison	patricia		thriftyopportunity.myambit.com	thriftyopportunity.energy526.com		thriftyopportunity.myambit.com/rates-and-plans	thriftyopportunity.myambit.com/get-more-info	f	f	2015-01-08 00:46:03.812498	2015-01-08 02:30:34.295559	Inc_Magazine_Production.PNG	image/png	198853	2015-01-08 02:30:34.274998
59	Melynda Lilly 	Executive Consultant	8178468860	mlilly@flash.net	Lilly	Don52609	Don Boyd	Lilly		Lilly.myambit.com	Lilly.energy526.com		Lilly.myambit.com/rates-and-plans	Lilly.myambit.com/get-more-info	f	f	2015-01-07 11:41:24.560778	2015-01-08 02:33:30.987053	Melyanda_Lilly_Cropped.PNG	image/png	336014	2015-01-08 02:33:30.969673
58	Dale L Petter	Independent Consultant	5129314181	ambit.success@yahoo.com	oldestpet	john526	Training/website	Dale		http://oldestpet.myambit.com		http://bit.ly/EnergyGoldRush	oldestpet.myambit.com/rates-and-plans	oldestpet.myambit.com/get-more-info	f	f	2015-01-07 11:41:24.550179	2015-01-07 16:32:55.720814	Dale_L_Petter_Cropped.PNG	image/png	93748	2015-01-07 13:09:39.29893
63	James and  Carolyn Stapleton	Senior Consultant	9036547884	stapleto.j@sbcglobal.net	jstapleton	don52607	Don Boyd	jstapleton	\N	jstapleton.myambit.com	\N	energygoldrush.com	jstapleton.myambit.com/rates-and-plans	jstapleton.myambit.com/get-more-info	\N	f	2015-01-08 16:36:03.698649	2015-01-08 16:36:03.698649	\N	\N	\N	\N
60	Dorothy Elliott	Senior Consultant	2545412205	dmelliott@vvm.com	Retirement	John526	John Morrison	Dorothy		Retirement.myambit.com		Retirement.energygoldrush.com	Retirement.myambit.com/rates-and-plans	Retirement.myambit.com/get-more-info	f	f	2015-01-07 18:50:03.381589	2015-01-07 20:18:47.353736	AMBIT_STAR_Broze_Production.PNG	image/png	14906	2015-01-07 20:09:42.87383
64	Richard Riley	Senior Consultant	2545341291	RichardRiley526@gmail.com	ESC	John526	John morrison	ESC	\N	ESC.myambit.com	ESC.energy526.com	\N	ESC.myambit.com/rates-and-plans	ESC.myambit.com/get-more-info	\N	f	2015-01-08 18:56:05.443718	2015-01-08 18:56:05.443718	\N	\N	\N	\N
65	Bennie and Vivian Jackson	Independent Consultants	2144033440	vjackson@airmail.net	bljackson	don52606	Don boyd	bljackson	\N	bljackson.myambit.com	bljackson.energy526.com	\N	bljackson.myambit.com/rates-and-plans	bljackson.myambit.com/get-more-info	\N	f	2015-01-08 19:37:03.449843	2015-01-08 19:37:03.449843	\N	\N	\N	\N
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('orders_id_seq', 65, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY schema_migrations (version) FROM stdin;
20141205184559
20141209205824
\.


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: user; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: user; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

