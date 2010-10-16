--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: team_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: railerim
--

SELECT pg_catalog.setval('team_memberships_id_seq', 706, true);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: railerim
--

SELECT pg_catalog.setval('teams_id_seq', 263, true);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: railerim
--

COPY teams (id, name, team_home, what, "where", how, created_at, updated_at, thumbnail, image) FROM stdin;
2	Ruby on Rio	ruby-on-rio	A mail marketing for social networks.	--- \n"Entry URL:": http://socailmailer.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.312887	2010-10-16 13:45:43.655479	\N	\N
3	Manchester Telebanter	manchester-telebanter	Chat about tv & films 	--- \n"Entry URL:": http://telebanter.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.316506	2010-10-16 13:45:44.283189	\N	\N
7	Rio Drunkers	rio-drunkers	A small app for find a location to park your vehicle.	--- \n"Entry URL:": http://ondeestaciono.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.330246	2010-10-16 13:45:47.002167	\N	\N
9	Bit Zesty	bit-zesty	A property listing site where you can specify what you want to live near e.g.	--- \n"Entry URL:": http://livenear.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.33677	2010-10-16 13:45:48.302077	\N	\N
15	Contested Creativity	contested-creativity	Create a swear jar, invite friends to join, and tip the jar everytime you happen to "mis-speak".	--- \n"Entry URL:": http://yeahjar.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.355725	2010-10-16 13:45:52.465702	\N	\N
19	noowave	noowave	This team has yet to tell us about their application.	--- \n"Entry URL:": http://noowave.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.369676	2010-10-16 13:45:54.921181	\N	\N
20	tribo'w	tribo-w	This team has yet to tell us about their application.	--- \n"Entry URL:": http://limob.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.373439	2010-10-16 13:45:55.648365	\N	\N
28	The Tom Sellecks	the-tom-sellecks	Our app will help SaaS startups forecast the impact of pricing and conversion rates on their monthly recurring revenue.	--- \n"Entry URL:": http://saasmodeller.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.418923	2010-10-16 13:46:01.263196	\N	\N
30	ffef	ffef	faefea	--- \n"Entry URL:": http://rawr.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.425525	2010-10-16 13:46:02.681796	\N	\N
35	Iron Horse Coders	iron-horse-coders	This team has yet to tell us about their application.	--- \n"Entry URL:": http://bloodstone.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:11.999654	2010-10-16 13:46:06.195524	\N	\N
36	fahrbot	fahrbot	This team has yet to tell us about their application.	--- \n"Entry URL:": http://fahrbot.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.00316	2010-10-16 13:46:06.886623	\N	\N
41	Medium	medium	This team has yet to tell us about their application.	--- \n"Entry URL:": http://medium.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.02139	2010-10-16 13:46:10.238412	\N	\N
42	Nanoscale Plasma Thrusters	nanoscale-plasma-thrusters	You put things in your things.  Xzibit would be proud.	--- \n"Entry URL:": http://partypants.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.024664	2010-10-16 13:46:10.884722	\N	\N
45	o19s	o19s	We have been in every Rails Rumble, and done 1 out there app, and two game apps w/ Mobile phones.  Going to come up with something new.	--- \n"Entry URL:": http://o19s.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.035396	2010-10-16 13:46:12.889933	\N	\N
49	Silviu Postavaru	silviu-postavaru	A simple bookmark manager that is inspired by email clients, delicious/pinboard and instapaper.	--- \n"Entry URL:": http://bookifant.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.048974	2010-10-16 13:46:15.626129	\N	\N
57	Orange Sparkle Ball	orange-sparkle-ball	Basecamp meets Epic Win app.	--- \n"Entry URL:": http://sparklequest.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.07614	2010-10-16 13:46:20.900956	\N	\N
58	High Four	high-four	Hosted Continuous integration for Ruby	--- \n"Entry URL:": http://giraffee.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.079444	2010-10-16 13:46:21.504749	\N	\N
61	srslyawesome	srslyawesome	TinyDoc is like TinyURL for documents.  Upload a doc and send off the url to your friends who can browse the doc through the web.	--- \n"Entry URL:": http://tinydoc.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.485132	2010-10-16 13:46:23.645387	\N	\N
65	Thumbs Up Let's Do This	thumbs-up-let-s-do-this	tbd_b4_9_17	--- \n"Entry URL:": http://thumbsupletsdothis.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.500845	2010-10-16 13:46:26.624832	\N	\N
71	The Weebeteurs	the-weebeteurs	This team has yet to tell us about their application.	--- \n"Entry URL:": http://weebet.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.521836	2010-10-16 13:46:30.734582	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228063/423421/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228063/423421/screenshot.png
76	Serviceonrails	serviceonrails	This team has yet to tell us about their application.	--- \n"Entry URL:": http://nyc.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.537257	2010-10-16 13:46:34.443792	\N	\N
79	CWL	cwl	To be added.	--- \n"Entry URL:": http://edukit.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.546704	2010-10-16 13:46:36.740705	\N	\N
82	Kerygma	kerygma	to be defined	--- \n"Entry URL:": http://eleitor.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.55793	2010-10-16 13:46:38.918855	\N	\N
83	webmedapp	webmedapp	The book visualization	--- \n"Entry URL:": http://khazars.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.561459	2010-10-16 13:46:39.518132	\N	\N
86	Baneling Dignity	baneling-dignity	Allow people to alert authorities about the problems of the place you live.	--- \n"Entry URL:": http://cityinchaos.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.571931	2010-10-16 13:46:41.329906	\N	\N
92	Coding Zona	coding-zona	An application to manage personal finances, where the users can track spending, income and balances through twitter replies and direct messages.	--- \n"Entry URL:": http://twoney.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.945664	2010-10-16 13:46:45.553261	\N	\N
170	RailsRevo!	railsrevo	Web Interface to manage a Rails application Migrations. Visually creating, editing and removing. Also, showing current status (which migration is running now)	--- \n"Entry URL:": http://webmigrations.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.218834	2010-10-16 13:47:39.567201	\N	\N
4	Team Shitcago Weather	team-shitcago-weather	Directly compete against others through live-recorded challenges! Anything You Can Tweet, I Can Tweet Better!	--- \n"Entry URL:": http://anythingyoucantweet.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.3208	2010-10-16 13:45:44.883106	\N	\N
100	Code Fanatics	code-fanatics	Ability to manage and stream your iTunes content via the cloud to/from multiple machines and your iOS devices. Supporting DRM and non-DRM content both.	--- \n"Entry URL:": http://tunescloud.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.976512	2010-10-16 13:46:50.735882	\N	\N
103	Team Jetpack	team-jetpack	Youtube drinking game	--- \n"Entry URL:": http://powrhour.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.986384	2010-10-16 13:46:52.731494	\N	\N
107	INSIGNIA	insignia	Readorious will concentrate the news of the most important newspaper sites of a specific region/country (geolocalized).	--- \n"Entry URL:": http://readorious.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.099389	2010-10-16 13:46:55.486455	\N	\N
113	Factory	factory	A tool to build custom infographics using various APIs as data sources.	--- \n"Entry URL:": http://infografica.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.235025	2010-10-16 13:46:59.737404	\N	\N
114	digitalWorkbox	digitalworkbox	This team has yet to tell us about their application.	--- \n"Entry URL:": http://digitalworkbox.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.239037	2010-10-16 13:47:00.34105	\N	\N
120	Professional Drunks	professional-drunks	Report cop sightings and view them realtime	--- \n"Entry URL:": http://porkout.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.265759	2010-10-16 13:47:04.596749	\N	\N
124	endless poets	endless-poets	This team has yet to tell us about their application.	--- \n"Entry URL:": http://endlesspoem.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.810056	2010-10-16 13:47:07.742982	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233619/423706/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233619/423706/screenshot.png
130	Wuit	wuit	One thing that strikes me is that there is no good forums app built on Rails. Heck, there is no good forums app built on anything...	--- \n"Entry URL:": http://fame.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.831557	2010-10-16 13:47:11.953177	\N	\N
133	The Unmatched Paren	the-unmatched-paren	No clue what it will be yet, but it will be very simple.	--- \n"Entry URL:": http://dunno.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.841623	2010-10-16 13:47:14.157193	\N	\N
139	Area 51	area-51	TBD	--- \n"Entry URL:": http://area51.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.86192	2010-10-16 13:47:18.384922	\N	\N
140	One Man Band	one-man-band	WebGL-based 3D scenes hosting and viewer.	--- \n"Entry URL:": http://viewpot.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.866282	2010-10-16 13:47:18.9747	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233222/423690/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233222/423690/screenshot.png
144	The Planeteers	the-planeteers	The simple video sharing site	--- \n"Entry URL:": http://vidja.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.879535	2010-10-16 13:47:21.560593	/images/screenshots/default/thumb_default.png	/images/screenshots/default/default.png
149	Platform45	platform45	Debt collection app with voice, text and email integration	--- \n"Entry URL:": http://omecash.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.896469	2010-10-16 13:47:24.975442	\N	\N
151	The Dampness	the-dampness	This team has yet to tell us about their application.	--- \n"Entry URL:": http://civic.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.151062	2010-10-16 13:47:26.368421	\N	\N
154	Experience Web	experience-web	This team has yet to tell us about their application.	--- \n"Entry URL:": http://gubha.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.162654	2010-10-16 13:47:28.4052	\N	\N
158	CQROR	cqror	This team has yet to tell us about their application.	--- \n"Entry URL:": http://coding.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.176763	2010-10-16 13:47:31.171266	\N	\N
161	Team Awesome	team-awesome	Multiplayer realtime combat. Details pending because we still have to do some planning!	--- \n"Entry URL:": http://pixellator.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.187102	2010-10-16 13:47:33.35492	\N	\N
167	Have Mac Will Travel	have-mac-will-travel	This team has yet to tell us about their application.	--- \n"Entry URL:": http://pending.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.209175	2010-10-16 13:47:37.563442	\N	\N
174	Karate Fingers	karate-fingers	Simple schedulling invoices	--- \n"Entry URL:": http://billthemlater.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.231288	2010-10-16 13:47:42.59666	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232456/423646/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232456/423646/screenshot.png
176	random ideas	random-ideas	exchange nice tips beetween people to help them, in a easy way, find solutions about problems.	--- \n"Entry URL:": http://protips.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.237983	2010-10-16 13:47:43.831225	\N	\N
180	Impending Insomnia	impending-insomnia	Don't let your stuff get stolen while you're away.	--- \n"Entry URL:": http://placeholder.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.251322	2010-10-16 13:47:46.639528	\N	\N
186	Jumento Bom	jumento-bom	A micro advertising plataform for social networks. 	--- \n"Entry URL:": http://ion.r10.railsrumble.com\n	--- \n- devise\n- paypal\n	2010-10-16 12:41:19.817303	2010-10-16 13:47:50.813881	\N	\N
187	RuboCops	rubocops	hell yeah	--- \n"Entry URL:": http://rubocops.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.820688	2010-10-16 13:47:51.559144	\N	\N
5	Lerp Derp Derp	lerp-derp-derp	This team has yet to tell us about their application.	--- \n"Entry URL:": http://derp-board.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.324089	2010-10-16 13:45:45.652944	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236335/423864/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236335/423864/screenshot.png
6	Pwnbits	pwnbits	Foreign Language Exchange	--- \n"Entry URL:": http://nextlang.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.327196	2010-10-16 13:45:46.288022	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236324/423850/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236324/423850/screenshot.png
8	Highgroove	highgroove	Results Only Work Environment for Agile Teams	--- \n"Entry URL:": http://highgroove.r10.railsrumble.com\n	--- \n- Pivotal Tracker - task tracking\n- Opscode Platform + Chef  - continuous deployment\n- Rails 3\n- CruiseControl.rb - continuous integration\n- Munin - monitoringgem rails_code_qa\n- gem factory_girl\n	2010-10-16 12:41:10.333358	2010-10-16 13:45:47.670518	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287229078/423481/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287229078/423481/screenshot.png
190	TBD2	tbd2	Not too sure yet.	--- \n"Entry URL:": http://tbd2.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.830518	2010-10-16 13:47:54.840305	\N	\N
195	Jason Morrison's Little Death	jason-morrison-s-little-death	Because love can't wait.	--- \n"Entry URL:": http://instalover.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.849414	2010-10-16 13:47:58.273476	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232006/423617/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232006/423617/screenshot.png
198	Kiskonians Dancing in Lab Coats	kiskonians-dancing-in-lab-coats	Project management for hackers.	--- \n"Entry URL:": http://splendidbacon.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.859246	2010-10-16 13:48:00.40714	\N	\N
207	InbotZero	inbotzero	InbotZero is awesome\n	--- \n"Entry URL:": http://inbotzero.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.892202	2010-10-16 13:48:06.687079	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231734/423604/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231734/423604/screenshot.png
212	Tunnel Creatives	tunnel-creatives	The reminders hub for a forgetting person, Remindee allows you to dump all reminders and todos in from variety of places... Twitter, SMS, Email... you name it. When the time strikes, Remindee bugs you back through the same way making sure you don't forget what you had set yourself for.	--- \n"Entry URL:": http://remindee.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.170716	2010-10-16 13:48:10.285295	\N	\N
215	JazzCloud	jazzcloud	This team has yet to tell us about their application.	--- \n"Entry URL:": http://jazzcloud.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.181436	2010-10-16 13:48:12.430074	\N	\N
218	cssboy	cssboy	This team has yet to tell us about their application.	--- \n"Entry URL:": http://cssboy.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.192801	2010-10-16 13:48:14.243277	\N	\N
224	bruggers-1	bruggers-1	TBA	--- \n"Entry URL:": http://brug1.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.21283	2010-10-16 13:48:18.613153	\N	\N
229	Fenghi	fenghi	This team has yet to tell us about their application.	--- \n"Entry URL:": http://iwilliwont.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.230053	2010-10-16 13:48:22.028466	\N	\N
230	Penguin Craft	penguin-craft	A location aware live event (music, theatre) finder.	--- \n"Entry URL:": http://playbill.r10.railsrumble.com\n	--- \n- BACKENDGems\n- ----OmniauthFRONTENDjQuery\n	2010-10-16 12:41:21.233714	2010-10-16 13:48:22.632771	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231384/423578/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231384/423578/screenshot.png
237	AC4D Armadillos	ac4d-armadillos	Instant feedback on your presentation from your audience	--- \n"Entry URL:": http://chiefjustice.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.257338	2010-10-16 13:48:27.485777	\N	\N
240	spyou	spyou	Why do we find ourself always reinventing the well when I come to our invitation system.	--- \n"Entry URL:": http://launchanalytics.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.269173	2010-10-16 13:48:29.633272	/images/screenshots/default/thumb_default.png	/images/screenshots/default/default.png
246	rumblerslikeme	rumblerslikeme	This team has yet to tell us about their application.	--- \n"Entry URL:": http://hiringsquad.r10.railsrumble.com\n	--- \n- http://gist.github.com/627198\n	2010-10-16 12:41:22.724474	2010-10-16 13:48:33.810484	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223794/423235/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223794/423235/screenshot.png
252	love panic	love-panic	We want to develop open source ticket tracker which will be love humans.	--- \n"Entry URL:": http://sparta.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.743761	2010-10-16 13:48:37.87177	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230676/423547/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230676/423547/screenshot.png
259	ZOMG Hungry	zomg-hungry	A mashup between twitter and flickr.  Taking tweets and posting them over an image from flickr.	--- \n"Entry URL:": http://twazinga.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.766454	2010-10-16 13:48:42.521311	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230545/423532/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230545/423532/screenshot.png
10	PerfectLine	perfectline	We'll keep your photos private and create safe backups to the cloud.	--- \n"Entry URL:": http://photry.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.339971	2010-10-16 13:45:49.033067	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236209/423846/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236209/423846/screenshot.png
11	PixPlayer	pixplayer	I wanna play with flickr and face.com	--- \n"Entry URL:": http://pixplayer.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.343042	2010-10-16 13:45:49.85989	\N	\N
12	RubyRoomers	rubyroomers	Design your own geolocation race.	--- \n"Entry URL:": http://follow-the-clues.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.34608	2010-10-16 13:45:50.463906	\N	\N
13	Heavyweight rockstars	heavyweight-rockstars	Scrap an online html page, select some important information for you (a title, text, image, ...etc) in this page. Then, we generate for you a report available by an url and in any formats you want (json, xml, csv, html). \n<br />That's not all ! We also let you define a filter so that you get notified when an element you picked changes.\n	--- \n"Entry URL:": http://rockstars.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.349109	2010-10-16 13:45:51.068028	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236185/423844/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236185/423844/screenshot.png
14	Halp!	halp	A JavaScript file is included by a webmaster into each page of a web site. The script allows the webmaster to log in and add unlimited number of dynamic help tips around the site.	--- \n"Entry URL:": http://halp.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.352438	2010-10-16 13:45:51.8303	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236173/423838/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236173/423838/screenshot.png
16	pink developers	pink-developers	Captcha web service with custom designs and different validation services. The application consist of the captcha generator, captcha validator and a web interface for customizing captchas.	--- \n"Entry URL:": http://imcaptcha.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.359192	2010-10-16 13:45:53.108895	\N	\N
17	Thumblemonks	thumblemonks	To fix everything that is wrong with the music industry.  We want to make an app that will go far beyond it's humble beginnings at Rails Rumble.	--- \n"Entry URL:": http://thumblemonks.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.362607	2010-10-16 13:45:53.696949	\N	\N
18	Zelten am Meer	zelten-am-meer	Everyone has one or more lists with favorites in some specific categories (DVDs, Movies, Artists). This app is about collecting and sharing these oldtime favorites. Just that.	--- \n"Entry URL:": http://alltimefavorites.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.366137	2010-10-16 13:45:54.30325	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236147/423837/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236147/423837/screenshot.png
21	Big Bad Machine	big-bad-machine	Turns 37 Signals' campfire into the hub of all communications for your business & teams.	--- \n"Entry URL:": http://smokesignals.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.377116	2010-10-16 13:45:56.30022	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287213984/422885/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287213984/422885/screenshot.png
22	qindio	qindio	Placeholder	--- \n"Entry URL:": http://placeholder99.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.380624	2010-10-16 13:45:56.893739	\N	\N
23	JokeTeam	joketeam	Joke telling application on the net. Tell a joke and vote the best to fame. Also share the jokes to your friend through e.g. Facebook.	--- \n"Entry URL:": http://tellajoke.r10.railsrumble.com\n	--- \n- "* Rails 3"\n- "* jQuery + jquery-ujs"\n- "* koala"\n- "* Haml"\n	2010-10-16 12:41:10.384132	2010-10-16 13:45:57.624187	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236100/423833/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236100/423833/screenshot.png
24	Yotoco	yotoco	This team has yet to tell us about their application.	--- \n"Entry URL:": http://cahuma.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.387731	2010-10-16 13:45:58.296137	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236088/423832/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236088/423832/screenshot.png
25	The Potbellied Llama Farmers	the-potbellied-llama-farmers	Multi-account/subdomain app for casual employee rostering	--- \n"Entry URL:": http://workrz.r10.railsrumble.com\n	--- \n- Server setup\n- "* Debian"\n- "* Apache"\n- "* Passenger"\n- "* Ruby 1.8.7Gems:"\n- "* Rails 3.0.1"\n- "* Devise"\n- "* OmniAuthRuby on Rails IDE:"\n- "* Aptana Studio 3 Beta"\n	2010-10-16 12:41:10.391058	2010-10-16 13:45:58.897271	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236067/423828/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236067/423828/screenshot.png
26	RailsFactory	railsfactory	We create a Clique5 to share our interests, views & share our knowledges. Also members can share their chat log of Clique5 with their friends.	--- \n"Entry URL:": http://clique5.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.411983	2010-10-16 13:45:59.692579	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228844/423460/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228844/423460/screenshot.png
27	Red City Crew	red-city-crew	A social app build for all ruby local community around the world can use this service to organize, share, discover what is happening in their local development community.	--- \n"Entry URL:": http://redcity.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:10.4154	2010-10-16 13:46:00.42955	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235962/423822/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235962/423822/screenshot.png
47	Sikachu!	sikachu	This team has yet to tell us about their application.	--- \n"Entry URL:": http://sikachu.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.04215	2010-10-16 13:46:14.293792	\N	\N
29	Gabe's Crispy Duck Balls	gabe-s-crispy-duck-balls	A social media vacation planning and sharing site. 	--- \n"Entry URL:": http://planitshareit.r10.railsrumble.com\n	--- \n- "Gems included by the bundle:"\n- "  * abstract (1.0.0)"\n- "  * actionmailer (3.0.1)"\n- "  * actionpack (3.0.1)"\n- "  * activemodel (3.0.1)"\n- "  * activerecord (3.0.1)"\n- "  * activeresource (3.0.1)"\n- "  * activesupport (3.0.1)"\n- "  * arel (1.0.1)"\n- "  * bcrypt-ruby (2.1.2)"\n- "  * builder (2.1.2)"\n- "  * bundler (1.0.3)"\n- "  * capybara (0.3.9)"\n- "  * childprocess (0.0.7)"\n- "  * cucumber (0.9.2)"\n- "  * cucumber-rails (0.3.2)"\n- "  * culerity (0.2.12)"\n- "  * daemons (1.0.10)"\n- "  * devise (1.1.3)"\n- "  * diff-lcs (1.1.2)"\n- "  * erubis (2.6.6)"\n- "  * factory_girl (1.3.2)"\n- "  * factory_girl_rails (1.0)"\n- "  * ffaker (0.4.0)"\n- "  * ffi (0.6.3)"\n- "  * gem_plugin (0.2.3)"\n- "  * gherkin (2.2.8)"\n- "  * i18n (0.4.1)"\n- "  * jquery-rails (0.2.3)"\n- "  * json (1.4.6)"\n- "  * json_pure (1.4.6)"\n- "  * mail (2.2.7)"\n- "  * mime-types (1.16)"\n- "  * mongrel (1.2.0.pre2)"\n- "  * nokogiri (1.4.3.1)"\n- "  * pickle (0.4.2)"\n- "  * polyglot (0.3.1)"\n- "  * rack (1.2.1)"\n- "  * rack-mount (0.6.13)"\n- "  * rack-test (0.5.6)"\n- "  * rails (3.0.1)"\n- "  * railties (3.0.1)"\n- "  * rake (0.8.7)"\n- "  * rspec (2.0.0)"\n- "  * rspec-core (2.0.0)"\n- "  * rspec-expectations (2.0.0)"\n- "  * rspec-mocks (2.0.0)"\n- "  * rubyzip (0.9.4)"\n- "  * selenium-webdriver (0.0.29)"\n- "  * shoulda (2.11.3)"\n- "  * sqlite3-ruby (1.3.1)"\n- "  * term-ansicolor (1.0.5)"\n- "  * thor (0.14.3)"\n- "  * treetop (1.4.8)"\n- "  * tzinfo (0.3.23)"\n- "  * warden (0.10.7)"\n- "  * yard (0.6.1)"\n	2010-10-16 12:41:10.422248	2010-10-16 13:46:01.899497	\N	\N
31	Something WItty	something-witty	Beer is good.  People like to celebrate with beer. People like to buy buddies beer.  What if buying your friend a beer were as easy as clicking a button on the bar's website, facebook, twitter, etc? 	--- \n"Entry URL:": http://beerme.r10.railsrumble.com\n	--- \n- Rails 3.0.1\n- Moonshine (hacked for mysql2 support\n- jQuery\n	2010-10-16 12:41:11.982627	2010-10-16 13:46:03.301164	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235920/423820/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235920/423820/screenshot.png
32	Butz Brothers	butz-brothers	We gonna swap Mad bikes, yo.	--- \n"Entry URL:": http://bikeswap.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:11.987984	2010-10-16 13:46:03.893258	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235909/423819/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235909/423819/screenshot.png
33	Electric Sheep	electric-sheep	We aggregated your aggregators so you can slack off while you slack off.	--- \n"Entry URL:": http://atn.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:11.99198	2010-10-16 13:46:04.703187	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228779/423452/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228779/423452/screenshot.png
34	Carbon-based Lifeforms	carbon-based-lifeforms	Add tags to github projects you follow, and sort the personal feed so it displays comments, commits, etc ordered by the projects you care the most first	--- \n"Entry URL:": http://githubdumper.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:11.995915	2010-10-16 13:46:05.466137	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235893/423817/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235893/423817/screenshot.png
37	Dr. Teeth and the Electric Mayhem	dr-teeth-and-the-electric-mayhem	A media repository for social events. Disparate participants batch upload their pictures, videos, etc, metadata from the media is used to construct timelines of the events, event organizers can set up "keyframes" to demarcate various points in the event.	--- \n"Entry URL:": http://mayhem.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.006931	2010-10-16 13:46:07.487519	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228664/423448/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228664/423448/screenshot.png
38	StudGuru	studguru	Making men happy by making their women happier...one seemingly thoughtful gesture at a time.\n	--- \n"Entry URL:": http://studguru.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.010915	2010-10-16 13:46:08.154475	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235787/423814/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235787/423814/screenshot.png
39	Wildfire Guys	wildfire-guys	html5/websocket/css3 based real time collaborative brainstorming platform and idea sharing with a social twist	--- \n"Entry URL:": http://ideafarm.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.014447	2010-10-16 13:46:08.889704	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235731/423806/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235731/423806/screenshot.png
40	Bring Back Prop8	bring-back-prop8	User logs in.\n<br />User makes a free ad, starting price 100 USD\n<br />User then decide to pay for certain things, like extra images, 20 will be withdrawn. (Each user for the contest will start with 100 credits)\n<br />User then decide the stop price that the product can not go beyond.\n<br />User decides to lower the price of the product each day with 3 USD\n<br />User submits.\n	--- \n"Entry URL:": http://re-bay.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.01791	2010-10-16 13:46:09.523383	\N	\N
43	RedZebra57	redzebra57	We're building a web-app that pulls all your emails into one place. 	--- \n"Entry URL:": http://nbox.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.027969	2010-10-16 13:46:11.484108	\N	\N
44	AgileMeeting	agilemeeting	Beyond Skype video, Agile Meeting. Help you organize your distributed teams with a video chat service for daily standup's, sprint kickoff's and that ever fun, retrospective. 	--- \n"Entry URL:": http://agilemeeting.r10.railsrumble.com\n	--- \n- rails\n- rack\n- jquery\n	2010-10-16 12:41:12.03185	2010-10-16 13:46:12.090063	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235627/423803/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235627/423803/screenshot.png
46	Fruktave	fruktave	Aren't you tired of all these zip and rar files polluting your inbox?\n<br />We have decided to save the planet removing all these packagings for you!	--- \n"Entry URL:": http://unpack.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.038858	2010-10-16 13:46:13.599353	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228507/423440/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228507/423440/screenshot.png
48	Ginger Beards	ginger-beards	A simple application for story to do lists, shopping lists and checklists. Easy to enter and easy to use.	--- \n"Entry URL:": http://listcheckermaker.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.045656	2010-10-16 13:46:14.897365	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235442/423802/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235442/423802/screenshot.png
50	sudo CHOP	sudo-chop	This team has yet to tell us about their application.	--- \n"Entry URL:": http://qt.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.052548	2010-10-16 13:46:16.288858	\N	\N
51	10to1	10to1	The missing link between Twitter and Facebook.	--- \n"Entry URL:": http://natter.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.055941	2010-10-16 13:46:16.896368	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235421/423801/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235421/423801/screenshot.png
52	Little baby	little-baby	A webapp to register events, courses, conference and others about Ruby and Rails. In this first stage any person can indicate a event in his country. The indication will be moderated with a simple content management system. The second stage will be take this webapp to personalize any issue that have events and conferences.	--- \n"Entry URL:": http://events.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.059223	2010-10-16 13:46:17.53526	\N	\N
53	tampa.rb	tampa-rb	A distraction of images and words.	--- \n"Entry URL:": http://word.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.062497	2010-10-16 13:46:18.123732	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235342/423799/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235342/423799/screenshot.png
54	Foos League	foos-league	Foooooooosssssssbbbballllll!	--- \n"Entry URL:": http://foosleague.r10.railsrumble.com\n	--- \n- attribute_normalizer\n- cancan\n- compass\n- devise\n- devise_invitable\n- flash_messages_helper\n- haml\n- inherited_resources\n- omniauth\n- pusher\n- settingslogic\n- uuidtools\n- will_paginate\n	2010-10-16 12:41:12.06569	2010-10-16 13:46:18.895512	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235331/423797/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235331/423797/screenshot.png
55	active_bear	active_bear	We're building a geo location app that recommends places based on where your friends like to frequent.\n<br />We provide an easy way to discover new and interesting restaurants, bars and more that are relevant to your social group without all the effort of writing reviews.	--- \n"Entry URL:": http://beargeo.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.069134	2010-10-16 13:46:19.515064	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235320/423795/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235320/423795/screenshot.png
56	Softa	softa	railer.im is the new railer's profile website	--- \n"Entry URL:": http://railerim.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.072756	2010-10-16 13:46:20.102879	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235299/423793/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235299/423793/screenshot.png
59	Unfiniti	unfiniti	A service network bridge that composes your unique profile in a single place.	--- \n"Entry URL:": http://stumie.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.082724	2010-10-16 13:46:22.190664	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228252/423429/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228252/423429/screenshot.png
60	This we can have	this-we-can-have	This application will act as the IM gateway service which will allow user to register their IM accounts including gtalk, msn, yahoo, aim, jabber, etc and then send messages to their site users using those accounts.	--- \n"Entry URL:": http://imgateway.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:12.086293	2010-10-16 13:46:22.907734	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235183/423789/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235183/423789/screenshot.png
62	Los Hombres de Basura	los-hombres-de-basura	making sense of video	--- \n"Entry URL:": http://vidrome.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.489805	2010-10-16 13:46:24.299502	\N	\N
63	Abstraktion	abstraktion	A beautiful, simple and intelligent way to manage your personal finance...	--- \n"Entry URL:": http://moneybox.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.493542	2010-10-16 13:46:24.902914	\N	\N
64	Simpleweb	simpleweb	Social media collection, monitoring and discovery tool. Using PubSubHubbub, CouchDB and WebSockets/XMPP	--- \n"Entry URL:": http://socialsofa.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.497236	2010-10-16 13:46:25.52165	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235145/423788/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235145/423788/screenshot.png
66	The Flux Capacitor	the-flux-capacitor	A simple interface for the users to browse previous versions of their uploaded data. Kinda like mac's time machine but much more powerful.	--- \n"Entry URL:": http://ttm.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.504442	2010-10-16 13:46:27.305668	\N	\N
67	EFI Rumble	efi-rumble	Real time consumer products information	--- \n"Entry URL:": http://efi.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.508079	2010-10-16 13:46:28.003209	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235087/423787/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235087/423787/screenshot.png
68	Zażółć gęślą jaźń	za-g-l-ja	E-pinboard with yellow sticks you can move na save its position on screen. Also we would like to present new way of creating account and logging in.	--- \n"Entry URL:": http://pinmyboard.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.511696	2010-10-16 13:46:28.711205	\N	\N
89	The Team Formerly Known As	the-team-formerly-known-as	a quick app to make living in a shared building easier to manage. Collect dues, engage contractors. remove the need for ineffectual management companies.	--- \n"Entry URL:": http://getservice.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.581741	2010-10-16 13:46:43.523907	\N	\N
69	Hashtrain	hashtrain	Use Zokkit to find real estate. Zokkit is a free real estate search engine where you can search via location, map.	--- \n"Entry URL:": http://zokkit.r10.railsrumble.com\n	--- \n- Rails\n- jQuery\n- Sphinx full-text search server\n- Will-paginate\n- thinking-sphinx\n- "Freecsstemplates (http://www.freecsstemplates.org/preview/earthlingtwo/) "\n	2010-10-16 12:41:13.515222	2010-10-16 13:46:29.31341	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235071/423786/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235071/423786/screenshot.png
70	The Exceptionals	the-exceptionals	This team has yet to tell us about their application.	--- \n"Entry URL:": http://jazzz.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.518677	2010-10-16 13:46:30.041925	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235060/423780/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235060/423780/screenshot.png
72	Rocket26	rocket26	This team has yet to tell us about their application.	--- \n"Entry URL:": http://rocket26.r10.railsrumble.com\n	--- \n- jQTouch\n- Geokit\n	2010-10-16 12:41:13.524971	2010-10-16 13:46:31.517581	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234965/423778/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234965/423778/screenshot.png
73	ToLoco	toloco	A way to help people to wapanda!	--- \n"Entry URL:": http://wapanda.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.528047	2010-10-16 13:46:32.257968	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228030/423416/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287228030/423416/screenshot.png
74	Sweet Tomato	sweet-tomato	A tool to track pomodoros (keeping track of distractions and new TODOs) performed and manage TODOs in your Activity Inventory.  Utilizing the system of the the Pomodoro Technique.	--- \n"Entry URL:": http://sweettomato.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.53106	2010-10-16 13:46:32.932743	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234870/423774/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234870/423774/screenshot.png
75	New Monkey and The Old Gorillas	new-monkey-and-the-old-gorillas	A social network about what you don't like.	--- \n"Entry URL:": http://mopaia.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.53421	2010-10-16 13:46:33.679325	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234859/423773/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234859/423773/screenshot.png
77	Ain't Over Till The Fat Lady Sings	ain-t-over-till-the-fat-lady-sings	This team has yet to tell us about their application.	--- \n"Entry URL:": http://rightnearme.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.540391	2010-10-16 13:46:35.242101	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234831/423771/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234831/423771/screenshot.png
78	Pepto Abysmal	pepto-abysmal	RevSlide will be an easy-to-use online revision management application designed to eliminate email from the design workflow. It is geared towards freelancers, students, and small to mid-size creative agencies to help improve communication and productivity.	--- \n"Entry URL:": http://revslide.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.543563	2010-10-16 13:46:35.990233	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234820/423770/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234820/423770/screenshot.png
80	Made by Kiwi	made-by-kiwi	Song Notebook is an app to help musicians and song writers quickly create lead sheets.	--- \n"Entry URL:": http://mysongnotebook.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.550772	2010-10-16 13:46:37.498094	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234804/423769/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234804/423769/screenshot.png
81	Galaxy Cats Rumble Squad	galaxy-cats-rumble-squad	Collect, aggregate and visualize static and dynamic data about your application and libraries. This includes for instance performance data collected from services like New Relic or code statistics like flog score and lines of code.	--- \n"Entry URL:": http://miss-monitor.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.554768	2010-10-16 13:46:38.29929	\N	\N
84	Black and White	black-and-white	A simple application to play Go online.	--- \n"Entry URL:": http://govsgo.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.564616	2010-10-16 13:46:40.120468	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234698/423765/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234698/423765/screenshot.png
85	Command Line Commandos	command-line-commandos	That which does not kill us makes us stronger. \n	--- \n"Entry URL:": http://movienight.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.567789	2010-10-16 13:46:40.736898	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234645/423763/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234645/423763/screenshot.png
87	Azulejo	azulejo	The purpose of our webapp is filter all links posted in Twitter and shows the most popular organized by day, week, month. All URLs from shorteners will be solved and counted. With this, we intend count links from different shorteners and how the links are divided between these services.	--- \n"Entry URL:": http://trendlinks.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.575058	2010-10-16 13:46:42.099209	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287212892/422836/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287212892/422836/screenshot.png
88	The Cow Pilots	the-cow-pilots	A hosted status dashboard for business metrics! See sales, active user count, support requests, more. :)	--- \n"Entry URL:": http://motivationdashboard.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.578444	2010-10-16 13:46:42.826582	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234561/423762/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234561/423762/screenshot.png
90	Nuby on Rails	nuby-on-rails	This team has yet to tell us about their application.	--- \n"Entry URL:": http://choonsfm.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:13.585082	2010-10-16 13:46:44.142087	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234544/423760/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234544/423760/screenshot.png
91	LookyCode	lookycode	Blobly is a link reverser. Give us a link you want to know more about (but don't want to visit) and we'll tear it apart limb from limb and show you the results in a safe way.	--- \n"Entry URL:": http://blobly.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.940937	2010-10-16 13:46:44.902299	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234533/423757/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234533/423757/screenshot.png
93	55 Degrees of Awesome!	55-degrees-of-awesome	An awesome interactive Ruby code browser.	--- \n"Entry URL:": http://snoopdoc.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.949217	2010-10-16 13:46:46.329566	\N	\N
94	Vevi-men	vevi-men	Webapp for generating and sharing knitting patterns	--- \n"Entry URL:": http://yarnit.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.952655	2010-10-16 13:46:46.98919	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287227520/423403/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287227520/423403/screenshot.png
95	agilitic	agilitic	to-be-defined to-be-defined to-be-defined to-be-defined	--- \n"Entry URL:": http://agilitic.r10.railsrumble.com\n	--- \n- "- mySQL"\n- "- whenever"\n- "- vlad"\n- "- paperclip"\n- "- S3"\n- "- uuidtools"\n- "- jQuery"\n	2010-10-16 12:41:14.955898	2010-10-16 13:46:47.729586	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234381/423754/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234381/423754/screenshot.png
97	vwxyz	vwxyz	clock application	--- \n"Entry URL:": http://vwxyz.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.965143	2010-10-16 13:46:48.468584	\N	\N
98	Team Hyphen	team-hyphen	This team has yet to tell us about their application.	--- \n"Entry URL:": http://teamhyphen.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.969634	2010-10-16 13:46:49.149143	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234325/423750/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234325/423750/screenshot.png
99	Crazy Dudes	crazy-dudes	You write the test, and send to a friend solve. Dead simple and easy.	--- \n"Entry URL:": http://crazydudes.r10.railsrumble.com\n	--- \n- "- shikashi (http://github.com/tario/shikashi)"\n- "- rallhook (http://github.com/tario/rallhook)"\n- "- twitter (http://twitter.rubyforge.org)"\n	2010-10-16 12:41:14.973182	2010-10-16 13:46:50.035441	\N	\N
101	The incredible edible eggheads	the-incredible-edible-eggheads	This will be a rails implementation of the Pomodoro technique, allowing users to track plan, prioritize and work on their tasks, and provide helpful analysis of their work so that they can better estimate their tasks in the future and be more productive!	--- \n"Entry URL:": http://tuhmayta.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.979773	2010-10-16 13:46:51.334749	\N	\N
102	Third Vision	third-vision	This team has yet to tell us about their application.	--- \n"Entry URL:": http://caniaffordit.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.983033	2010-10-16 13:46:52.015705	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234298/423749/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234298/423749/screenshot.png
104	SinCity.rb	sincity-rb	Drinking game that uses twitter for question content. Based on the idea of the card game Asshole.	--- \n"Entry URL:": http://twitholegame.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.989556	2010-10-16 13:46:53.335282	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234272/423746/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234272/423746/screenshot.png
105	The Seeds of Chucky	the-seeds-of-chucky	A social platform for task delegation	--- \n"Entry URL:": http://nagalot.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.091322	2010-10-16 13:46:54.105043	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234261/423742/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234261/423742/screenshot.png
106	Kewple	kewple	An app for engaged couples to easily plan their weddings and engage their guests in a single repository for all of their wedding info. We hope to allow couples to create highly customizable pages with unique URLs they can send out with everything from music requests, RSVP info, gift registry links, and all of the miscellaneous info wedding guests or vendors might need.	--- \n"Entry URL:": http://kewple.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.095999	2010-10-16 13:46:54.738349	\N	\N
108	Waka Waka Foo Bar	waka-waka-foo-bar	There are currently a lot of free awesome learning resources scattered across the web - TED lectures, MIT OCW, Kahn Academy, etc. FreeKnow allows users to start a course, say Calculus, and then allow other users to post whatever resources they may know of to this course, i.e. videos, lectures, etc. The goal is to feature a multitude of courses and topics each exhibiting the best resources gathered from the web.	--- \n"Entry URL:": http://freedknow.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.215566	2010-10-16 13:46:56.139267	\N	\N
109	yourapi	yourapi	A tool for dynamically creating api feeds.	--- \n"Entry URL:": http://yourapi.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.219641	2010-10-16 13:46:56.893747	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234236/423741/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234236/423741/screenshot.png
110	@slapdashmedia	slapdashmedia	Nothing on the internet is ever really deleted...	--- \n"Entry URL:": http://deletedtweet.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.223294	2010-10-16 13:46:57.680405	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234162/423739/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234162/423739/screenshot.png
152	wally walrus	wally-walrus	This team has yet to tell us about their application.	--- \n"Entry URL:": http://suzuku.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.155042	2010-10-16 13:47:27.066912	\N	\N
111	Astrochemists	astrochemists	Google Aletrs for twitter. 	--- \n"Entry URL:": http://notiferi.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.226905	2010-10-16 13:46:58.343284	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234098/423729/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234098/423729/screenshot.png
112	Period. Full Stop.	period-full-stop	Peer to peer gambling and anti-welch system.	--- \n"Entry URL:": http://yoobetme.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.230347	2010-10-16 13:46:59.101703	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234087/423719/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234087/423719/screenshot.png
115	Traf Rumblers	traf-rumblers	Manage a fraternity.	--- \n"Entry URL:": http://republicas.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.242932	2010-10-16 13:47:00.999832	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287218729/423044/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287218729/423044/screenshot.png
116	Walter Fall	walter-fall	Streamr is a streaming web application that group most famous services of virtual life of companies and their employees (Github, Twitter, Facebook, Linkedin, etc.).	--- \n"Entry URL:": http://streamr.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.246631	2010-10-16 13:47:01.735402	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233971/423716/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233971/423716/screenshot.png
117	Shupla Hadouken	shupla-hadouken	A lightweight personal financial manager	--- \n"Entry URL:": http://cashr.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.251963	2010-10-16 13:47:02.493464	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233960/423712/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233960/423712/screenshot.png
118	blastoise	blastoise	mittun: manage events, including recurring events, location management, calendar, Google map integration and more	--- \n"Entry URL:": http://mittun.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.256185	2010-10-16 13:47:03.148799	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233949/423711/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233949/423711/screenshot.png
119	Bozeman Plus One	bozeman-plus-one	Our application will try to make translating a website much easier.	--- \n"Entry URL:": http://translate.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:15.259758	2010-10-16 13:47:03.76166	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226910/423373/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226910/423373/screenshot.png
121	The Hong Kong Matzarellas	the-hong-kong-matzarellas	Cookies are a non evil currency that helps you out in tracking and trading valuable information.	--- \n"Entry URL:": http://kookiebox.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.79837	2010-10-16 13:47:05.333175	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233849/423709/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233849/423709/screenshot.png
122	Hongkie Kong	hongkie-kong	Create fake news blog posts about your friends, or world events.	--- \n"Entry URL:": http://newsprank.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.802628	2010-10-16 13:47:06.151226	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233766/423707/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233766/423707/screenshot.png
123	Team Forty Two	team-forty-two	Whether it is Beer Bottle Caps, Rare Coins or Baseball cards, everyone collects something.	--- \n"Entry URL:": http://ihavecollected.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.80629	2010-10-16 13:47:06.961131	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226781/423370/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226781/423370/screenshot.png
125	Railorz	railorz	The Movie Turk	--- \n"Entry URL:": http://railorz.r10.railsrumble.com\n	--- \n- rails 2.3.10\n- bundler\n	2010-10-16 12:41:16.813666	2010-10-16 13:47:08.572318	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226759/423366/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226759/423366/screenshot.png
126	Ninja Babies	ninja-babies	We're still working on what our final idea/design will be.	--- \n"Entry URL:": http://howvery.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.817314	2010-10-16 13:47:09.327958	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233598/423705/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233598/423705/screenshot.png
127	Zänk ur foar träfelling viz deutsche Bahn	z-nk-ur-foar-tr-felling-viz-deutsche-bahn	Cucumber Based Continuous Integration	--- \n"Entry URL:": http://whiteboard.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.820939	2010-10-16 13:47:09.976653	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233587/423704/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233587/423704/screenshot.png
128	Jamirojqapi	jamirojqapi	Daily generated, simple & fast jQuery documentation.\n<br />Plus unobtrusive features such as jsFiddle integration (post/fork/edit demos), bookmarks (personalize your docs), ...	--- \n"Entry URL:": http://jqapi.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.825027	2010-10-16 13:47:10.566563	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233575/423703/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233575/423703/screenshot.png
129	Noisy Onion	noisy-onion	A webapp to facilitate secure and simple transactions of monetary support to those in need.	--- \n"Entry URL:": http://philantroply.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.828313	2010-10-16 13:47:11.312531	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233564/423702/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233564/423702/screenshot.png
131	The Team of Epic Success	the-team-of-epic-success	This team has yet to tell us about their application.	--- \n"Entry URL:": http://letsgivethis.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.83486	2010-10-16 13:47:12.764472	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226590/423363/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226590/423363/screenshot.png
132	Great Lakes Geeks	great-lakes-geeks	If we tell you, we'd have to kill you.	--- \n"Entry URL:": http://secretsauce.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.838272	2010-10-16 13:47:13.443526	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233454/423699/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233454/423699/screenshot.png
134	Power Guido	power-guido	Find tour guides in any part of the world, or if you wish be a tour guide through our web app 	--- \n"Entry URL:": http://takeawalk.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.844786	2010-10-16 13:47:14.760201	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233438/423698/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233438/423698/screenshot.png
135	Roger Wilco And His Pet Space Invaders	roger-wilco-and-his-pet-space-invaders	A tool and a simple markdown-based language to create web presentations. No flash involved.	--- \n"Entry URL:": http://slidehub.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.847961	2010-10-16 13:47:15.38203	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233427/423697/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233427/423697/screenshot.png
136	weLaika	welaika	Higly customizable fancy do-it-yourself status board	--- \n"Entry URL:": http://board.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.852113	2010-10-16 13:47:16.12825	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226425/423359/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226425/423359/screenshot.png
137	The Riders of the Lost Crusade	the-riders-of-the-lost-crusade	Its a social network where you can add the things that you consider that you and other people Must Do (Read, See, Have, Eat, Visit, etc). You can share your musts with the people of the site and with your friends in other social networks.	--- \n"Entry URL:": http://youmustdo.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.855533	2010-10-16 13:47:16.956318	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233321/423694/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233321/423694/screenshot.png
138	Rails Shinobis	rails-shinobis	I Saw That! is social shopping! Through friendships and relations you'll be able to find those items you haven't been able to find LOCALLY no matter how hard you've searched. The idea is that a friend of you may know a friend that knows a friend that actually knows where you can get your precious gadget/item/t-shirt/shoes/insert-your-desired-purchasable-item-here. I Saw That! connects you all so you can find items to buy LOCALLY!\n<br />Also we plan to provide (for a low monthly fee) seller accounts so that sellers are able to track down trends among users. For a seller, our application is an oportunity to study the market easily by knowing not only what people is looking for right now, but also WHERE. 	--- \n"Entry URL:": http://isawthatat.r10.railsrumble.com\n	--- \n- annotate\n- will_paginate\n- authlogic\n	2010-10-16 12:41:16.858816	2010-10-16 13:47:17.736046	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226393/423355/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226393/423355/screenshot.png
141	Dave I/O	dave-i-o	Selective privacy for Twitter, with full OAuth support.	--- \n"Entry URL:": http://leftlegin.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.869629	2010-10-16 13:47:19.725989	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226366/423351/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226366/423351/screenshot.png
142	Will Matthews	will-matthews	Still in the decision process.	--- \n"Entry URL:": http://app.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.872797	2010-10-16 13:47:20.363964	\N	\N
143	royalprogrammer	royalprogrammer	The application allows users to share information, updates, links, files and much more with any number of their contacts on the main social platforms.	--- \n"Entry URL:": http://everest.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.876163	2010-10-16 13:47:20.965397	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233121/423675/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287233121/423675/screenshot.png
145	Amparo's Delight	amparo-s-delight	Social link recorder.	--- \n"Entry URL:": http://twitcorder.r10.railsrumble.com\n	--- \n- omniauth\n- twitter gem\n- 960gs\n- One Bit iconset by iconjoy (free for commercial use)\n	2010-10-16 12:41:16.882914	2010-10-16 13:47:22.369905	\N	\N
146	The Fighting Wieners	the-fighting-wieners	This team has yet to tell us about their application.	--- \n"Entry URL:": http://wieners.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.886463	2010-10-16 13:47:22.99247	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226241/423348/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226241/423348/screenshot.png
147	Social Guilt	social-guilt	This team has yet to tell us about their application.	--- \n"Entry URL:": http://pledgedapp.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.88995	2010-10-16 13:47:23.59413	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232973/423670/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232973/423670/screenshot.png
148	The Rad Warlike Annex	the-rad-warlike-annex	This team has yet to tell us about their application.	--- \n"Entry URL:": http://desksnearme.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.89321	2010-10-16 13:47:24.266468	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226187/423343/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287226187/423343/screenshot.png
150	Broshkee	broshkee	This team has yet to tell us about their application.	--- \n"Entry URL:": http://fensin.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:16.899652	2010-10-16 13:47:25.71117	\N	\N
153	Padrino Team	padrino-team	Issue Tracking for your City. \n<br />And even more than just that. Heart My City allows users to promote what they love most about their city and create an online community to depict what they come to love so much about it. In addition, users can add issues that they want to have happen for their city and have users collaborate together to make it happen!	--- \n"Entry URL:": http://heartmycity.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.158774	2010-10-16 13:47:27.776422	\N	\N
155	Jam and Cheese	jam-and-cheese	Follow NGO's in your locality and get updates on their needs. If you have something to donate (like books, clothes etc) that matches the requirements then contact them!	--- \n"Entry URL:": http://dana.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.166418	2010-10-16 13:47:29.124554	\N	\N
156	734m	734m	This team has yet to tell us about their application.	--- \n"Entry URL:": http://monitaur.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.169883	2010-10-16 13:47:29.778144	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232838/423668/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232838/423668/screenshot.png
157	davetron5000	davetron5000	Learn the basics of programming with this puzzle game!  Write a program for Carl to follow to achieve his goals.  It might not be as easy as you think.  Try to use the fewest lines of code.  Once you've gotten the hang of it, learn how to write more generalized programs that allow Carl to solve several different puzzles with the same code!	--- \n"Entry URL:": http://carltherobot.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.173358	2010-10-16 13:47:30.511647	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287217823/423005/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287217823/423005/screenshot.png
159	rubber duckies	rubber-duckies	Calendar of all developer related meetups by city.	--- \n"Entry URL:": http://devdates.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.180174	2010-10-16 13:47:31.928231	\N	\N
160	Organic Free-range Nerds	organic-free-range-nerds	No more searching through the iBooks, Nook, and Kindle stores just to find the book you want at the price you want. 	--- \n"Entry URL:": http://leatherbound.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.183626	2010-10-16 13:47:32.59986	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232721/423665/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232721/423665/screenshot.png
162	Unicode	unicode	This team has yet to tell us about their application.	--- \n"Entry URL:": http://portifolio.r10.railsrumble.com\n	--- \n- devise\n	2010-10-16 12:41:18.190684	2010-10-16 13:47:34.071808	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232695/423663/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232695/423663/screenshot.png
163	kensho	kensho	A sinatra application to quickly validate css, html or xml. Makes use of the json and w3c_validators gems.	--- \n"Entry URL:": http://kensho.r10.railsrumble.com\n	--- \n- w3c_validators, haml, sass, sinatra, rack, unicorn\n	2010-10-16 12:41:18.194485	2010-10-16 13:47:34.882128	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232683/423661/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232683/423661/screenshot.png
164	Goat.	goat	Streaks-like app to form habits :3	--- \n"Entry URL:": http://binecuae.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.19782	2010-10-16 13:47:35.578507	\N	\N
165	The Viziers	the-viziers	We will implement a service that allow users write positive and negative reviews of Twitters profiles using hashtags.\n<br />The Gossip Bird will monitor all of Twitters messages with the services hashtags, and generate a set of statistics about what users are telling about Twitters Profiles, who's the fans, the haters, how is the opinions about the profiles in the time.	--- \n"Entry URL:": http://gossipbird.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.201161	2010-10-16 13:47:36.201926	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232668/423660/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232668/423660/screenshot.png
166	Destroyers	destroyers	Seek out those that you follow to see who needs to be destroyed.	--- \n"Entry URL:": http://tweekanddestroy.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.205849	2010-10-16 13:47:36.811224	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232657/423659/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232657/423659/screenshot.png
168	Dash Wall	dash-wall	This team has yet to tell us about their application.	--- \n"Entry URL:": http://sociallifting.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.212491	2010-10-16 13:47:38.188484	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232641/423658/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232641/423658/screenshot.png
169	In the Jungle	in-the-jungle	Awesome audio app.	--- \n"Entry URL:": http://pianhero.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.215661	2010-10-16 13:47:38.844609	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232630/423656/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232630/423656/screenshot.png
171	Ruby Bayou	ruby-bayou	The concept is to develop a system where people who are experienced in a subject can form local groups around that subject and by extension provide a pool of knowledge that those who are becoming interested in that subject can ask questions of and connect with. The idea is inspired by the idea of programming user groups and other kinds of interest groups. The two-fold purpose would be to establish a way for those with experience to connect and form local groups while also allowing newbies to get introduced to the groups via direct interaction.	--- \n"Entry URL:": http://findamind.r10.railsrumble.com\n	--- \n- Rails 3\n- OmniSocial\n	2010-10-16 12:41:18.22194	2010-10-16 13:47:40.401142	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225754/423306/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225754/423306/screenshot.png
172	The Anti Wit League	the-anti-wit-league	Think Instapaper for Video	--- \n"Entry URL:": http://dontwatchnow.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.225087	2010-10-16 13:47:41.004186	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232478/423647/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232478/423647/screenshot.png
173	Floating Non-breaking Spaces	floating-non-breaking-spaces	A randomic item trading application.	--- \n"Entry URL:": http://traderoulette.r10.railsrumble.com\n	--- \n- "Gems:"\n- "    rails 3.0.1"\n- "    devise 1.1.3"\n- "    mysql2 0.2.4"\n- "    devise_rpx_connectable"\n- "    rspec-rails 2.0.1"\n	2010-10-16 12:41:18.228198	2010-10-16 13:47:41.755108	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287217526/422987/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287217526/422987/screenshot.png
175	Cangaceiros	cangaceiros	Virtual Library open source with solr	--- \n"Entry URL:": http://cordel.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.234516	2010-10-16 13:47:43.193789	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232372/423645/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232372/423645/screenshot.png
177	Fanfateam	fanfateam	Fanfateam	--- \n"Entry URL:": http://fanfateam.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.241714	2010-10-16 13:47:44.580962	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232346/423643/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232346/423643/screenshot.png
178	On a horse	on-a-horse	This team has yet to tell us about their application.	--- \n"Entry URL:": http://petfind.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:18.244969	2010-10-16 13:47:45.336776	\N	\N
179	GoWeb	goweb	Markdown presentation creator with javascript effects.	--- \n"Entry URL:": http://oolium.r10.railsrumble.com\n	--- \n- "Gems:"\n- "abstract, actionmailer, actionpack, activemodel, activerecord, activeresource, activesupport, arel, arrayfields, authlogic, babosa, bcrypt-ruby, bluecloth, builder, bundler, capybara, childprocess, chronic, churn, colored, compass, cucumber, cucumber-rails, culerity, database_cleaner, devise, diff-lcs, engineyard, engineyard-serverside-adapter, erubis, escape, factory_girl, factory_girl_rails, faker, fattr, ffi, flay, flog, formtastic, friendly_id, gchart, gherkin, github, haml, haml-rails, has_scope, highline, hirb, hoe, hoptoad_notifier, i18n, image_science, inherited_resources, inploy, jquery-rails, json, json_pure, mail, main, makers-mark, metric_fu, mime-types, mocha, mysql, newrelic_rpm, nifty-generators, nokogiri, open4, pickle, polyglot, progressbar, rack, rack-mount, rack-test, rails, rails_best_practices, railties, rake, rcov, reek, remarkable, remarkable_activemodel, remarkable_activerecord, remarkable_rails, responders, rest-client, roodi, rspec, rspec-core, rspec-expectations, rspec-mocks, rspec-rails, ruby-termios, ruby2ruby, ruby_parser, rubyforge, RubyInline, rubyzip, Saikuro, selenium-webdriver, sexp_processor, slidedown, spork, steak, term-ansicolor, text-format, text-hyphen, thor, treetop, tzinfo, ultrasphinx, unicode, warden, web-app-theme, webrat, will_paginate, yard, ZenTestJavascript Libraries:"\n- jQuery\n	2010-10-16 12:41:18.248106	2010-10-16 13:47:46.011452	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232324/423641/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232324/423641/screenshot.png
181	Team Aloha	team-aloha	A pill/medicine reminder service.	--- \n"Entry URL:": http://rememberthepills.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.798948	2010-10-16 13:47:47.398307	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225400/423290/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225400/423290/screenshot.png
182	Sampa On Rails	sampa-on-rails	One of the greatest features in Ruby on Rails is the possibility of creating templates that generates an application already configured for your needs (using rspec, factory girl, with some tables generated, etc). As we live in a world without silver bullets, everybody has different needs in a Rails application and for every need, there is a good template available for use.  The main purpose of our application is to people share their templates, recommend templates, rate an existing template and find templates for your specific need to not start from scratch. 	--- \n"Entry URL:": http://rails3templates.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.803097	2010-10-16 13:47:48.002528	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232219/423634/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232219/423634/screenshot.png
183	MouseOver Studio	mouseover-studio	You signup in the application, register some projects, the people that are working on each one, the Github repo, Hoptoad account, RPM account, etc. and the application will mount a dashboard with all this information, so people around the company can be aware of everything is happening to all the projects, something like this:	--- \n"Entry URL:": http://panela.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.806804	2010-10-16 13:47:48.68036	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232208/423631/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232208/423631/screenshot.png
184	Rule Two Double Tap	rule-two-double-tap	This team has yet to tell us about their application.	--- \n"Entry URL:": http://whiteboardhq.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.810454	2010-10-16 13:47:49.497845	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225367/423284/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225367/423284/screenshot.png
185	The Metricals	the-metricals	This team has yet to tell us about their application.	--- \n"Entry URL:": http://saasmetrics.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.813871	2010-10-16 13:47:50.204417	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232174/423630/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232174/423630/screenshot.png
188	GoLobster!	golobster	Social web site for bookcrossing with vk.com auth-on and google or yandex maps. Site will show the book history, location etc.	--- \n"Entry URL:": http://bookvoyage.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.824025	2010-10-16 13:47:52.19943	\N	\N
189	Indiana Coders	indiana-coders	Drink a Beer and tell everyone! Collect beers from around the world!	--- \n"Entry URL:": http://beercheckin.r10.railsrumble.com\n	--- \n- beer data from freebase\n- mongodb\n- solr + sunspot\n- ruby 1.9.2\n- rails 3.0.1\n- rspec 2.0\n- steak\n	2010-10-16 12:41:19.827294	2010-10-16 13:47:52.802684	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232148/423628/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232148/423628/screenshot.png
1	Infinity Pool Boom Boom	infinity-pool-boom-boom	An app that integrates with twitter as well as news/link aggregation services (reddit an hacker news) to generate a personalized online "newspaper" for the user.	--- \n"Entry URL:": http://newspaperly.r10.railsrumble.com\n	--- \n- neo4j\n	2010-10-16 12:41:10.177927	2010-10-16 13:47:53.492098	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236367/423871/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287236367/423871/screenshot.png
96	The Gary Muvaut Foundation	the-gary-muvaut-foundation	The Gary Muvaut Foundation proudly presents the ultimate memory challenge.	--- \n"Entry URL:": http://memoizr.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:14.95911	2010-10-16 13:47:54.206847	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234359/423753/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287234359/423753/screenshot.png
191	The League of Evil Coders	the-league-of-evil-coders	One dashboard to rule them all!	--- \n"Entry URL:": http://stateful.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.835022	2010-10-16 13:47:55.582229	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225231/423280/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287225231/423280/screenshot.png
192	Tabular Jack Posse	tabular-jack-posse	A casual game putting the player in the boss-chair of a newly started shipping company. Space-shipping, that is.	--- \n"Entry URL:": http://spaceshippers.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.838663	2010-10-16 13:47:56.201917	\N	\N
193	Mad Hatters	mad-hatters	People are always trying to improve themselves, be it in cooking, coding, or running. If it is possible to have a progress bar, like the ones in video games, with everyone, it can motivate people to become better. Motto: "level up"	--- \n"Entry URL:": http://progressbar.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.842274	2010-10-16 13:47:57.001816	\N	\N
194	Rhinoholic	rhinoholic	A scriptable web-email client	--- \n"Entry URL:": http://mailgap.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.845864	2010-10-16 13:47:57.605909	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232038/423626/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232038/423626/screenshot.png
196	Robots Et Cetera	robots-et-cetera	Users will be able to add a the embed code for a youtube video along with text corresponding to the words in the video.  Then they will be able to coordinate when recent tweets will appear in sync with the video. Then they can view their handy work either with the worlds' tweets or authenticating and seeing only their friends.	--- \n"Entry URL:": http://twitterlyrics.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.852767	2010-10-16 13:47:59.014404	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231995/423616/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231995/423616/screenshot.png
197	Adam's Team	adam-s-team	This team has yet to tell us about their application.	--- \n"Entry URL:": http://blankfornow.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.856054	2010-10-16 13:47:59.810833	\N	\N
199	BoN	bon	This team has yet to tell us about their application.	--- \n"Entry URL:": http://bon.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.86289	2010-10-16 13:48:01.167552	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231889/423615/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231889/423615/screenshot.png
200	Naise	naise	Diet tracking using the food pyramid- There are several very useful diets out there based on the food pyramid (e.g. The Mayo Clinic Diet, and the USDA food pyramid guidelines), however there aren't any online tools to track your diet using the food pyramid.	--- \n"Entry URL:": http://foodpyramid.r10.railsrumble.com\n	--- \n- "Gems & Plugins:Stock Photography & Icons:"\n- Seamless Vegetable Pattern by franz45\n- "http://www.istockphoto.com/file_closeup.php?id=14084141Data Resources:"\n	2010-10-16 12:41:19.866601	2010-10-16 13:48:01.837675	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231878/423614/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231878/423614/screenshot.png
201	Nao sei	nao-sei	This team has yet to tell us about their application.	--- \n"Entry URL:": http://adef.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.870148	2010-10-16 13:48:02.433946	\N	\N
202	Chewie & Han	chewie-han	Postcards from Gowalla Checkins and Flickr Photos of Featured Locations and States	--- \n"Entry URL:": http://spotcard.r10.railsrumble.com\n	--- \n- omniauth\n- datamapper\n- rails 3\n- postgresql\n- jquery\n- gowalla\n- fleakr\n	2010-10-16 12:41:19.874247	2010-10-16 13:48:03.16466	\N	\N
203	EquiPIada	equipiada	Some people want create lists of things which they think important. In order to make this for them, minimalist helps to organize, link, share and publish lists of everything	--- \n"Entry URL:": http://minimalist.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.878412	2010-10-16 13:48:03.814155	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231851/423613/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231851/423613/screenshot.png
204	Liquid Ruby	liquid-ruby	Short message system for enterprise like google groups meets twitter.	--- \n"Entry URL:": http://liquidmsgs.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.882126	2010-10-16 13:48:04.617168	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231839/423612/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231839/423612/screenshot.png
205	Codegram++	codegram	<a href="http://www.pivotaltracker.com/projects/115063">http://www.pivotaltracker.com/projects/115063</a>	--- \n"Entry URL:": http://jamibia.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.88559	2010-10-16 13:48:05.394837	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231828/423608/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231828/423608/screenshot.png
206	48 hours of unpaid work and 5 cookies	48-hours-of-unpaid-work-and-5-cookies	Hosted log for your application with a user-friendly interface.	--- \n"Entry URL:": http://logbook.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.888854	2010-10-16 13:48:06.020092	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287224833/423272/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287224833/423272/screenshot.png
208	acts_as_code_monkeys_on_steroids	acts_as_code_monkeys_on_steroids	Have you ever had difficult times to organize your local dev conference? \n<br />This app aims to help with conference organization, call for papers, voting on speakers and the basics, like collecting feedback from crowd, schedule planning, etc. A must for local dev groups.	--- \n"Entry URL:": http://call4paperz.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.895577	2010-10-16 13:48:07.417994	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231682/423601/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231682/423601/screenshot.png
209	Saint Coders	saint-coders	This team has yet to tell us about their application.	--- \n"Entry URL:": http://bioreactor.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.898955	2010-10-16 13:48:08.164498	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231671/423600/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231671/423600/screenshot.png
210	DivMaster	divmaster	We're going to serve up NASA images based on embedded astronomical data somehow.	--- \n"Entry URL:": http://avmhub.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:19.902375	2010-10-16 13:48:09.022818	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231660/423599/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231660/423599/screenshot.png
211	48 Hours Later	48-hours-later	A browser based, real-time, role-playing game.	--- \n"Entry URL:": http://the-best.r10.railsrumble.com\n	--- \n- Development\n- "* pusherTesting"\n- "* cucumber"\n- "* factory_girl"\n- "* rspec"\n- "* shoulda"\n	2010-10-16 12:41:21.166512	2010-10-16 13:48:09.638273	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231649/423597/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231649/423597/screenshot.png
213	Love me, I'm A Liberal	love-me-i-m-a-liberal	This team has yet to tell us about their application.	--- \n"Entry URL:": http://ochs.r10.railsrumble.com\n	--- \n- rails\n- janrain\n	2010-10-16 12:41:21.174299	2010-10-16 13:48:11.01766	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231633/423594/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231633/423594/screenshot.png
214	The Bryce Kerley Fiasco	the-bryce-kerley-fiasco	Tool to analyze and criticize Rails 3 projects on github.	--- \n"Entry URL:": http://fixthiscode.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.177919	2010-10-16 13:48:11.82361	\N	\N
216	Skeddit	skeddit	A scheduling and appointment/contact manager application.	--- \n"Entry URL:": http://skeddit.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.184923	2010-10-16 13:48:13.055128	\N	\N
217	Hounds of Gore	hounds-of-gore	Jekyll is awesome. GitHub is awesome. Heroku is awesome. But they don't do what we want.	--- \n"Entry URL:": http://gitwrite.r10.railsrumble.com\n	--- \n- "Ruby 1.9.2; Rails 3JavaScript:"\n- "* jQueryGems"\n- "* OmniAuth"\n- "* Howl (http://github.com/hounds-of-gore/howl)Testing"\n- "* Shoulda"\n- "* Factory Girl"\n- "* Mocha"\n- "* SimpleCov"\n	2010-10-16 12:41:21.188369	2010-10-16 13:48:13.64808	\N	\N
219	The Wizards of Oz	the-wizards-of-oz	A friendly, never say die, app monitoring service, with a dollop of syntactic sugar on top.	--- \n"Entry URL:": http://stillalive.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.19631	2010-10-16 13:48:15.010418	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231566/423593/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231566/423593/screenshot.png
220	Escalator	escalator	Karaoke on the web. To play, go to the website, choose a song and call in on your cell phone. Sing along on your phone and when you're done, you can share your performance w/ friends. We'll have voting and some other competitive aspects.	--- \n"Entry URL:": http://croonstar.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.200027	2010-10-16 13:48:15.829908	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231555/423592/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231555/423592/screenshot.png
221	Codebucks	codebucks	Letifree.me is based on the idea of freecyling, freegiving, freesharing, etc. We wanted to offer a web portal that makes it easy to offer or find reusable items so that they can find a new owner, versus ending up in the landfill.	--- \n"Entry URL:": http://letitfreeme.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.203321	2010-10-16 13:48:16.495951	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231544/423591/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231544/423591/screenshot.png
222	UploadJS	uploadjs	HTML5 Uploader 	--- \n"Entry URL:": http://uploadjs.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.206582	2010-10-16 13:48:17.232105	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231533/423589/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231533/423589/screenshot.png
223	Donkey Team	donkey-team	A bookmarking site based around finding the best recipes	--- \n"Entry URL:": http://cookmarking.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.209675	2010-10-16 13:48:17.862593	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231522/423588/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231522/423588/screenshot.png
225	GroovyRuby	groovyruby	Simple event organization and management.	--- \n"Entry URL:": http://eevmee.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.216034	2010-10-16 13:48:19.234172	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231506/423587/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231506/423587/screenshot.png
226	Agile Bastards	agile-bastards	This team has yet to tell us about their application.	--- \n"Entry URL:": http://agilebastards.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.21925	2010-10-16 13:48:19.931345	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287224389/423256/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287224389/423256/screenshot.png
227	Pink Fairies of Syrupland	pink-fairies-of-syrupland	This team has yet to tell us about their application.	--- \n"Entry URL:": http://love.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.222303	2010-10-16 13:48:20.630333	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231411/423581/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231411/423581/screenshot.png
228	Team Jessica Alba	team-jessica-alba	Ever bought a certain person a present and it turned out someone else had the same idea? Or can't find an idea for a good gift? Our app tries to solve that	--- \n"Entry URL:": http://wrapppit.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.226415	2010-10-16 13:48:21.373902	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231400/423580/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231400/423580/screenshot.png
231	48seven	48seven	48seven	--- \n"Entry URL:": http://cover48seven.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.236977	2010-10-16 13:48:23.239643	\N	\N
232	Team Rocketpants	team-rocketpants	This team has yet to tell us about their application.	--- \n"Entry URL:": http://rocketpants.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.240121	2010-10-16 13:48:24.037179	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231278/423577/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231278/423577/screenshot.png
233	Kizmeta	kizmeta	This team has yet to tell us about their application.	--- \n"Entry URL:": http://missively.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.243158	2010-10-16 13:48:24.67659	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231267/423576/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231267/423576/screenshot.png
234	hifidelics	hifidelics	Help your favorite artists get a new album going.	--- \n"Entry URL:": http://hifidelics.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.246551	2010-10-16 13:48:25.410574	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287216507/422931/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287216507/422931/screenshot.png
235	The Crimson Ghost	the-crimson-ghost	This team has yet to tell us about their application.	--- \n"Entry URL:": http://doconnect.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.250631	2010-10-16 13:48:26.236797	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231171/423570/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231171/423570/screenshot.png
236	acts_as_pirates	acts_as_pirates	Gig and Event tracking, at its finest.	--- \n"Entry URL:": http://pirates.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.254081	2010-10-16 13:48:26.843456	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231160/423569/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231160/423569/screenshot.png
238	The Handlebars	the-handlebars	We're fed up with sending emails around to organise group events with friends and family. Just Arrange It.	--- \n"Entry URL:": http://jai.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.26078	2010-10-16 13:48:28.246847	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231091/423568/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231091/423568/screenshot.png
239	CoworkingMVD	coworkingmvd	This team has yet to tell us about their application.	--- \n"Entry URL:": http://owesies.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:21.2657	2010-10-16 13:48:28.85144	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231080/423567/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231080/423567/screenshot.png
241	Roflsaurus Rex	roflsaurus-rex	This team has yet to tell us about their application.	--- \n"Entry URL:": http://roflsaur.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.707534	2010-10-16 13:48:30.255585	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231058/423565/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287231058/423565/screenshot.png
242	ChordWise	chordwise	ChordWise is a music theory and ear training service. It helps you become a better musician.	--- \n"Entry URL:": http://chordwise.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.711482	2010-10-16 13:48:30.864595	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223838/423239/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223838/423239/screenshot.png
243	The Cat Doctor's	the-cat-doctor-s	OBSOLETE! Forgot to take your pill or a series of drugs? You need an app for! Medicine Reminder is a digital multi-alarm-medicine-box running 24 hours a day and 7 days a week. Medicine Reminder reminds you to take your pill at the right time and logs it when you do so!	--- \n"Entry URL:": http://somethingelse.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.714787	2010-10-16 13:48:31.641417	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230963/423561/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230963/423561/screenshot.png
244	Proc, Block and Two Smoking Lambdas	proc-block-and-two-smoking-lambdas	We have a few ideas to further the RubyGems ecosystem.	--- \n"Entry URL:": http://gemrage.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.718077	2010-10-16 13:48:32.254176	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230951/423560/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230951/423560/screenshot.png
245	acts_as_ninjas	acts_as_ninjas	This team has yet to tell us about their application.	--- \n"Entry URL:": http://warsquare.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.721183	2010-10-16 13:48:33.067825	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230929/423556/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230929/423556/screenshot.png
247	Innsmouth Rubyist Club	innsmouth-rubyist-club	Minimal, low-distraction Twitter with filtering and feature-limited interface.	--- \n"Entry URL:": http://irc2010.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.727693	2010-10-16 13:48:34.478588	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230835/423555/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230835/423555/screenshot.png
248	The Phoenix Durango	the-phoenix-durango	This team has yet to tell us about their application.	--- \n"Entry URL:": http://runhero.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.730821	2010-10-16 13:48:35.19829	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230814/423553/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230814/423553/screenshot.png
249	The Dudes	the-dudes	This team has yet to tell us about their application.	--- \n"Entry URL:": http://fontstacks.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.734075	2010-10-16 13:48:35.849699	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230792/423551/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230792/423551/screenshot.png
250	Cramanators 2: Electric Boogaloo 	cramanators-2-electric-boogaloo	Taking the humans out of the 'What's for Lunch?' loop.	--- \n"Entry URL:": http://electric.r10.railsrumble.com\n	--- \n- rails(duh) 2.3.10\n- paperclip\n- mysqlplus\n- delayed_job\n- will_paginate\n- authlogic\n	2010-10-16 12:41:22.737228	2010-10-16 13:48:36.476005	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230771/423550/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230771/423550/screenshot.png
251	NoName Team	noname-team	A web interface to track your chef success/failure notifications.	--- \n"Entry URL:": http://noname.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.740601	2010-10-16 13:48:37.229079	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223656/423228/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287223656/423228/screenshot.png
253	Thinksnow	thinksnow	Micropayment system for any site that publishes content.  Allows authors to demand payment AND to ask for donations.	--- \n"Entry URL:": http://paywall.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.747142	2010-10-16 13:48:38.464515	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230665/423545/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230665/423545/screenshot.png
254	Agile Nomads	agile-nomads	This team has yet to tell us about their application.	--- \n"Entry URL:": http://commendablekids.r10.railsrumble.com\n	--- \n- "Gems: headstart, rails-settings, right_aws, paperclip, mini_fb, fake_arel, jammit, will_paginate, formtastic, contactsPlugins: ar_fixtures, enumerations_mixin, iso-3166-country-selectRails template: launchpadJavascript: jQuery, jQuery.innerfade"\n	2010-10-16 12:41:22.750416	2010-10-16 13:48:39.258829	/images/screenshots/default/thumb_default.png	/images/screenshots/default/default.png
255	Relatively Early Development	relatively-early-development	Email refining for small teams.  Vote on an email to see if it's ready to send out.	--- \n"Entry URL:": http://red.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.753623	2010-10-16 13:48:40.024725	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230643/423541/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230643/423541/screenshot.png
256	Kings of the Lab	kings-of-the-lab	Podcast and other video/audio production and planing. UPDATE LATER	--- \n"Entry URL:": http://freshproduction.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.75674	2010-10-16 13:48:40.687742	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230599/423536/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230599/423536/screenshot.png
257	Double Down	double-down	This team has yet to tell us about their application.	--- \n"Entry URL:": http://doubledown.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.759859	2010-10-16 13:48:41.299147	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230588/423535/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230588/423535/screenshot.png
258	bendyworkers	bendyworkers	a social site for prospective and currently attending conference attendees	--- \n"Entry URL:": http://bendyworkers.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.763225	2010-10-16 13:48:41.911124	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230557/423533/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230557/423533/screenshot.png
260	4 Guys, 1 Stack	4-guys-1-stack	The app is to be use for the utmost benefit to mankind.  It tracks daily buds (like mini daily achievements) of the user, which in turn will track the user's daily progress.  A bud can be anything from a complement to run in the park.  The idea is to improve and enrich oneself by the completion of social and personal tasks.	--- \n"Entry URL:": http://bethetree.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.769644	2010-10-16 13:48:43.141444	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230524/423530/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230524/423530/screenshot.png
261	Ruby.MN	ruby-mn	We don't even know yet.	--- \n"Entry URL:": http://rubymn.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.772765	2010-10-16 13:48:43.822633	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287216055/422905/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287216055/422905/screenshot.png
262	The Lonely Intridean	the-lonely-intridean	You'll just have to wait and see...	--- \n"Entry URL:": http://railswizard.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.775955	2010-10-16 13:48:44.424043	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230417/423526/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230417/423526/screenshot.png
263	My Other Car Is Your Face	my-other-car-is-your-face	Compress those annoyingly long RSS feeds into short little stories.	--- \n"Entry URL:": http://tldr.r10.railsrumble.com\n	--- \n- This team is yet to tell us the resources they've used.\n	2010-10-16 12:41:22.779097	2010-10-16 13:48:45.105119	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230406/423525/thumb_screenshot.png	https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287230406/423525/screenshot.png
\.


--
-- Data for Name: team_memberships; Type: TABLE DATA; Schema: public; Owner: railerim
--

COPY team_memberships (id, team_id, user_id, name, created_at, updated_at) FROM stdin;
1	2	\N	raphaeldealmeida	2010-10-16 13:45:43.690846	2010-10-16 13:45:43.690846
2	2	\N	alobato	2010-10-16 13:45:43.703034	2010-10-16 13:45:43.703034
3	2	\N	viniciussbs	2010-10-16 13:45:43.708496	2010-10-16 13:45:43.708496
4	3	\N	oceanician	2010-10-16 13:45:44.300515	2010-10-16 13:45:44.300515
5	4	\N	quigebo	2010-10-16 13:45:44.892047	2010-10-16 13:45:44.892047
6	4	\N	sethbro	2010-10-16 13:45:44.900042	2010-10-16 13:45:44.900042
7	5	\N	lorennorman	2010-10-16 13:45:45.660873	2010-10-16 13:45:45.660873
8	5	\N	srbiv1979	2010-10-16 13:45:45.667924	2010-10-16 13:45:45.667924
9	5	\N	schmarty	2010-10-16 13:45:45.67368	2010-10-16 13:45:45.67368
10	6	\N	pwnall	2010-10-16 13:45:46.295744	2010-10-16 13:45:46.295744
11	6	\N	uShadow	2010-10-16 13:45:46.301714	2010-10-16 13:45:46.301714
12	6	\N	hypermunkee	2010-10-16 13:45:46.307244	2010-10-16 13:45:46.307244
13	6	\N	yayalice	2010-10-16 13:45:46.312841	2010-10-16 13:45:46.312841
14	7	\N	lucianosousa	2010-10-16 13:45:47.009444	2010-10-16 13:45:47.009444
15	7	\N	yuizinha	2010-10-16 13:45:47.015415	2010-10-16 13:45:47.015415
16	7	\N	Jhonathas Matos	2010-10-16 13:45:47.021417	2010-10-16 13:45:47.021417
17	7	\N	leonarrangel	2010-10-16 13:45:47.027451	2010-10-16 13:45:47.027451
18	8	\N	mtodd	2010-10-16 13:45:47.681017	2010-10-16 13:45:47.681017
19	8	\N	ckdake	2010-10-16 13:45:47.686504	2010-10-16 13:45:47.686504
20	8	\N	jimhodgson	2010-10-16 13:45:47.691593	2010-10-16 13:45:47.691593
21	9	\N	Matthew Ford	2010-10-16 13:45:48.309195	2010-10-16 13:45:48.309195
22	10	\N	Martin Kivi	2010-10-16 13:45:49.040675	2010-10-16 13:45:49.040675
23	10	\N	Tanel Suurhans	2010-10-16 13:45:49.046284	2010-10-16 13:45:49.046284
24	10	\N	Tarmo Lehtpuu	2010-10-16 13:45:49.051399	2010-10-16 13:45:49.051399
25	11	\N	fourcade.m	2010-10-16 13:45:49.866361	2010-10-16 13:45:49.866361
26	12	\N	Gaizka	2010-10-16 13:45:50.470463	2010-10-16 13:45:50.470463
27	12	\N	vieron	2010-10-16 13:45:50.476626	2010-10-16 13:45:50.476626
28	12	\N	alvarobp	2010-10-16 13:45:50.482359	2010-10-16 13:45:50.482359
29	12	\N	cantorrodista	2010-10-16 13:45:50.487994	2010-10-16 13:45:50.487994
30	13	\N	Sylvain	2010-10-16 13:45:51.076377	2010-10-16 13:45:51.076377
31	13	\N	Ivan	2010-10-16 13:45:51.082451	2010-10-16 13:45:51.082451
32	13	\N	Jessy	2010-10-16 13:45:51.087967	2010-10-16 13:45:51.087967
33	13	\N	didier.lafforgue	2010-10-16 13:45:51.093659	2010-10-16 13:45:51.093659
34	14	\N	akinnunen	2010-10-16 13:45:51.837478	2010-10-16 13:45:51.837478
35	15	\N	jwpage	2010-10-16 13:45:52.472841	2010-10-16 13:45:52.472841
36	15	\N	nick.loves.rails	2010-10-16 13:45:52.480021	2010-10-16 13:45:52.480021
37	16	\N	balepc	2010-10-16 13:45:53.115858	2010-10-16 13:45:53.115858
38	17	\N	scissorjammer	2010-10-16 13:45:53.703944	2010-10-16 13:45:53.703944
39	17	\N	gabrielg	2010-10-16 13:45:53.709346	2010-10-16 13:45:53.709346
40	17	\N	jaknowlden	2010-10-16 13:45:53.714516	2010-10-16 13:45:53.714516
41	18	\N	bjoern@dreimannzelt.de	2010-10-16 13:45:54.310105	2010-10-16 13:45:54.310105
42	18	\N	jan@dreimannzelt.de	2010-10-16 13:45:54.315607	2010-10-16 13:45:54.315607
43	19	\N	staskovs	2010-10-16 13:45:54.927709	2010-10-16 13:45:54.927709
44	20	\N	taylorrf	2010-10-16 13:45:55.654603	2010-10-16 13:45:55.654603
45	21	\N	jjcall	2010-10-16 13:45:56.308808	2010-10-16 13:45:56.308808
46	21	\N	ssherving	2010-10-16 13:45:56.314816	2010-10-16 13:45:56.314816
47	21	\N	krsmurata	2010-10-16 13:45:56.320629	2010-10-16 13:45:56.320629
48	22	\N	lplanas	2010-10-16 13:45:56.900424	2010-10-16 13:45:56.900424
49	23	\N	raimo	2010-10-16 13:45:57.631558	2010-10-16 13:45:57.631558
50	24	\N	kuadrosx	2010-10-16 13:45:58.303386	2010-10-16 13:45:58.303386
51	24	\N	dgfrancisco	2010-10-16 13:45:58.309267	2010-10-16 13:45:58.309267
52	24	\N	krawek	2010-10-16 13:45:58.315058	2010-10-16 13:45:58.315058
53	24	\N	patcito	2010-10-16 13:45:58.320198	2010-10-16 13:45:58.320198
54	25	\N	ADO	2010-10-16 13:45:59.018638	2010-10-16 13:45:59.018638
55	25	\N	jaffajames	2010-10-16 13:45:59.024441	2010-10-16 13:45:59.024441
56	25	\N	adesignernamedtom	2010-10-16 13:45:59.030107	2010-10-16 13:45:59.030107
57	25	\N	batidau	2010-10-16 13:45:59.035566	2010-10-16 13:45:59.035566
58	26	\N	Mars	2010-10-16 13:45:59.699482	2010-10-16 13:45:59.699482
59	26	\N	Senthilkumar	2010-10-16 13:45:59.704959	2010-10-16 13:45:59.704959
60	26	\N	mohanyasa	2010-10-16 13:45:59.710468	2010-10-16 13:45:59.710468
61	26	\N	selvarajan	2010-10-16 13:45:59.715814	2010-10-16 13:45:59.715814
62	27	\N	taylor_luk	2010-10-16 13:46:00.437184	2010-10-16 13:46:00.437184
63	27	\N	nathan.reeves	2010-10-16 13:46:00.443215	2010-10-16 13:46:00.443215
64	27	\N	nicholasf	2010-10-16 13:46:00.44858	2010-10-16 13:46:00.44858
65	27	\N	nemanjaivanovic	2010-10-16 13:46:00.45394	2010-10-16 13:46:00.45394
66	28	\N	dmix	2010-10-16 13:46:01.26964	2010-10-16 13:46:01.26964
67	29	\N	bradhuber	2010-10-16 13:46:01.908499	2010-10-16 13:46:01.908499
68	29	\N	lukeledet	2010-10-16 13:46:01.913841	2010-10-16 13:46:01.913841
69	29	\N	tortugalee	2010-10-16 13:46:01.918962	2010-10-16 13:46:01.918962
70	29	\N	vaxinate	2010-10-16 13:46:01.924407	2010-10-16 13:46:01.924407
71	30	\N	kevin.gisi	2010-10-16 13:46:02.688341	2010-10-16 13:46:02.688341
72	31	\N	amerine	2010-10-16 13:46:03.308491	2010-10-16 13:46:03.308491
73	31	\N	jsullivandigs	2010-10-16 13:46:03.313884	2010-10-16 13:46:03.313884
74	31	\N	tim.linquist	2010-10-16 13:46:03.319069	2010-10-16 13:46:03.319069
75	32	\N	butzopower	2010-10-16 13:46:03.900252	2010-10-16 13:46:03.900252
76	32	\N	bcobb	2010-10-16 13:46:03.905635	2010-10-16 13:46:03.905635
77	32	\N	cbarton	2010-10-16 13:46:03.910845	2010-10-16 13:46:03.910845
78	33	\N	jalnyfen	2010-10-16 13:46:04.710746	2010-10-16 13:46:04.710746
79	33	\N	kellective	2010-10-16 13:46:04.716221	2010-10-16 13:46:04.716221
80	33	\N	Yuffster	2010-10-16 13:46:04.721616	2010-10-16 13:46:04.721616
81	34	\N	EmmanuelOga	2010-10-16 13:46:05.473044	2010-10-16 13:46:05.473044
82	34	\N	asterite	2010-10-16 13:46:05.479732	2010-10-16 13:46:05.479732
83	34	\N	augusto	2010-10-16 13:46:05.486366	2010-10-16 13:46:05.486366
84	34	\N	hviturstudios	2010-10-16 13:46:05.491782	2010-10-16 13:46:05.491782
85	35	\N	ptonella	2010-10-16 13:46:06.204535	2010-10-16 13:46:06.204535
86	35	\N	tauil	2010-10-16 13:46:06.211968	2010-10-16 13:46:06.211968
87	35	\N	juarezpaf	2010-10-16 13:46:06.218381	2010-10-16 13:46:06.218381
88	36	\N	hayley	2010-10-16 13:46:06.89403	2010-10-16 13:46:06.89403
89	37	\N	jasconius	2010-10-16 13:46:07.494696	2010-10-16 13:46:07.494696
90	37	\N	sparklabs	2010-10-16 13:46:07.500199	2010-10-16 13:46:07.500199
91	37	\N	bfosh	2010-10-16 13:46:07.506081	2010-10-16 13:46:07.506081
92	37	\N	Brennan Falkner	2010-10-16 13:46:07.511689	2010-10-16 13:46:07.511689
93	38	\N	WOMlinda	2010-10-16 13:46:08.161439	2010-10-16 13:46:08.161439
94	38	\N	xperience	2010-10-16 13:46:08.166979	2010-10-16 13:46:08.166979
95	38	\N	Alex.Swanson	2010-10-16 13:46:08.172326	2010-10-16 13:46:08.172326
96	38	\N	joesteele	2010-10-16 13:46:08.178356	2010-10-16 13:46:08.178356
97	39	\N	skiz	2010-10-16 13:46:08.896638	2010-10-16 13:46:08.896638
98	39	\N	shwoodard	2010-10-16 13:46:08.902038	2010-10-16 13:46:08.902038
99	39	\N	kblake	2010-10-16 13:46:08.907172	2010-10-16 13:46:08.907172
100	39	\N	clarketus	2010-10-16 13:46:08.912478	2010-10-16 13:46:08.912478
101	40	\N	Seivan	2010-10-16 13:46:09.529972	2010-10-16 13:46:09.529972
102	40	\N	Johan	2010-10-16 13:46:09.535247	2010-10-16 13:46:09.535247
103	41	\N	blahed	2010-10-16 13:46:10.24518	2010-10-16 13:46:10.24518
104	42	\N	xtoddx	2010-10-16 13:46:10.891528	2010-10-16 13:46:10.891528
105	43	\N	andrewbrown	2010-10-16 13:46:11.491093	2010-10-16 13:46:11.491093
106	44	\N	elcuervo	2010-10-16 13:46:12.097225	2010-10-16 13:46:12.097225
107	44	\N	zevarito	2010-10-16 13:46:12.102792	2010-10-16 13:46:12.102792
108	44	\N	rabble	2010-10-16 13:46:12.108402	2010-10-16 13:46:12.108402
109	44	\N	frozeek	2010-10-16 13:46:12.113891	2010-10-16 13:46:12.113891
110	45	\N	ychaker	2010-10-16 13:46:12.896205	2010-10-16 13:46:12.896205
111	46	\N	ogeidix	2010-10-16 13:46:13.606742	2010-10-16 13:46:13.606742
112	46	\N	pigats	2010-10-16 13:46:13.612433	2010-10-16 13:46:13.612433
113	46	\N	MisterJack	2010-10-16 13:46:13.618039	2010-10-16 13:46:13.618039
114	47	\N	sikachu	2010-10-16 13:46:14.300796	2010-10-16 13:46:14.300796
115	48	\N	kertap	2010-10-16 13:46:14.904353	2010-10-16 13:46:14.904353
116	48	\N	michealoduibhir	2010-10-16 13:46:14.90988	2010-10-16 13:46:14.90988
117	48	\N	fergdeff	2010-10-16 13:46:14.914988	2010-10-16 13:46:14.914988
118	49	\N	silviu.postavaru	2010-10-16 13:46:15.633046	2010-10-16 13:46:15.633046
119	50	\N	mtcmorris	2010-10-16 13:46:16.295567	2010-10-16 13:46:16.295567
120	50	\N	ptagell	2010-10-16 13:46:16.300978	2010-10-16 13:46:16.300978
121	51	\N	fousa	2010-10-16 13:46:16.903287	2010-10-16 13:46:16.903287
122	51	\N	junkiesxl	2010-10-16 13:46:16.908796	2010-10-16 13:46:16.908796
123	51	\N	nilo	2010-10-16 13:46:16.914049	2010-10-16 13:46:16.914049
124	51	\N	atog	2010-10-16 13:46:16.919305	2010-10-16 13:46:16.919305
125	52	\N	mauriciodeamorim	2010-10-16 13:46:17.541734	2010-10-16 13:46:17.541734
126	53	\N	GavinStark	2010-10-16 13:46:18.131015	2010-10-16 13:46:18.131015
127	53	\N	dedguy	2010-10-16 13:46:18.136789	2010-10-16 13:46:18.136789
128	53	\N	ambethia	2010-10-16 13:46:18.142442	2010-10-16 13:46:18.142442
129	53	\N	madcowley	2010-10-16 13:46:18.148042	2010-10-16 13:46:18.148042
130	54	\N	mdeering	2010-10-16 13:46:18.902959	2010-10-16 13:46:18.902959
131	54	\N	AdrianGyuricska	2010-10-16 13:46:18.908249	2010-10-16 13:46:18.908249
132	54	\N	scottbrooksca	2010-10-16 13:46:18.913353	2010-10-16 13:46:18.913353
133	54	\N	sean	2010-10-16 13:46:18.918529	2010-10-16 13:46:18.918529
134	55	\N	djburdick	2010-10-16 13:46:19.522209	2010-10-16 13:46:19.522209
135	55	\N	goodman.danny	2010-10-16 13:46:19.527875	2010-10-16 13:46:19.527875
136	55	\N	aaron.mcgeever	2010-10-16 13:46:19.533069	2010-10-16 13:46:19.533069
137	55	\N	alabut	2010-10-16 13:46:19.538075	2010-10-16 13:46:19.538075
138	56	\N	pedroaxl	2010-10-16 13:46:20.188649	2010-10-16 13:46:20.188649
139	56	\N	diogob	2010-10-16 13:46:20.216138	2010-10-16 13:46:20.216138
140	56	\N	juanmaiz	2010-10-16 13:46:20.221749	2010-10-16 13:46:20.221749
141	56	\N	leotartari	2010-10-16 13:46:20.227873	2010-10-16 13:46:20.227873
142	57	\N	therabidbanana	2010-10-16 13:46:20.907731	2010-10-16 13:46:20.907731
143	57	\N	Eric Foster	2010-10-16 13:46:20.913162	2010-10-16 13:46:20.913162
144	58	\N	massivea	2010-10-16 13:46:21.51131	2010-10-16 13:46:21.51131
145	58	\N	mebe	2010-10-16 13:46:21.516638	2010-10-16 13:46:21.516638
146	58	\N	nizze	2010-10-16 13:46:21.521907	2010-10-16 13:46:21.521907
147	58	\N	supermiqa	2010-10-16 13:46:21.527398	2010-10-16 13:46:21.527398
148	59	\N	Remear	2010-10-16 13:46:22.198654	2010-10-16 13:46:22.198654
149	59	\N	esparkman	2010-10-16 13:46:22.204447	2010-10-16 13:46:22.204447
150	59	\N	ratnikov	2010-10-16 13:46:22.210536	2010-10-16 13:46:22.210536
151	59	\N	rkofman	2010-10-16 13:46:22.216325	2010-10-16 13:46:22.216325
152	60	\N	yedingding	2010-10-16 13:46:22.915127	2010-10-16 13:46:22.915127
153	60	\N	Terry Tai	2010-10-16 13:46:22.920516	2010-10-16 13:46:22.920516
154	60	\N	davidpots	2010-10-16 13:46:22.925962	2010-10-16 13:46:22.925962
155	60	\N	Daniel Lv	2010-10-16 13:46:22.931389	2010-10-16 13:46:22.931389
156	61	\N	yerhot	2010-10-16 13:46:23.652352	2010-10-16 13:46:23.652352
157	61	\N	wagster	2010-10-16 13:46:23.658542	2010-10-16 13:46:23.658542
158	62	\N	mjording	2010-10-16 13:46:24.306456	2010-10-16 13:46:24.306456
159	62	\N	steven.nunez	2010-10-16 13:46:24.311834	2010-10-16 13:46:24.311834
160	62	\N	harisamin	2010-10-16 13:46:24.317131	2010-10-16 13:46:24.317131
161	62	\N	elliottg	2010-10-16 13:46:24.322172	2010-10-16 13:46:24.322172
162	63	\N	chrsgrrtt	2010-10-16 13:46:24.909444	2010-10-16 13:46:24.909444
163	63	\N	andypearson	2010-10-16 13:46:24.914698	2010-10-16 13:46:24.914698
164	64	\N	hecticjeff	2010-10-16 13:46:25.52837	2010-10-16 13:46:25.52837
165	64	\N	iamkeir	2010-10-16 13:46:25.533441	2010-10-16 13:46:25.533441
166	64	\N	tholder	2010-10-16 13:46:25.538387	2010-10-16 13:46:25.538387
167	65	\N	piesrtasty	2010-10-16 13:46:26.63178	2010-10-16 13:46:26.63178
168	65	\N	dat.hoang	2010-10-16 13:46:26.637331	2010-10-16 13:46:26.637331
169	66	\N	aryasudhanshu	2010-10-16 13:46:27.312454	2010-10-16 13:46:27.312454
170	66	\N	abhi1loaded	2010-10-16 13:46:27.318081	2010-10-16 13:46:27.318081
171	67	\N	tair	2010-10-16 13:46:28.013141	2010-10-16 13:46:28.013141
172	67	\N	villeti	2010-10-16 13:46:28.020165	2010-10-16 13:46:28.020165
173	67	\N	maxim.dolgobrod	2010-10-16 13:46:28.027414	2010-10-16 13:46:28.027414
174	67	\N	anttieov	2010-10-16 13:46:28.033727	2010-10-16 13:46:28.033727
175	68	\N	marcinsklodowski	2010-10-16 13:46:28.718437	2010-10-16 13:46:28.718437
176	69	\N	Shaliko	2010-10-16 13:46:29.321749	2010-10-16 13:46:29.321749
177	69	\N	egor.gorokhovtsev	2010-10-16 13:46:29.331611	2010-10-16 13:46:29.331611
178	70	\N	teropa	2010-10-16 13:46:30.049212	2010-10-16 13:46:30.049212
179	70	\N	mikko.nylen	2010-10-16 13:46:30.055101	2010-10-16 13:46:30.055101
180	70	\N	anttiforsell	2010-10-16 13:46:30.060969	2010-10-16 13:46:30.060969
181	71	\N	nabboud	2010-10-16 13:46:30.742415	2010-10-16 13:46:30.742415
182	71	\N	duynguyen0511	2010-10-16 13:46:30.747915	2010-10-16 13:46:30.747915
183	71	\N	graeme.a.i.reed	2010-10-16 13:46:30.753118	2010-10-16 13:46:30.753118
184	71	\N	dangerbell	2010-10-16 13:46:30.758607	2010-10-16 13:46:30.758607
185	72	\N	gabehollombe	2010-10-16 13:46:31.524865	2010-10-16 13:46:31.524865
186	72	\N	ganesh	2010-10-16 13:46:31.530408	2010-10-16 13:46:31.530408
187	72	\N	adamonline	2010-10-16 13:46:31.535497	2010-10-16 13:46:31.535497
188	72	\N	vespertilian	2010-10-16 13:46:31.54067	2010-10-16 13:46:31.54067
189	73	\N	renatocn	2010-10-16 13:46:32.266249	2010-10-16 13:46:32.266249
190	73	\N	bruno.grasselli	2010-10-16 13:46:32.273163	2010-10-16 13:46:32.273163
191	73	\N	rbernardelli	2010-10-16 13:46:32.279769	2010-10-16 13:46:32.279769
192	73	\N	ricardo.valeriano	2010-10-16 13:46:32.28499	2010-10-16 13:46:32.28499
193	74	\N	filmprog	2010-10-16 13:46:32.940328	2010-10-16 13:46:32.940328
194	74	\N	bendjsf	2010-10-16 13:46:32.946733	2010-10-16 13:46:32.946733
195	74	\N	tehviking	2010-10-16 13:46:32.952845	2010-10-16 13:46:32.952845
196	74	\N	woody2shoes	2010-10-16 13:46:32.95923	2010-10-16 13:46:32.95923
197	75	\N	comechao	2010-10-16 13:46:33.695653	2010-10-16 13:46:33.695653
198	75	\N	alisson.sales	2010-10-16 13:46:33.70171	2010-10-16 13:46:33.70171
199	75	\N	maximiliano.santiago	2010-10-16 13:46:33.709076	2010-10-16 13:46:33.709076
200	75	\N	Breefield	2010-10-16 13:46:33.718414	2010-10-16 13:46:33.718414
201	76	\N	tonibergholm	2010-10-16 13:46:34.450923	2010-10-16 13:46:34.450923
202	77	\N	julio_ody	2010-10-16 13:46:35.250977	2010-10-16 13:46:35.250977
203	78	\N	stefanpenner	2010-10-16 13:46:35.997496	2010-10-16 13:46:35.997496
204	78	\N	LashaKrikheli	2010-10-16 13:46:36.003332	2010-10-16 13:46:36.003332
205	78	\N	Burke Libbey	2010-10-16 13:46:36.008961	2010-10-16 13:46:36.008961
206	78	\N	erauqssidlroweht	2010-10-16 13:46:36.014831	2010-10-16 13:46:36.014831
207	79	\N	vojto	2010-10-16 13:46:36.747383	2010-10-16 13:46:36.747383
208	80	\N	Zef	2010-10-16 13:46:37.507653	2010-10-16 13:46:37.507653
209	81	\N	dirk.breuer	2010-10-16 13:46:38.306478	2010-10-16 13:46:38.306478
210	81	\N	tisba	2010-10-16 13:46:38.311888	2010-10-16 13:46:38.311888
211	81	\N	andi.bade	2010-10-16 13:46:38.318588	2010-10-16 13:46:38.318588
212	82	\N	emerleite	2010-10-16 13:46:38.925492	2010-10-16 13:46:38.925492
213	83	\N	niquola	2010-10-16 13:46:39.526046	2010-10-16 13:46:39.526046
214	84	\N	ryanb	2010-10-16 13:46:40.128218	2010-10-16 13:46:40.128218
215	84	\N	JEG2	2010-10-16 13:46:40.13399	2010-10-16 13:46:40.13399
216	84	\N	phil-bates	2010-10-16 13:46:40.13958	2010-10-16 13:46:40.13958
217	85	\N	jro	2010-10-16 13:46:40.743893	2010-10-16 13:46:40.743893
218	85	\N	msepcot	2010-10-16 13:46:40.749391	2010-10-16 13:46:40.749391
219	85	\N	manischewitzbacon	2010-10-16 13:46:40.7547	2010-10-16 13:46:40.7547
220	86	\N	eduardofiorezi	2010-10-16 13:46:41.336302	2010-10-16 13:46:41.336302
221	86	\N	reginato	2010-10-16 13:46:41.342245	2010-10-16 13:46:41.342245
222	86	\N	yukli	2010-10-16 13:46:41.347841	2010-10-16 13:46:41.347841
223	86	\N	ricardok	2010-10-16 13:46:41.352959	2010-10-16 13:46:41.352959
224	87	\N	dsakuma	2010-10-16 13:46:42.106412	2010-10-16 13:46:42.106412
225	87	\N	diegonakamashi	2010-10-16 13:46:42.111807	2010-10-16 13:46:42.111807
226	87	\N	mestrecapablanca	2010-10-16 13:46:42.118351	2010-10-16 13:46:42.118351
227	87	\N	jeryesf	2010-10-16 13:46:42.123761	2010-10-16 13:46:42.123761
228	88	\N	ssoroka	2010-10-16 13:46:42.834189	2010-10-16 13:46:42.834189
229	88	\N	nathanbertram	2010-10-16 13:46:42.840104	2010-10-16 13:46:42.840104
230	88	\N	Titanous	2010-10-16 13:46:42.845925	2010-10-16 13:46:42.845925
231	88	\N	Skipants	2010-10-16 13:46:42.851754	2010-10-16 13:46:42.851754
232	89	\N	imajes	2010-10-16 13:46:43.531473	2010-10-16 13:46:43.531473
233	90	\N	juliogreff	2010-10-16 13:46:44.150079	2010-10-16 13:46:44.150079
234	90	\N	rafaelmarin	2010-10-16 13:46:44.15662	2010-10-16 13:46:44.15662
235	90	\N	rodolfo.3	2010-10-16 13:46:44.16264	2010-10-16 13:46:44.16264
236	90	\N	herminiotorres	2010-10-16 13:46:44.169267	2010-10-16 13:46:44.169267
237	91	\N	Jason Meller	2010-10-16 13:46:44.909476	2010-10-16 13:46:44.909476
238	91	\N	Dustin Webber	2010-10-16 13:46:44.916329	2010-10-16 13:46:44.916329
239	92	\N	flaviogranero	2010-10-16 13:46:45.559975	2010-10-16 13:46:45.559975
240	92	\N	newdevas	2010-10-16 13:46:45.565154	2010-10-16 13:46:45.565154
241	92	\N	juniornakano	2010-10-16 13:46:45.570299	2010-10-16 13:46:45.570299
242	92	\N	fmunhoz	2010-10-16 13:46:45.575712	2010-10-16 13:46:45.575712
243	93	\N	jaz303	2010-10-16 13:46:46.337005	2010-10-16 13:46:46.337005
244	93	\N	Lenary	2010-10-16 13:46:46.342965	2010-10-16 13:46:46.342965
245	93	\N	nervousdave	2010-10-16 13:46:46.348569	2010-10-16 13:46:46.348569
246	93	\N	tommaso.petillo	2010-10-16 13:46:46.354138	2010-10-16 13:46:46.354138
247	94	\N	vesan	2010-10-16 13:46:46.996508	2010-10-16 13:46:46.996508
248	94	\N	iko	2010-10-16 13:46:47.001845	2010-10-16 13:46:47.001845
249	94	\N	Antsa	2010-10-16 13:46:47.007191	2010-10-16 13:46:47.007191
250	95	\N	aurels	2010-10-16 13:46:47.736399	2010-10-16 13:46:47.736399
251	95	\N	verlinden	2010-10-16 13:46:47.741846	2010-10-16 13:46:47.741846
252	95	\N	fstephany	2010-10-16 13:46:47.747127	2010-10-16 13:46:47.747127
253	97	\N	vwxyz	2010-10-16 13:46:48.474915	2010-10-16 13:46:48.474915
254	98	\N	samdk	2010-10-16 13:46:49.156781	2010-10-16 13:46:49.156781
255	98	\N	prasincs	2010-10-16 13:46:49.162638	2010-10-16 13:46:49.162638
256	98	\N	rgee	2010-10-16 13:46:49.168216	2010-10-16 13:46:49.168216
257	98	\N	mwylde	2010-10-16 13:46:49.173982	2010-10-16 13:46:49.173982
258	99	\N	daviscabral	2010-10-16 13:46:50.042846	2010-10-16 13:46:50.042846
259	99	\N	jeffersongirao	2010-10-16 13:46:50.048689	2010-10-16 13:46:50.048689
260	99	\N	alfredo_ribeiro	2010-10-16 13:46:50.054504	2010-10-16 13:46:50.054504
261	99	\N	Eduardo	2010-10-16 13:46:50.060269	2010-10-16 13:46:50.060269
262	100	\N	Jeremy Johnstone	2010-10-16 13:46:50.742684	2010-10-16 13:46:50.742684
263	101	\N	joseph.delcioppio	2010-10-16 13:46:51.341505	2010-10-16 13:46:51.341505
264	101	\N	aaronball09	2010-10-16 13:46:51.347129	2010-10-16 13:46:51.347129
265	102	\N	hari	2010-10-16 13:46:52.02351	2010-10-16 13:46:52.02351
266	102	\N	satish.fnu	2010-10-16 13:46:52.031707	2010-10-16 13:46:52.031707
267	103	\N	anveo	2010-10-16 13:46:52.73786	2010-10-16 13:46:52.73786
268	104	\N	cloudsplitter	2010-10-16 13:46:53.343	2010-10-16 13:46:53.343
269	104	\N	JuddLillestrand	2010-10-16 13:46:53.349131	2010-10-16 13:46:53.349131
270	104	\N	jeremywoertink	2010-10-16 13:46:53.355011	2010-10-16 13:46:53.355011
271	104	\N	jarhart	2010-10-16 13:46:53.360881	2010-10-16 13:46:53.360881
272	105	\N	moklett	2010-10-16 13:46:54.111742	2010-10-16 13:46:54.111742
273	105	\N	caffo	2010-10-16 13:46:54.117678	2010-10-16 13:46:54.117678
274	105	\N	jwhitmire	2010-10-16 13:46:54.122981	2010-10-16 13:46:54.122981
275	105	\N	nickj224	2010-10-16 13:46:54.128123	2010-10-16 13:46:54.128123
276	106	\N	hutch	2010-10-16 13:46:54.744676	2010-10-16 13:46:54.744676
277	106	\N	faceCHEEKwall	2010-10-16 13:46:54.750043	2010-10-16 13:46:54.750043
278	106	\N	arbitrarynoun	2010-10-16 13:46:54.755193	2010-10-16 13:46:54.755193
279	107	\N	jmartinezarce	2010-10-16 13:46:55.492963	2010-10-16 13:46:55.492963
280	108	\N	betten	2010-10-16 13:46:56.146497	2010-10-16 13:46:56.146497
281	109	\N	natekidwell	2010-10-16 13:46:56.900928	2010-10-16 13:46:56.900928
282	109	\N	oddlyzen	2010-10-16 13:46:56.906295	2010-10-16 13:46:56.906295
283	109	\N	ian.sheridan	2010-10-16 13:46:56.91156	2010-10-16 13:46:56.91156
284	110	\N	samsworldofno	2010-10-16 13:46:57.688041	2010-10-16 13:46:57.688041
285	110	\N	idlefingers	2010-10-16 13:46:57.694555	2010-10-16 13:46:57.694555
286	110	\N	raldred	2010-10-16 13:46:57.700806	2010-10-16 13:46:57.700806
287	110	\N	Pete	2010-10-16 13:46:57.707238	2010-10-16 13:46:57.707238
288	111	\N	martinciu	2010-10-16 13:46:58.350589	2010-10-16 13:46:58.350589
289	111	\N	PaulinaGorecka	2010-10-16 13:46:58.356199	2010-10-16 13:46:58.356199
290	112	\N	chuck.collins	2010-10-16 13:46:59.109144	2010-10-16 13:46:59.109144
291	112	\N	stephenmoseley	2010-10-16 13:46:59.116298	2010-10-16 13:46:59.116298
292	112	\N	neilmock	2010-10-16 13:46:59.122266	2010-10-16 13:46:59.122266
293	112	\N	mattg	2010-10-16 13:46:59.127845	2010-10-16 13:46:59.127845
294	113	\N	brianwigginton	2010-10-16 13:46:59.744119	2010-10-16 13:46:59.744119
295	113	\N	dangerbucks	2010-10-16 13:46:59.749812	2010-10-16 13:46:59.749812
296	114	\N	kdaigle	2010-10-16 13:47:00.348205	2010-10-16 13:47:00.348205
297	115	\N	marcosccm	2010-10-16 13:47:01.006831	2010-10-16 13:47:01.006831
298	115	\N	albertoleal	2010-10-16 13:47:01.012417	2010-10-16 13:47:01.012417
299	115	\N	jaumnc	2010-10-16 13:47:01.018586	2010-10-16 13:47:01.018586
300	115	\N	xyentific	2010-10-16 13:47:01.024183	2010-10-16 13:47:01.024183
301	116	\N	Francisco Souza	2010-10-16 13:47:01.742185	2010-10-16 13:47:01.742185
302	116	\N	wbotelhos	2010-10-16 13:47:01.747363	2010-10-16 13:47:01.747363
303	116	\N	glbenz	2010-10-16 13:47:01.752425	2010-10-16 13:47:01.752425
304	116	\N	vixlima	2010-10-16 13:47:01.757623	2010-10-16 13:47:01.757623
305	117	\N	tagliati	2010-10-16 13:47:02.500175	2010-10-16 13:47:02.500175
306	117	\N	m3nd3s	2010-10-16 13:47:02.505417	2010-10-16 13:47:02.505417
307	117	\N	leohackin	2010-10-16 13:47:02.510651	2010-10-16 13:47:02.510651
308	117	\N	juniorz	2010-10-16 13:47:02.516862	2010-10-16 13:47:02.516862
309	118	\N	jeveaux	2010-10-16 13:47:03.15575	2010-10-16 13:47:03.15575
310	118	\N	makoto	2010-10-16 13:47:03.16112	2010-10-16 13:47:03.16112
311	118	\N	lcquadros	2010-10-16 13:47:03.166162	2010-10-16 13:47:03.166162
312	118	\N	roberto.soares	2010-10-16 13:47:03.171329	2010-10-16 13:47:03.171329
313	119	\N	ryanstout	2010-10-16 13:47:03.768275	2010-10-16 13:47:03.768275
314	119	\N	rheimbuch	2010-10-16 13:47:03.773811	2010-10-16 13:47:03.773811
315	119	\N	robbie.lamb	2010-10-16 13:47:03.778941	2010-10-16 13:47:03.778941
316	119	\N	ben.govero	2010-10-16 13:47:03.784258	2010-10-16 13:47:03.784258
317	120	\N	brianthecoder	2010-10-16 13:47:04.603894	2010-10-16 13:47:04.603894
318	121	\N	giovanni.lion	2010-10-16 13:47:05.340968	2010-10-16 13:47:05.340968
319	122	\N	matthewrudyjacobs	2010-10-16 13:47:06.158852	2010-10-16 13:47:06.158852
320	122	\N	designium	2010-10-16 13:47:06.165125	2010-10-16 13:47:06.165125
321	122	\N	tatonlto	2010-10-16 13:47:06.170812	2010-10-16 13:47:06.170812
322	122	\N	cmlchung	2010-10-16 13:47:06.176841	2010-10-16 13:47:06.176841
323	123	\N	ParkinT	2010-10-16 13:47:06.968134	2010-10-16 13:47:06.968134
324	123	\N	mentallic3d	2010-10-16 13:47:06.973778	2010-10-16 13:47:06.973778
325	123	\N	tparkin	2010-10-16 13:47:06.981257	2010-10-16 13:47:06.981257
326	124	\N	sashazykov	2010-10-16 13:47:07.750414	2010-10-16 13:47:07.750414
327	124	\N	arsenische	2010-10-16 13:47:07.75623	2010-10-16 13:47:07.75623
328	124	\N	maksimharin	2010-10-16 13:47:07.762124	2010-10-16 13:47:07.762124
329	125	\N	dekart	2010-10-16 13:47:08.580007	2010-10-16 13:47:08.580007
330	125	\N	Zoe Novikova	2010-10-16 13:47:08.58565	2010-10-16 13:47:08.58565
331	125	\N	mikhailov	2010-10-16 13:47:08.591034	2010-10-16 13:47:08.591034
332	125	\N	dmaximov	2010-10-16 13:47:08.596548	2010-10-16 13:47:08.596548
333	126	\N	mahatmamanic	2010-10-16 13:47:09.335375	2010-10-16 13:47:09.335375
334	126	\N	scottchacon	2010-10-16 13:47:09.341304	2010-10-16 13:47:09.341304
335	126	\N	tomseago	2010-10-16 13:47:09.347114	2010-10-16 13:47:09.347114
336	127	\N	feinerfug	2010-10-16 13:47:09.983881	2010-10-16 13:47:09.983881
337	127	\N	kioopi	2010-10-16 13:47:09.989216	2010-10-16 13:47:09.989216
338	127	\N	tf	2010-10-16 13:47:09.994417	2010-10-16 13:47:09.994417
339	128	\N	mustardamus	2010-10-16 13:47:10.573824	2010-10-16 13:47:10.573824
340	128	\N	erikzaadi	2010-10-16 13:47:10.579528	2010-10-16 13:47:10.579528
341	129	\N	zack.adams	2010-10-16 13:47:11.319501	2010-10-16 13:47:11.319501
342	129	\N	jaswope	2010-10-16 13:47:11.324841	2010-10-16 13:47:11.324841
343	129	\N	jasonnoble	2010-10-16 13:47:11.330126	2010-10-16 13:47:11.330126
344	129	\N	jmartelgoldsmith	2010-10-16 13:47:11.33524	2010-10-16 13:47:11.33524
345	130	\N	fredwu	2010-10-16 13:47:11.959559	2010-10-16 13:47:11.959559
346	131	\N	cyberkni	2010-10-16 13:47:12.771747	2010-10-16 13:47:12.771747
347	131	\N	shanel	2010-10-16 13:47:12.777518	2010-10-16 13:47:12.777518
348	131	\N	ravidew	2010-10-16 13:47:12.78304	2010-10-16 13:47:12.78304
349	132	\N	jonathanpenn	2010-10-16 13:47:13.451373	2010-10-16 13:47:13.451373
350	132	\N	joefiorini	2010-10-16 13:47:13.457521	2010-10-16 13:47:13.457521
351	132	\N	joshwalsh	2010-10-16 13:47:13.463582	2010-10-16 13:47:13.463582
352	132	\N	ibg_russ	2010-10-16 13:47:13.468844	2010-10-16 13:47:13.468844
353	133	\N	mattyoho	2010-10-16 13:47:14.164127	2010-10-16 13:47:14.164127
354	134	\N	eltonokada	2010-10-16 13:47:14.767277	2010-10-16 13:47:14.767277
355	134	\N	pedroputz	2010-10-16 13:47:14.773232	2010-10-16 13:47:14.773232
356	134	\N	alexanmtz	2010-10-16 13:47:14.778886	2010-10-16 13:47:14.778886
357	134	\N	rodvlopes	2010-10-16 13:47:14.78435	2010-10-16 13:47:14.78435
358	135	\N	rofh	2010-10-16 13:47:15.3892	2010-10-16 13:47:15.3892
359	136	\N	steffoz	2010-10-16 13:47:16.135874	2010-10-16 13:47:16.135874
360	136	\N	mat_jack1	2010-10-16 13:47:16.141949	2010-10-16 13:47:16.141949
361	136	\N	matte	2010-10-16 13:47:16.147791	2010-10-16 13:47:16.147791
362	136	\N	knick	2010-10-16 13:47:16.153095	2010-10-16 13:47:16.153095
363	137	\N	bbtox	2010-10-16 13:47:16.963158	2010-10-16 13:47:16.963158
364	137	\N	anteseraotro	2010-10-16 13:47:16.968343	2010-10-16 13:47:16.968343
365	137	\N	gealgaro	2010-10-16 13:47:16.973482	2010-10-16 13:47:16.973482
366	137	\N	mariotatis	2010-10-16 13:47:16.978616	2010-10-16 13:47:16.978616
367	138	\N	jfgomez86	2010-10-16 13:47:17.743376	2010-10-16 13:47:17.743376
368	138	\N	miguel.perez.leal	2010-10-16 13:47:17.74889	2010-10-16 13:47:17.74889
369	138	\N	peter	2010-10-16 13:47:17.75408	2010-10-16 13:47:17.75408
370	138	\N	Nester	2010-10-16 13:47:17.759371	2010-10-16 13:47:17.759371
371	139	\N	yaroslav	2010-10-16 13:47:18.391375	2010-10-16 13:47:18.391375
372	139	\N	maxlapshin	2010-10-16 13:47:18.396539	2010-10-16 13:47:18.396539
373	140	\N	sotakone	2010-10-16 13:47:18.981706	2010-10-16 13:47:18.981706
374	141	\N	syn	2010-10-16 13:47:19.733731	2010-10-16 13:47:19.733731
375	142	\N	matthews.will	2010-10-16 13:47:20.371239	2010-10-16 13:47:20.371239
376	143	\N	floydjoseph	2010-10-16 13:47:20.972753	2010-10-16 13:47:20.972753
377	144	\N	jkap	2010-10-16 13:47:21.56795	2010-10-16 13:47:21.56795
378	144	\N	ReMiiX	2010-10-16 13:47:21.573686	2010-10-16 13:47:21.573686
379	145	\N	victorcoder	2010-10-16 13:47:22.37768	2010-10-16 13:47:22.37768
380	145	\N	DaTaBaSeMaN	2010-10-16 13:47:22.383714	2010-10-16 13:47:22.383714
381	145	\N	xavib	2010-10-16 13:47:22.389286	2010-10-16 13:47:22.389286
382	146	\N	MSch	2010-10-16 13:47:22.999416	2010-10-16 13:47:22.999416
383	146	\N	TomK32	2010-10-16 13:47:23.00477	2010-10-16 13:47:23.00477
384	146	\N	cypher	2010-10-16 13:47:23.010127	2010-10-16 13:47:23.010127
385	146	\N	steipete	2010-10-16 13:47:23.015573	2010-10-16 13:47:23.015573
386	147	\N	rort	2010-10-16 13:47:23.600955	2010-10-16 13:47:23.600955
387	148	\N	warren_s	2010-10-16 13:47:24.273846	2010-10-16 13:47:24.273846
388	148	\N	keithpitt	2010-10-16 13:47:24.279793	2010-10-16 13:47:24.279793
389	148	\N	alexeckermann	2010-10-16 13:47:24.286117	2010-10-16 13:47:24.286117
390	148	\N	bjeanes	2010-10-16 13:47:24.292911	2010-10-16 13:47:24.292911
391	149	\N	ryanza	2010-10-16 13:47:24.982139	2010-10-16 13:47:24.982139
392	149	\N	SixiS	2010-10-16 13:47:24.987215	2010-10-16 13:47:24.987215
393	149	\N	eli.dott	2010-10-16 13:47:24.992455	2010-10-16 13:47:24.992455
394	149	\N	reQunix	2010-10-16 13:47:24.998332	2010-10-16 13:47:24.998332
395	150	\N	alexei.tymchenko	2010-10-16 13:47:25.717615	2010-10-16 13:47:25.717615
396	151	\N	reidab	2010-10-16 13:47:26.374756	2010-10-16 13:47:26.374756
397	152	\N	bert.kuo	2010-10-16 13:47:27.074594	2010-10-16 13:47:27.074594
398	153	\N	achiu	2010-10-16 13:47:27.784018	2010-10-16 13:47:27.784018
399	153	\N	nesquena	2010-10-16 13:47:27.790207	2010-10-16 13:47:27.790207
400	153	\N	joshbuddy	2010-10-16 13:47:27.796219	2010-10-16 13:47:27.796219
401	153	\N	tracy.cogsdill	2010-10-16 13:47:27.802269	2010-10-16 13:47:27.802269
402	154	\N	raphaelcosta	2010-10-16 13:47:28.412917	2010-10-16 13:47:28.412917
403	155	\N	rohit.arondekar	2010-10-16 13:47:29.132145	2010-10-16 13:47:29.132145
404	156	\N	visnup	2010-10-16 13:47:29.785213	2010-10-16 13:47:29.785213
405	156	\N	gerad	2010-10-16 13:47:29.791282	2010-10-16 13:47:29.791282
406	156	\N	hunedx	2010-10-16 13:47:29.797162	2010-10-16 13:47:29.797162
407	157	\N	davetron5000	2010-10-16 13:47:30.518504	2010-10-16 13:47:30.518504
408	158	\N	whyruby	2010-10-16 13:47:31.178244	2010-10-16 13:47:31.178244
409	159	\N	evilchelu	2010-10-16 13:47:31.93573	2010-10-16 13:47:31.93573
410	159	\N	dira	2010-10-16 13:47:31.941575	2010-10-16 13:47:31.941575
411	160	\N	nathancarnes	2010-10-16 13:47:32.607251	2010-10-16 13:47:32.607251
412	160	\N	adrianpike	2010-10-16 13:47:32.613037	2010-10-16 13:47:32.613037
413	160	\N	amiel.martin	2010-10-16 13:47:32.618664	2010-10-16 13:47:32.618664
414	160	\N	AndrewDumont	2010-10-16 13:47:32.624534	2010-10-16 13:47:32.624534
415	161	\N	johnfn	2010-10-16 13:47:33.361845	2010-10-16 13:47:33.361845
416	161	\N	david.a.peter	2010-10-16 13:47:33.367451	2010-10-16 13:47:33.367451
417	161	\N	j4cqu13s	2010-10-16 13:47:33.372673	2010-10-16 13:47:33.372673
418	162	\N	jeffry.degrande	2010-10-16 13:47:34.07899	2010-10-16 13:47:34.07899
419	162	\N	danielvlopes	2010-10-16 13:47:34.085022	2010-10-16 13:47:34.085022
420	162	\N	joao.vitor	2010-10-16 13:47:34.090715	2010-10-16 13:47:34.090715
421	162	\N	brunoaalves	2010-10-16 13:47:34.096338	2010-10-16 13:47:34.096338
422	163	\N	zak	2010-10-16 13:47:34.889429	2010-10-16 13:47:34.889429
423	164	\N	zmack	2010-10-16 13:47:35.585724	2010-10-16 13:47:35.585724
424	165	\N	antonioams	2010-10-16 13:47:36.209421	2010-10-16 13:47:36.209421
425	165	\N	andre_pantaliao	2010-10-16 13:47:36.215265	2010-10-16 13:47:36.215265
426	165	\N	marcoshack	2010-10-16 13:47:36.220798	2010-10-16 13:47:36.220798
427	165	\N	FabricioFFC	2010-10-16 13:47:36.226071	2010-10-16 13:47:36.226071
428	166	\N	nigelr	2010-10-16 13:47:36.81814	2010-10-16 13:47:36.81814
429	166	\N	markgandolfo	2010-10-16 13:47:36.823615	2010-10-16 13:47:36.823615
430	166	\N	Nathan	2010-10-16 13:47:36.8301	2010-10-16 13:47:36.8301
431	166	\N	benhoad	2010-10-16 13:47:36.83584	2010-10-16 13:47:36.83584
432	167	\N	Veez	2010-10-16 13:47:37.569931	2010-10-16 13:47:37.569931
433	167	\N	calebcornman	2010-10-16 13:47:37.575247	2010-10-16 13:47:37.575247
434	167	\N	zachinglis	2010-10-16 13:47:37.580397	2010-10-16 13:47:37.580397
435	167	\N	oscardelben	2010-10-16 13:47:37.585601	2010-10-16 13:47:37.585601
436	168	\N	synewaves	2010-10-16 13:47:38.195955	2010-10-16 13:47:38.195955
437	169	\N	tim_keller	2010-10-16 13:47:38.851393	2010-10-16 13:47:38.851393
438	169	\N	pie4dan	2010-10-16 13:47:38.856774	2010-10-16 13:47:38.856774
439	169	\N	fatcat81	2010-10-16 13:47:38.862087	2010-10-16 13:47:38.862087
440	170	\N	adrianoalmeida7	2010-10-16 13:47:39.575295	2010-10-16 13:47:39.575295
441	171	\N	plainprogrammer	2010-10-16 13:47:40.40817	2010-10-16 13:47:40.40817
442	171	\N	jellisjapan	2010-10-16 13:47:40.41318	2010-10-16 13:47:40.41318
443	171	\N	SimonDorfman	2010-10-16 13:47:40.41807	2010-10-16 13:47:40.41807
444	171	\N	togakangaroo	2010-10-16 13:47:40.42334	2010-10-16 13:47:40.42334
445	172	\N	aussiegeek	2010-10-16 13:47:41.011947	2010-10-16 13:47:41.011947
446	173	\N	gabriel.so	2010-10-16 13:47:41.762149	2010-10-16 13:47:41.762149
447	173	\N	davidpaniz	2010-10-16 13:47:41.767211	2010-10-16 13:47:41.767211
448	173	\N	adrianoalmeida7	2010-10-16 13:47:41.772342	2010-10-16 13:47:41.772342
449	173	\N	cairesvs	2010-10-16 13:47:41.877944	2010-10-16 13:47:41.877944
450	174	\N	fedesoria	2010-10-16 13:47:42.60466	2010-10-16 13:47:42.60466
451	175	\N	cmilfont	2010-10-16 13:47:43.20088	2010-10-16 13:47:43.20088
452	175	\N	Henrique Gogó	2010-10-16 13:47:43.206553	2010-10-16 13:47:43.206553
453	175	\N	rodrigo.dealer	2010-10-16 13:47:43.211936	2010-10-16 13:47:43.211936
454	175	\N	razenha	2010-10-16 13:47:43.217298	2010-10-16 13:47:43.217298
455	176	\N	alberto_souza	2010-10-16 13:47:43.838162	2010-10-16 13:47:43.838162
456	177	\N	pellegrino	2010-10-16 13:47:44.588218	2010-10-16 13:47:44.588218
457	177	\N	ramonpage	2010-10-16 13:47:44.593747	2010-10-16 13:47:44.593747
458	177	\N	tapajos	2010-10-16 13:47:44.599694	2010-10-16 13:47:44.599694
459	177	\N	Vinicius Manhaes Teles	2010-10-16 13:47:44.605443	2010-10-16 13:47:44.605443
460	178	\N	reu	2010-10-16 13:47:45.34405	2010-10-16 13:47:45.34405
461	179	\N	ferbass	2010-10-16 13:47:46.018448	2010-10-16 13:47:46.018448
462	179	\N	bbcoimbra	2010-10-16 13:47:46.024153	2010-10-16 13:47:46.024153
463	179	\N	scalone	2010-10-16 13:47:46.029513	2010-10-16 13:47:46.029513
464	179	\N	emersonvinicius	2010-10-16 13:47:46.035283	2010-10-16 13:47:46.035283
465	180	\N	Vertis	2010-10-16 13:47:46.645912	2010-10-16 13:47:46.645912
466	180	\N	gregmcintyre	2010-10-16 13:47:46.651318	2010-10-16 13:47:46.651318
467	181	\N	rubyjedi	2010-10-16 13:47:47.405322	2010-10-16 13:47:47.405322
468	182	\N	rlmflores	2010-10-16 13:47:48.009902	2010-10-16 13:47:48.009902
469	182	\N	lucasmazza	2010-10-16 13:47:48.015644	2010-10-16 13:47:48.015644
470	182	\N	wylkon	2010-10-16 13:47:48.021041	2010-10-16 13:47:48.021041
471	182	\N	azisaka	2010-10-16 13:47:48.026241	2010-10-16 13:47:48.026241
472	183	\N	dc.rec1	2010-10-16 13:47:48.688191	2010-10-16 13:47:48.688191
473	184	\N	rayrogers	2010-10-16 13:47:49.505741	2010-10-16 13:47:49.505741
474	184	\N	Snipes	2010-10-16 13:47:49.512022	2010-10-16 13:47:49.512022
475	184	\N	mmargosian	2010-10-16 13:47:49.517509	2010-10-16 13:47:49.517509
476	185	\N	albertoperdomo	2010-10-16 13:47:50.211692	2010-10-16 13:47:50.211692
477	185	\N	polimorfico	2010-10-16 13:47:50.21718	2010-10-16 13:47:50.21718
478	185	\N	heragu	2010-10-16 13:47:50.222578	2010-10-16 13:47:50.222578
479	186	\N	lucasdecastro	2010-10-16 13:47:50.820729	2010-10-16 13:47:50.820729
480	186	\N	jpsbarros	2010-10-16 13:47:50.826309	2010-10-16 13:47:50.826309
481	186	\N	hildoanex	2010-10-16 13:47:50.831621	2010-10-16 13:47:50.831621
482	187	\N	anildigital	2010-10-16 13:47:51.565676	2010-10-16 13:47:51.565676
483	187	\N	ravinderrana30	2010-10-16 13:47:51.571322	2010-10-16 13:47:51.571322
484	187	\N	amiteshkumar	2010-10-16 13:47:51.576938	2010-10-16 13:47:51.576938
485	188	\N	WillyShark	2010-10-16 13:47:52.206517	2010-10-16 13:47:52.206517
486	188	\N	Beauty Elena	2010-10-16 13:47:52.212009	2010-10-16 13:47:52.212009
487	189	\N	muanis	2010-10-16 13:47:52.80986	2010-10-16 13:47:52.80986
488	189	\N	cainanunes	2010-10-16 13:47:52.814984	2010-10-16 13:47:52.814984
489	189	\N	gcirne	2010-10-16 13:47:52.820047	2010-10-16 13:47:52.820047
490	189	\N	Jose Peleteiro	2010-10-16 13:47:52.825103	2010-10-16 13:47:52.825103
491	1	\N	ajsharp	2010-10-16 13:47:53.499844	2010-10-16 13:47:53.499844
492	1	\N	patmaddox	2010-10-16 13:47:53.505484	2010-10-16 13:47:53.505484
493	1	\N	xternal	2010-10-16 13:47:53.511195	2010-10-16 13:47:53.511195
494	1	\N	sid	2010-10-16 13:47:53.518752	2010-10-16 13:47:53.518752
495	96	\N	tjeden	2010-10-16 13:47:54.21339	2010-10-16 13:47:54.21339
496	96	\N	czak	2010-10-16 13:47:54.218966	2010-10-16 13:47:54.218966
497	96	\N	Kot Behemot	2010-10-16 13:47:54.224281	2010-10-16 13:47:54.224281
498	190	\N	bradly	2010-10-16 13:47:54.846889	2010-10-16 13:47:54.846889
499	191	\N	teabass	2010-10-16 13:47:55.588937	2010-10-16 13:47:55.588937
500	191	\N	Limi	2010-10-16 13:47:55.594181	2010-10-16 13:47:55.594181
501	191	\N	Rylon	2010-10-16 13:47:55.599186	2010-10-16 13:47:55.599186
502	192	\N	Jakob S	2010-10-16 13:47:56.208593	2010-10-16 13:47:56.208593
503	192	\N	RSpace	2010-10-16 13:47:56.214002	2010-10-16 13:47:56.214002
504	192	\N	Laust Rud	2010-10-16 13:47:56.321654	2010-10-16 13:47:56.321654
505	193	\N	huxley.spark	2010-10-16 13:47:57.008792	2010-10-16 13:47:57.008792
506	194	\N	alunny	2010-10-16 13:47:57.612969	2010-10-16 13:47:57.612969
507	195	\N	mike-burns	2010-10-16 13:47:58.280443	2010-10-16 13:47:58.280443
508	195	\N	ubuwaits	2010-10-16 13:47:58.286623	2010-10-16 13:47:58.286623
509	195	\N	jayunit	2010-10-16 13:47:58.292915	2010-10-16 13:47:58.292915
510	195	\N	lizardfiz	2010-10-16 13:47:58.298694	2010-10-16 13:47:58.298694
511	196	\N	comike011	2010-10-16 13:47:59.022501	2010-10-16 13:47:59.022501
512	197	\N	apalmblad	2010-10-16 13:47:59.819878	2010-10-16 13:47:59.819878
513	198	\N	matt	2010-10-16 13:48:00.414606	2010-10-16 13:48:00.414606
514	198	\N	jcxplorer	2010-10-16 13:48:00.42153	2010-10-16 13:48:00.42153
515	198	\N	karrisaarinen	2010-10-16 13:48:00.428067	2010-10-16 13:48:00.428067
516	198	\N	anttiakonniemi	2010-10-16 13:48:00.435434	2010-10-16 13:48:00.435434
517	199	\N	rafaelss	2010-10-16 13:48:01.174726	2010-10-16 13:48:01.174726
518	199	\N	joel.souza	2010-10-16 13:48:01.180784	2010-10-16 13:48:01.180784
519	200	\N	elizabrock	2010-10-16 13:48:01.844943	2010-10-16 13:48:01.844943
520	200	\N	marcum.keith	2010-10-16 13:48:01.850185	2010-10-16 13:48:01.850185
521	201	\N	fmeyer	2010-10-16 13:48:02.442459	2010-10-16 13:48:02.442459
522	201	\N	leobessa	2010-10-16 13:48:02.448011	2010-10-16 13:48:02.448011
523	202	\N	Thanatos	2010-10-16 13:48:03.172076	2010-10-16 13:48:03.172076
524	202	\N	Talbs	2010-10-16 13:48:03.177865	2010-10-16 13:48:03.177865
525	202	\N	kvigneault	2010-10-16 13:48:03.185152	2010-10-16 13:48:03.185152
526	203	\N	cleitonfco	2010-10-16 13:48:03.821647	2010-10-16 13:48:03.821647
527	203	\N	weldyss	2010-10-16 13:48:03.925808	2010-10-16 13:48:03.925808
528	203	\N	samflores	2010-10-16 13:48:03.93176	2010-10-16 13:48:03.93176
529	203	\N	caironoleto	2010-10-16 13:48:03.938461	2010-10-16 13:48:03.938461
530	204	\N	noel_g	2010-10-16 13:48:04.624927	2010-10-16 13:48:04.624927
531	204	\N	invalidrecord	2010-10-16 13:48:04.631057	2010-10-16 13:48:04.631057
532	204	\N	priani	2010-10-16 13:48:04.637152	2010-10-16 13:48:04.637152
533	205	\N	oriolgual	2010-10-16 13:48:05.403177	2010-10-16 13:48:05.403177
534	205	\N	txustice	2010-10-16 13:48:05.408715	2010-10-16 13:48:05.408715
535	205	\N	holamon	2010-10-16 13:48:05.414018	2010-10-16 13:48:05.414018
536	205	\N	josepjaume	2010-10-16 13:48:05.419495	2010-10-16 13:48:05.419495
537	206	\N	eugene.bolshakov	2010-10-16 13:48:06.028033	2010-10-16 13:48:06.028033
538	206	\N	Sergei Homjakov	2010-10-16 13:48:06.033801	2010-10-16 13:48:06.033801
539	206	\N	somebody32	2010-10-16 13:48:06.039958	2010-10-16 13:48:06.039958
540	206	\N	Maxim Filatov	2010-10-16 13:48:06.045586	2010-10-16 13:48:06.045586
541	207	\N	npverni	2010-10-16 13:48:06.693809	2010-10-16 13:48:06.693809
542	207	\N	go	2010-10-16 13:48:06.699063	2010-10-16 13:48:06.699063
543	207	\N	dijama	2010-10-16 13:48:06.704389	2010-10-16 13:48:06.704389
544	208	\N	qmx	2010-10-16 13:48:07.425453	2010-10-16 13:48:07.425453
545	208	\N	anderson leite	2010-10-16 13:48:07.431223	2010-10-16 13:48:07.431223
546	208	\N	vinibaggio	2010-10-16 13:48:07.437045	2010-10-16 13:48:07.437045
547	209	\N	brainopia	2010-10-16 13:48:08.171859	2010-10-16 13:48:08.171859
548	209	\N	gazay	2010-10-16 13:48:08.17757	2010-10-16 13:48:08.17757
549	209	\N	almametova	2010-10-16 13:48:08.182848	2010-10-16 13:48:08.182848
550	210	\N	caseyrosenthal	2010-10-16 13:48:09.030126	2010-10-16 13:48:09.030126
551	210	\N	jallama	2010-10-16 13:48:09.035982	2010-10-16 13:48:09.035982
552	211	\N	tristandunn	2010-10-16 13:48:09.646178	2010-10-16 13:48:09.646178
553	212	\N	rizwanreza	2010-10-16 13:48:10.291942	2010-10-16 13:48:10.291942
554	213	\N	_aitor	2010-10-16 13:48:11.024458	2010-10-16 13:48:11.024458
555	213	\N	molpe	2010-10-16 13:48:11.02962	2010-10-16 13:48:11.02962
556	213	\N	salicio	2010-10-16 13:48:11.034635	2010-10-16 13:48:11.034635
557	213	\N	maxkuri	2010-10-16 13:48:11.039836	2010-10-16 13:48:11.039836
558	214	\N	bkerley	2010-10-16 13:48:11.830674	2010-10-16 13:48:11.830674
559	214	\N	ivanacostarubio	2010-10-16 13:48:11.83644	2010-10-16 13:48:11.83644
560	214	\N	deltazap	2010-10-16 13:48:11.842382	2010-10-16 13:48:11.842382
561	215	\N	inem	2010-10-16 13:48:12.436973	2010-10-16 13:48:12.436973
562	215	\N	hlyzov	2010-10-16 13:48:12.443621	2010-10-16 13:48:12.443621
563	215	\N	sasha	2010-10-16 13:48:12.449497	2010-10-16 13:48:12.449497
564	215	\N	sletix	2010-10-16 13:48:12.454902	2010-10-16 13:48:12.454902
565	216	\N	mpavelich	2010-10-16 13:48:13.062292	2010-10-16 13:48:13.062292
566	217	\N	crnixon	2010-10-16 13:48:13.655666	2010-10-16 13:48:13.655666
567	217	\N	greenideas	2010-10-16 13:48:13.661964	2010-10-16 13:48:13.661964
568	217	\N	dce	2010-10-16 13:48:13.668147	2010-10-16 13:48:13.668147
569	217	\N	yaychris	2010-10-16 13:48:13.673972	2010-10-16 13:48:13.673972
570	218	\N	cssboy	2010-10-16 13:48:14.250119	2010-10-16 13:48:14.250119
571	218	\N	Barrister	2010-10-16 13:48:14.255702	2010-10-16 13:48:14.255702
572	219	\N	raasdnil	2010-10-16 13:48:15.017143	2010-10-16 13:48:15.017143
573	219	\N	ivanvanderbyl	2010-10-16 13:48:15.022433	2010-10-16 13:48:15.022433
574	219	\N	rex.chung	2010-10-16 13:48:15.02748	2010-10-16 13:48:15.02748
575	219	\N	thedav3	2010-10-16 13:48:15.032511	2010-10-16 13:48:15.032511
576	220	\N	mike.nicholaides	2010-10-16 13:48:15.836644	2010-10-16 13:48:15.836644
577	220	\N	chrisconley	2010-10-16 13:48:15.841992	2010-10-16 13:48:15.841992
578	220	\N	conley.jj	2010-10-16 13:48:15.847375	2010-10-16 13:48:15.847375
579	221	\N	cbrulak	2010-10-16 13:48:16.50278	2010-10-16 13:48:16.50278
580	221	\N	GuitarKat	2010-10-16 13:48:16.507996	2010-10-16 13:48:16.507996
581	221	\N	snostorm	2010-10-16 13:48:16.512999	2010-10-16 13:48:16.512999
582	221	\N	bdoserror	2010-10-16 13:48:16.518139	2010-10-16 13:48:16.518139
583	222	\N	heff	2010-10-16 13:48:17.239313	2010-10-16 13:48:17.239313
584	222	\N	fowlduck	2010-10-16 13:48:17.245113	2010-10-16 13:48:17.245113
585	222	\N	Brandon	2010-10-16 13:48:17.250827	2010-10-16 13:48:17.250827
586	222	\N	adamkittelson	2010-10-16 13:48:17.256524	2010-10-16 13:48:17.256524
587	223	\N	omaraliqureshi	2010-10-16 13:48:17.869255	2010-10-16 13:48:17.869255
588	223	\N	johnoxton	2010-10-16 13:48:17.874324	2010-10-16 13:48:17.874324
589	223	\N	rachelisking	2010-10-16 13:48:17.879438	2010-10-16 13:48:17.879438
590	223	\N	steffanwilliams	2010-10-16 13:48:17.884739	2010-10-16 13:48:17.884739
591	224	\N	kernowsoul	2010-10-16 13:48:18.620642	2010-10-16 13:48:18.620642
592	225	\N	maciej	2010-10-16 13:48:19.241584	2010-10-16 13:48:19.241584
593	225	\N	Bonias	2010-10-16 13:48:19.247465	2010-10-16 13:48:19.247465
594	225	\N	baka	2010-10-16 13:48:19.252937	2010-10-16 13:48:19.252937
595	225	\N	lechu	2010-10-16 13:48:19.25819	2010-10-16 13:48:19.25819
596	226	\N	joren	2010-10-16 13:48:19.93997	2010-10-16 13:48:19.93997
597	226	\N	wonko_be	2010-10-16 13:48:19.948259	2010-10-16 13:48:19.948259
598	226	\N	miespaties	2010-10-16 13:48:19.954475	2010-10-16 13:48:19.954475
599	226	\N	dimitrivh	2010-10-16 13:48:19.961478	2010-10-16 13:48:19.961478
600	227	\N	tmschndr	2010-10-16 13:48:20.637399	2010-10-16 13:48:20.637399
601	227	\N	kangguru	2010-10-16 13:48:20.642913	2010-10-16 13:48:20.642913
602	227	\N	stephanpavlovic	2010-10-16 13:48:20.648213	2010-10-16 13:48:20.648213
603	227	\N	jhilden	2010-10-16 13:48:20.653664	2010-10-16 13:48:20.653664
604	228	\N	DefV	2010-10-16 13:48:21.3813	2010-10-16 13:48:21.3813
605	228	\N	jomz	2010-10-16 13:48:21.3873	2010-10-16 13:48:21.3873
606	228	\N	yoniweb	2010-10-16 13:48:21.392837	2010-10-16 13:48:21.392837
607	228	\N	tom.maeckelberghe	2010-10-16 13:48:21.398417	2010-10-16 13:48:21.398417
608	229	\N	pinakes	2010-10-16 13:48:22.035424	2010-10-16 13:48:22.035424
609	230	\N	panpainter	2010-10-16 13:48:22.639592	2010-10-16 13:48:22.639592
610	231	\N	skorfmann	2010-10-16 13:48:23.246058	2010-10-16 13:48:23.246058
611	231	\N	blindgaenger	2010-10-16 13:48:23.251813	2010-10-16 13:48:23.251813
612	231	\N	dscholtis	2010-10-16 13:48:23.256829	2010-10-16 13:48:23.256829
613	231	\N	aemkei	2010-10-16 13:48:23.261809	2010-10-16 13:48:23.261809
614	232	\N	bscofield	2010-10-16 13:48:24.044246	2010-10-16 13:48:24.044246
615	233	\N	mattpetty	2010-10-16 13:48:24.683595	2010-10-16 13:48:24.683595
616	234	\N	wesg	2010-10-16 13:48:25.417651	2010-10-16 13:48:25.417651
617	234	\N	bellmyer	2010-10-16 13:48:25.521324	2010-10-16 13:48:25.521324
618	234	\N	ChicagoE	2010-10-16 13:48:25.527751	2010-10-16 13:48:25.527751
619	234	\N	ethanpeterson	2010-10-16 13:48:25.533143	2010-10-16 13:48:25.533143
620	235	\N	tsmango	2010-10-16 13:48:26.243962	2010-10-16 13:48:26.243962
621	236	\N	paulingham	2010-10-16 13:48:26.851003	2010-10-16 13:48:26.851003
622	236	\N	seenmyfate	2010-10-16 13:48:26.858863	2010-10-16 13:48:26.858863
623	236	\N	sfusion	2010-10-16 13:48:26.864948	2010-10-16 13:48:26.864948
624	236	\N	jonftwtaylor	2010-10-16 13:48:26.871165	2010-10-16 13:48:26.871165
625	237	\N	chapambrose	2010-10-16 13:48:27.492282	2010-10-16 13:48:27.492282
626	237	\N	ryanhubbard	2010-10-16 13:48:27.49772	2010-10-16 13:48:27.49772
627	237	\N	drawsalot	2010-10-16 13:48:27.503112	2010-10-16 13:48:27.503112
628	238	\N	keeran	2010-10-16 13:48:28.254378	2010-10-16 13:48:28.254378
629	238	\N	vijay	2010-10-16 13:48:28.259759	2010-10-16 13:48:28.259759
630	239	\N	foca	2010-10-16 13:48:28.858825	2010-10-16 13:48:28.858825
631	239	\N	rafaeliv	2010-10-16 13:48:28.86401	2010-10-16 13:48:28.86401
632	239	\N	nachof	2010-10-16 13:48:28.86944	2010-10-16 13:48:28.86944
633	239	\N	dcadenas	2010-10-16 13:48:28.87468	2010-10-16 13:48:28.87468
634	240	\N	nicolas.alpi	2010-10-16 13:48:29.640654	2010-10-16 13:48:29.640654
635	241	\N	viking	2010-10-16 13:48:30.262386	2010-10-16 13:48:30.262386
636	241	\N	graywh	2010-10-16 13:48:30.26938	2010-10-16 13:48:30.26938
637	241	\N	cole.beck	2010-10-16 13:48:30.274981	2010-10-16 13:48:30.274981
638	241	\N	n33	2010-10-16 13:48:30.28017	2010-10-16 13:48:30.28017
639	242	\N	thedjinn	2010-10-16 13:48:30.871348	2010-10-16 13:48:30.871348
640	242	\N	marten	2010-10-16 13:48:30.876441	2010-10-16 13:48:30.876441
641	242	\N	ttencate	2010-10-16 13:48:30.881532	2010-10-16 13:48:30.881532
642	242	\N	wwwhizz	2010-10-16 13:48:30.888069	2010-10-16 13:48:30.888069
643	243	\N	reddavis	2010-10-16 13:48:31.648284	2010-10-16 13:48:31.648284
644	243	\N	koos	2010-10-16 13:48:31.653915	2010-10-16 13:48:31.653915
645	243	\N	MPO	2010-10-16 13:48:31.659393	2010-10-16 13:48:31.659393
646	243	\N	Bumi	2010-10-16 13:48:31.664384	2010-10-16 13:48:31.664384
647	244	\N	nathany	2010-10-16 13:48:32.261473	2010-10-16 13:48:32.261473
648	244	\N	darkhelmetlive	2010-10-16 13:48:32.267156	2010-10-16 13:48:32.267156
649	244	\N	fnichol	2010-10-16 13:48:32.272694	2010-10-16 13:48:32.272694
650	244	\N	RyanOnRails	2010-10-16 13:48:32.278455	2010-10-16 13:48:32.278455
651	245	\N	James C	2010-10-16 13:48:33.074759	2010-10-16 13:48:33.074759
652	245	\N	peter.golov	2010-10-16 13:48:33.079807	2010-10-16 13:48:33.079807
653	245	\N	MattLaffy	2010-10-16 13:48:33.08483	2010-10-16 13:48:33.08483
654	245	\N	adamholt	2010-10-16 13:48:33.090401	2010-10-16 13:48:33.090401
655	246	\N	semanticart	2010-10-16 13:48:33.817319	2010-10-16 13:48:33.817319
656	246	\N	wpeterson	2010-10-16 13:48:33.822695	2010-10-16 13:48:33.822695
657	246	\N	knick44	2010-10-16 13:48:33.828009	2010-10-16 13:48:33.828009
658	246	\N	mikowitz	2010-10-16 13:48:33.833216	2010-10-16 13:48:33.833216
659	247	\N	TrevorBramble	2010-10-16 13:48:34.485622	2010-10-16 13:48:34.485622
660	248	\N	lpillow	2010-10-16 13:48:35.205617	2010-10-16 13:48:35.205617
661	248	\N	justinwinkler	2010-10-16 13:48:35.211482	2010-10-16 13:48:35.211482
662	248	\N	allenriddle	2010-10-16 13:48:35.216846	2010-10-16 13:48:35.216846
663	248	\N	meirish	2010-10-16 13:48:35.222106	2010-10-16 13:48:35.222106
664	249	\N	halfbyte	2010-10-16 13:48:35.857831	2010-10-16 13:48:35.857831
665	249	\N	alto	2010-10-16 13:48:35.863041	2010-10-16 13:48:35.863041
666	249	\N	wowo101	2010-10-16 13:48:35.868295	2010-10-16 13:48:35.868295
667	249	\N	theflow	2010-10-16 13:48:35.873669	2010-10-16 13:48:35.873669
668	250	\N	pjdavis	2010-10-16 13:48:36.48408	2010-10-16 13:48:36.48408
669	250	\N	cuttlefishculler	2010-10-16 13:48:36.49057	2010-10-16 13:48:36.49057
670	251	\N	labria	2010-10-16 13:48:37.236319	2010-10-16 13:48:37.236319
671	251	\N	gregory	2010-10-16 13:48:37.242838	2010-10-16 13:48:37.242838
672	251	\N	Paxa	2010-10-16 13:48:37.248674	2010-10-16 13:48:37.248674
673	252	\N	kossnocorp	2010-10-16 13:48:37.878459	2010-10-16 13:48:37.878459
674	252	\N	edtsech	2010-10-16 13:48:37.88368	2010-10-16 13:48:37.88368
675	253	\N	angilly	2010-10-16 13:48:38.471536	2010-10-16 13:48:38.471536
676	253	\N	_prakash	2010-10-16 13:48:38.477566	2010-10-16 13:48:38.477566
677	253	\N	rschlegs	2010-10-16 13:48:38.482949	2010-10-16 13:48:38.482949
678	253	\N	gerredb	2010-10-16 13:48:38.488165	2010-10-16 13:48:38.488165
679	254	\N	brianburridge	2010-10-16 13:48:39.267345	2010-10-16 13:48:39.267345
680	254	\N	brandclay	2010-10-16 13:48:39.273543	2010-10-16 13:48:39.273543
681	254	\N	pothoven	2010-10-16 13:48:39.27952	2010-10-16 13:48:39.27952
682	254	\N	joshhemsley	2010-10-16 13:48:39.38336	2010-10-16 13:48:39.38336
683	255	\N	guitsaru	2010-10-16 13:48:40.034078	2010-10-16 13:48:40.034078
684	255	\N	albatrocity	2010-10-16 13:48:40.040064	2010-10-16 13:48:40.040064
685	256	\N	magic6435	2010-10-16 13:48:40.700916	2010-10-16 13:48:40.700916
686	257	\N	andrewkavanaugh	2010-10-16 13:48:41.306236	2010-10-16 13:48:41.306236
687	257	\N	jasonxrowland	2010-10-16 13:48:41.311581	2010-10-16 13:48:41.311581
688	257	\N	john.reasons	2010-10-16 13:48:41.31698	2010-10-16 13:48:41.31698
689	258	\N	listrophy	2010-10-16 13:48:41.918686	2010-10-16 13:48:41.918686
690	258	\N	randland	2010-10-16 13:48:41.92455	2010-10-16 13:48:41.92455
691	258	\N	jaym3s	2010-10-16 13:48:41.931382	2010-10-16 13:48:41.931382
692	258	\N	bendycode	2010-10-16 13:48:41.937711	2010-10-16 13:48:41.937711
693	259	\N	johnsonch	2010-10-16 13:48:42.529203	2010-10-16 13:48:42.529203
694	259	\N	j2fly	2010-10-16 13:48:42.535363	2010-10-16 13:48:42.535363
695	259	\N	mrmargolis	2010-10-16 13:48:42.541713	2010-10-16 13:48:42.541713
696	259	\N	kaempf84	2010-10-16 13:48:42.547547	2010-10-16 13:48:42.547547
697	260	\N	lamuronv	2010-10-16 13:48:43.151508	2010-10-16 13:48:43.151508
698	260	\N	aarongodin	2010-10-16 13:48:43.157872	2010-10-16 13:48:43.157872
699	260	\N	imperialfortress	2010-10-16 13:48:43.164375	2010-10-16 13:48:43.164375
700	260	\N	teskyer	2010-10-16 13:48:43.169862	2010-10-16 13:48:43.169862
701	261	\N	chriswarren	2010-10-16 13:48:43.829303	2010-10-16 13:48:43.829303
702	261	\N	mikeweber	2010-10-16 13:48:43.834512	2010-10-16 13:48:43.834512
703	261	\N	jrmehle	2010-10-16 13:48:43.83961	2010-10-16 13:48:43.83961
704	261	\N	marknutter	2010-10-16 13:48:43.844657	2010-10-16 13:48:43.844657
705	262	\N	mbleigh	2010-10-16 13:48:44.431432	2010-10-16 13:48:44.431432
706	263	\N	jeremymcanally	2010-10-16 13:48:45.114987	2010-10-16 13:48:45.114987
\.


--
-- PostgreSQL database dump complete
--

