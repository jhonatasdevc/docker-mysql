CREATE DATABASE BIS_TALENT;

USE BIS_TALENT;

CREATE TABLE Users (
    user_id int NOT NULL primary key auto_increment, 
    user_name varchar(100),
    user_password varchar(100),
    user_email varchar(100),
    user_registrade datetime,
    user_active tinyint
);

CREATE TABLE States (
    id int NOT NULL primary key auto_increment, 
    name varchar(60),
    code varchar(2) 
);

CREATE TABLE Cities (
    id int Not Null primary key auto_increment,
    name varchar(60), 
    cod_states int    
);

alter table Cities 
add foreign key (cod_states)
references States(id);

CREATE TABLE Products (
    id int NOT NULL primary key auto_increment, 
    car_name varchar(60),
    car_description mediumtext COLLATE utf8mb4_bin, 
    value_cust float, 
    value_price float,
    warranty DATETIME, 
    motor_type varchar(60),  
    car_type varchar(40)
);

CREATE TABLE Clients(
    volvo_id BIGINT NOT NULL primary key auto_increment, 
    name varchar(60), 
    client_city int, 
    email varchar(256),
    phone varchar(20) 
);

CREATE TABLE Sell_Car (
    id int not null primary key auto_increment, 
    color varchar(50), 
    amount int,
    date_buy datetime, 
    delivery boolean,
    code_products int,
    code_client int,
    date_maintenance varchar(20),
    km_traveled varchar(6), 
    code_city int
);

insert into Sell_Car  values
(1,"Silver Dawn",1,"2021-01-01T10:00:00",1,15,100001,"","",1),
(2,"Sage Green",2,"2021-01-15T10:00:00",1,15,100002,"","",2),
(3,"Fjord Blue",3,"2021-01-21T10:00:00",1,15,300639,"","",1),
(4,"Black Stone",1,"2021-02-05T10:00:00",1,15,300640,"","",3),
(5,"Thunder Grey",1,"2021-02-06T10:00:00",1,15,300641,"","",4),
(6,"Silver Dawn",1,"2021-02-07T10:00:00",1,15,300642,"","",5),
(7,"Sage Green",1,"2021-03-01T10:00:00",1,14,300643,"","",1),
(8,"Fjord Blue",1,"2021-03-01T10:00:00",1,14,300644,"","",1),
(9,"Black Stone",1,"2021-03-15T10:00:00",1,14,300645,"","",1),
(10,"Thunder Grey",1,"2021-03-20T10:00:00",1,14,300646,"","",1),
(11,"Silver Dawn",1,"2021-04-01T10:00:00",1,14,300647,"","",1),
(12,"Sage Green",1,"2021-04-15T10:00:00",1,14,300648,"","",2),
(13,"Fjord Blue",1,"2021-04-28T10:00:00",1,15,300649,"","",2),
(14,"Black Stone",1,"2021-05-01T10:00:00",1,15,300650,"","",2),
(15,"Thunder Grey",1,"2021-06-01T10:00:00",1,15,300651,"","",2),
(16,"Silver Dawn",1,"2021-06-03T10:00:00",1,13,300652,"","",2),
(17,"Sage Green",1,"2021-07-04T10:00:00",1,12,300653,"","",3),
(18,"Fjord Blue",1,"2021-07-09T10:00:00",1,15,300654,"","",3),
(19,"Black Stone",1,"2021-07-18T10:00:00",1,15,300655,"","",3),
(20,"Thunder Grey",1,"2021-07-25T10:00:00",1,15,300656,"","",4),
(21,"Silver Dawn",1,"2021-07-24T10:00:00",1,1,300657,"","",4),
(22,"Sage Green",1,"2021-08-01T10:00:00",1,2,300658,"","",4),
(23,"Fjord Blue",1,"2021-08-15T10:00:00",1,1,300659,"","",4),
(24,"Black Stone",1,"2021-08-16T10:00:00",1,1,300660,"","",4),
(25,"Thunder Grey",1,"2021-08-16T10:00:00",1,1,300661,"","",5),
(26,"Silver Dawn",1,"2021-08-16T10:00:00",1,1,300662,"","",5),
(27,"Sage Green",1,"2021-08-18T10:00:00",1,2,300663,"","",5),
(28,"Fjord Blue",1,"2021-08-19T10:00:00",1,3,300664,"","",5),
(29,"Black Stone",1,"2021-08-20T10:00:00",1,3,300665,"","",5),
(30,"Thunder Grey",1,"2021-08-22T10:00:00",1,3,300666,"","",5),
(31,"Silver Dawn",1,"2021-08-05T10:00:00",1,3,300667,"","",6),
(32,"Sage Green",1,"2021-09-01T10:00:00",1,3,300668,"","",6),
(33,"Fjord Blue",1,"2021-09-02T10:00:00",1,3,300669,"","",6),
(34,"Black Stone",1,"2021-09-05T10:00:00",1,4,300670,"","",6),
(35,"Thunder Grey",1,"2021-09-06T10:00:00",1,4,300671,"","",7),
(36,"Silver Dawn",1,"2021-09-07T10:00:00",1,4,300672,"","",7),
(37,"Sage Green",1,"2021-09-18T10:00:00",1,4,300673,"","",7),
(38,"Fjord Blue",1,"2021-09-19T10:00:00",1,4,300674,"","",7),
(39,"Black Stone",1,"2021-09-25T10:00:00",1,5,300675,"","",7),
(40,"Thunder Grey",1,"2021-09-28T10:00:00",1,5,300676,"","",7),
(41,"Silver Dawn",1,"2021-09-28T10:00:00",1,6,300677,"","",7),
(42,"Sage Green",1,"2021-09-29T10:00:00",1,6,300678,"","",7),
(43,"Fjord Blue",1,"2021-09-30T10:00:00",1,6,300679,"","",1),
(44,"Black Stone",1,"2021-09-30T10:00:00",1,15,300680,"","",1),
(45,"Thunder Grey",1,"2021-09-30T10:00:00",1,15,300681,"","",1),
(46,"Silver Dawn",1,"2021-09-30T10:00:00",1,15,300682,"","",1),
(47,"Sage Green",1,"2021-10-01T10:00:00",1,15,300683,"","",1),
(48,"Fjord Blue",1,"2021-10-01T10:00:00",1,14,300684,"","",1),
(49,"Black Stone",1,"2021-10-01T10:00:00",1,14,300685,"","",1),
(50,"Thunder Grey",1,"2021-10-01T10:00:00",1,8,300686,"","",1),
(51,"Silver Dawn",1,"2021-10-01T10:00:00",1,9,300687,"","",1),
(52,"Sage Green",1,"2021-10-10T10:00:00",1,8,300688,"","",2),
(53,"Fjord Blue",1,"2021-10-10T10:00:00",1,9,300689,"","",2),
(54,"Black Stone",1,"2021-10-11T10:00:00",1,9,300690,"","",2),
(55,"Thunder Grey",1,"2021-10-11T10:00:00",1,9,300691,"","",2),
(56,"Silver Dawn",1,"2021-10-12T10:00:00",1,9,300692,"","",3),
(57,"Sage Green",1,"2021-10-15T10:00:00",1,8,300693,"","",3),
(58,"Fjord Blue",1,"2021-10-16T10:00:00",1,7,300694,"","",3),
(59,"Black Stone",1,"2021-10-18T10:00:00",1,7,300695,"","",3),
(60,"Black Stone",1,"2021-10-19T10:00:00",1,6,300696,"","",3),
(61,"Black Stone",1,"2021-10-20T10:00:00",1,6,300697,"","",4),
(62,"Black Stone",1,"2021-10-20T10:00:00",1,5,300698,"","",4),
(63,"Black Stone",1,"2021-10-21T10:00:00",1,5,400295,"","",4),
(64,"Black Stone",1,"2021-10-22T10:00:00",1,1,400590,"","",4),
(65,"Black Stone",1,"2021-10-23T10:00:00",1,1,400591,"","",4),
(66,"Black Stone",1,"2021-10-25T10:00:00",1,1,400592,"","",4),
(67,"Sage Green",1,"2021-10-26T10:00:00",1,2,400593,"","",5),
(68,"Sage Green",1,"2021-10-30T10:00:00",1,2,400594,"","",5),
(69,"Sage Green",1,"2021-11-01T10:00:00",0,2,400595,"","",5),
(70,"Sage Green",1,"2021-11-01T10:00:00",0,2,400596,"","",5),
(71,"Sage Green",1,"2021-11-01T10:00:00",0,1,400597,"","",5),
(72,"Sage Green",1,"2021-11-01T10:00:00",0,1,400598,"","",7),
(73,"Sage Green",1,"2021-11-01T10:00:00",0,1,400599,"","",7),
(74,"Sage Green",1,"2021-11-01T10:00:00",0,1,400600,"","",7),
(75,"Sage Green",1,"2021-11-01T10:00:00",0,15,400601,"","",6),
(76,"Sage Green",1,"2021-11-01T10:00:00",0,15,400602,"","",6),
(77,"Sage Green",1,"2021-11-01T10:00:00",0,15,400603,"","",6),
(78,"Sage Green",1,"2021-11-05T10:00:00",0,1,400604,"","",6),
(79,"Sage Green",1,"2021-11-05T10:00:00",0,1,400605,"","",6),
(80,"Sage Green",1,"2021-11-05T10:00:00",0,1,400606,"","",1),
(81,"Sage Green",1,"2021-11-05T10:00:00",0,1,400607,"","",1),
(82,"Sage Green",1,"2021-11-05T10:00:00",0,1,400608,"","",1),
(83,"Sage Green",1,"2021-11-18T10:00:00",0,2,400609,"","",1),
(84,"Sage Green",1,"2021-11-25T10:00:00",0,2,400610,"","",1),
(85,"Sage Green",1,"2021-11-30T10:00:00",0,2,400611,"","",1),
(86,"Sage Green",1,"2021-11-30T10:00:00",0,2,400612,"","",6),
(87,"Sage Green",1,"2021-11-30T10:00:00",0,3,400613,"","",6),
(88,"Sage Green",1,"2021-11-30T10:00:00",0,3,400614,"","",1),
(89,"Sage Green",1,"2021-11-30T10:00:00",0,3,400615,"","",1),
(90,"Sage Green",1,"2021-11-30T10:00:00",0,3,400616,"","",2),
(91,"Sage Green",1,"2021-11-30T10:00:00",0,1,400617,"","",2),
(92,"Silver Dawn",1,"2021-11-30T10:00:00",0,1,400618,"","",2),
(93,"Silver Dawn",1,"2021-11-30T10:00:00",0,1,400619,"","",3),
(94,"Silver Dawn",1,"2021-11-30T10:00:00",0,1,400620,"","",3),
(95,"Silver Dawn",1,"2021-11-30T10:00:00",0,2,400621,"","",3),
(96,"Silver Dawn",1,"2021-11-30T10:00:00",0,2,400622,"","",3),
(97,"Silver Dawn",1,"2021-11-30T10:00:00",0,2,400623,"","",3),
(98,"Silver Dawn",1,"2021-11-30T10:00:00",0,2,400624,"","",3),
(99,"Silver Dawn",1,"2021-11-30T10:00:00",0,2,400625,"","",3),
(100,"Silver Dawn",1,"2021-12-05T10:00:00",0,2,400626,"","",3),
(101,"Silver Dawn",1,"2021-12-22T10:00:00",0,2,400627,"","",3),
(102,"Silver Dawn",1,"2021-12-22T10:00:00",0,2,400628,"","",3),
(103,"Silver Dawn",1,"2021-12-23T10:00:00",0,1,400629,"","",3),
(104,"Silver Dawn",1,"2021-12-23T10:00:00",0,1,400630,"","",3),
(105,"Silver Dawn",1,"2021-12-23T10:00:00",0,3,400631,"","",1),
(106,"Fjord Blue",1,"2021-12-23T10:00:00",0,15,400632,"","",1),
(107,"Fjord Blue",1,"2021-12-23T10:00:00",0,15,400633,"","",1),
(108,"Fjord Blue",1,"2021-12-23T10:00:00",0,14,400634,"","",1),
(109,"Fjord Blue",1,"2021-12-23T10:00:00",0,14,400635,"","",1),
(110,"Fjord Blue",1,"2021-12-23T10:00:00",0,1,400636,"","",1),
(111,"Fjord Blue",1,"2021-12-28T10:00:00",0,1,400637,"","",1),
(112,"Fjord Blue",1,"2021-12-29T10:00:00",0,1,400638,"","",2);



insert into Clients values
    (100001,"Gustav Larson ",1,"gustavLarson@volvo.com","+46569989841"),
    (100002,"Assar Gabrielsson",1,"AssarGabrielson@volvogroup.com","+46569989841"),
    (100003,"Martin Lundstedt", 1, "Martion.Lundstedt@volvogroup.com","+46598979797"),
    (300639,"Andrea Fuder ",1,"Andrea Fuder@volvogroup.com","+466569989841"),
    (300640,"Martha Finn Brooks",1,"Martha.Finn.Brooks@volvogroup.com","+555656523231"),
    (300641,"Amanda SOUZA",5,"AmandaSOUZA@CASER.COM","+552326599845"),
    (300642,"Camilla Johansson",1,"Camilla.Johansson@volvogroup.com","+556326565987"),
    (300643,"Antonela COSTA",5,"AntonelaCOSTA@CASER.COM","+554645659898"),
    (300644,"Aurora DIAS",5,"AuroraDIAS@CASER.COM","+556569598974"),
    (300645,"Bárbara DUARTE",6,"BárbaraDUARTE@CASER.COM","+554645979744"),
    (300646,"Beatriz FREITAS",6,"BeatrizFREITAS@CASER.COM","+556565685998"),
    (300647,"Bianca FERNANDES",6,"BiancaFERNANDES@CASER.COM","+554646465894"),
    (300648,"Bruna FERREIRA",6,"BrunaFERREIRA@CASER.COM","+556546565977"),
    (300649,"Camila SANTOS ",6,"CamilaSANTOS @CASER.COM","+551313134646"),
    (300650,"Carolina SANTANA",7,"CarolinaSANTANA@CASER.COM","+554646464974"),
    (300651,"Catarina SOUZA",7,"CatarinaSOUZA@CASER.COM","+559897979766"),
    (300652,"Cecília TEIXEIRA",7,"CecíliaTEIXEIRA@CASER.COM","+551616296596"),
    (300653,"Clara MARQUES MARTINS",7,"ClaraMARQUES MARTINS@CASER.COM","+556565658989"),
    (300654,"Clarice MEDEIROS",7,"ClariceMEDEIROS@CASER.COM","+556565695987"),
    (300655,"Eduarda MELO",7,"EduardaMELO@CASER.COM","+554464646874"),
    (300656,"Emanuelly MENDER",7,"EmanuellyMENDER@CASER.COM","+559898979796"),
    (300657,"Emilly MIRANDA",7,"EmillyMIRANDA@CASER.COM","+559898977974"),
    (300658,"Esther DUARTE",1,"EstherDUARTE@CASER.COM","+559659598797"),
    (300659,"Fernanda FREITAS",1,"FernandaFREITAS@CASER.COM","+556569989897"),
    (300660,"Gabriela FERNANDES",1,"GabrielaFERNANDES@CASER.COM","+559898977365"),
    (300661,"Gabrielle FERREIRA",1,"GabrielleFERREIRA@CASER.COM","+556989797971"),
    (300662,"Giovanna ANDRADE",1,"GiovannaANDRADE@CASER.COM","+556898987974"),
    (300663,"Giulia BARBOSA",1,"GiuliaBARBOSA@CASER.COM","+556898985356"),
    (300664,"Heloísa BARROS",1,"HeloísaBARROS@CASER.COM","+555659898774"),
    (300665,"Isabel BATISTA",1,"IsabelBATISTA@CASER.COM","+557898997976"),
    (300666,"Isabelly BORGES",1,"IsabellyBORGES@CASER.COM","+559989897979"),
    (300667,"Isadora CAMPOS CARDOSO",1,"IsadoraCAMPOS CARDOSO@CASER.COM","+555656568879"),
    (300668,"Isis CARVALHO",1,"IsisCARVALHO@CASER.COM","+559898797964"),
    (300669,"Joana CASTRO",2,"JoanaCASTRO@CASER.COM","+559797979463"),
    (300670,"Laís FERREIRA",2,"LaísFERREIRA@CASER.COM","+556596998977"),
    (300671,"Lara GARCIA",3,"LaraGARCIA@CASER.COM","+559898766464"),
    (300672,"Larissa GONCALVES",3,"LarissaGONCALVES@CASER.COM","+559898979794"),
    (300673,"Lavínia LIMA",3,"LavíniaLIMA@CASER.COM","+556898979646"),
    (300674,"Letícia LOPES",4,"LetíciaLOPES@CASER.COM","+556597973234"),
    (300675,"Liz MACHADO",4,"LizMACHADO@CASER.COM","+559898798797"),
    (300676,"Lorena MARQUESMARTINS",4,"LorenaMARQUESMARTINS@CASER.COM","+559595959797"),
    (300677,"Luana MEDEIROS",4,"LuanaMEDEIROS@CASER.COM","+559898979794"),
    (300678,"Maitê MELO",4,"MaitêMELO@CASER.COM","+559879879771"),
    (300679,"Malu MENDER",4,"MaluMENDER@CASER.COM","+559898797665"),
    (300680,"Maria MIRANDA",1,"MariaMIRANDA@CASER.COM","+559895695659"),
    (300681,"Mariah MONTEIRO",1,"MariahMONTEIRO@CASER.COM","+559898956564"),
    (300682,"Mariana MORAES",1,"MarianaMORAES@CASER.COM","+559895623164"),
    (300683,"Marina MOURA",1,"MarinaMOURA@CASER.COM","+559892311454"),
    (300684,"Maya NASCIMENTO",1,"MayaNASCIMENTO@CASER.COM","+558655646481"),
    (300685,"Melissa NUNES",1,"MelissaNUNES@CASER.COM","+552326587135"),
    (300686,"Milena OLIVEIRA",1,"MilenaOLIVEIRA@CASER.COM","+554164688776"),
    (300687,"Mirella Pereira",3,"MirellaPereira@CASER.COM","+558841335454"),
    (300688,"Natália RAMOS",3,"NatáliaRAMOS@CASER.COM","+556564688865"),
    (300689,"Nicole REI",3,"NicoleREI@CASER.COM","+553563567642"),
    (300690,"Olívia REIAS",3,"OlíviaREIAS@CASER.COM","+554646589785"),
    (300691,"Pietra Ribeiro",3,"PietraRibeiro@CASER.COM","+556989987797"),
    (300692,"Rafaela SANTOS ",3,"RafaelaSANTOS @CASER.COM","+5568989796464"),
    (300693,"Rebeca SANTANA",3,"RebecaSANTANA@CASER.COM","+554649797646"),
    (300694,"Sara SOUZA",3,"SaraSOUZA@CASER.COM","+556498797983"),
    (300695,"Sophie TEIXEIRA",3,"SophieTEIXEIRA@CASER.COM","+554564697974"),
    (300696,"Stella NASCIMENTO",1,"StellaNASCIMENTO@CASER.COM","+555598977646"),
    (300697,"Vitória NUNES",1,"VitóriaNUNES@CASER.COM","+556989797946"),
    (300698,"Yasmin OLIVEIRA",1,"YasminOLIVEIRA@CASER.COM","+555847464646"),
    (400295, "Joao Andrade", 3, "joaoandrade@Caser.com", "+5598744474"),
    (400590,"Alexandre Silva",3,"AlexandreSilva@CASER.COM","+554548878656"),
    (400591,"André Santos",5,"AndréSantos@CASER.COM","+554545457445"),
    (400592,"Antônio Oliveira",7,"AntônioOliveira@CASER.COM","+554245454465"),
    (400593,"Augusto Souza",4,"AugustoSouza@CASER.COM","+554655689745"),
    (400594,"Breno Rodrigues",2,"BrenoRodrigues@CASER.COM","+554654646454"),
    (400595,"Bruno Ferreira",1,"BrunoFerreira@CASER.COM","+554646413988"),
    (400596,"Caio Alves",1,"CaioAlves@CASER.COM","+559899898985"),
    (400597,"Cauã Pereira",1,"CauãPereira@CASER.COM","+555656797948"),
    (400598,"Daniel Lima",1,"DanielLima@CASER.COM","+554644631647"),
    (400599,"Eduardo Gomes",3,"EduardoGomes@CASER.COM","+554545455679"),
    (400600,"Danilo Ribeiro",3,"DaniloRibeiro@CASER.COM","+551166464557"),
    (400601,"Enrico Martins",3,"EnricoMartins@CASER.COM","+551646467974"),
    (400602,"Enzo ALMEIDA",4,"EnzoALMEIDA@CASER.COM","+556466467974"),
    (400603,"Erick ALVES",4,"ErickALVES@CASER.COM","+554646189846"),
    (400604,"Felipe ANDRADE",4,"FelipeANDRADE@CASER.COM","+551664675548"),
    (400605,"Fernando BARBOSA",4,"FernandoBARBOSA@CASER.COM","+551646947654"),
    (400606,"Francisco BARROS",4,"FranciscoBARROS@CASER.COM","+554979797976"),
    (400607,"Frederico BATISTA",4,"FredericoBATISTA@CASER.COM","+554694979758"),
    (400608,"Guilherme BORGES",4,"GuilhermeBORGES@CASER.COM","+559467967979"),
    (400609,"Gustavo CAMPOS CARDOSO",4,"GustavoCAMPOS CARDOSO@CASER.COM","+556565868698"),
    (400610,"Henrique CARVALHO",5,"HenriqueCARVALHO@CASER.COM","+556464679989"),
    (400611,"Henry CASTRO",5,"HenryCASTRO@CASER.COM","+554646467679"),
    (400612,"Ian COSTA",5,"IanCOSTA@CASER.COM","+556689898774"),
    (400613,"Isaac DIAS",5,"IsaacDIAS@CASER.COM","+554646467874"),
    (400614,"João DUARTE",1,"JoãoDUARTE@CASER.COM","+554969797956"),
    (400615,"Kaique FREITAS",1,"KaiqueFREITAS@CASER.COM","+559794646465"),
    (400616,"Leonardo FERNANDES",1,"LeonardoFERNANDES@CASER.COM","+554646496795"),
    (400617,"Luan FERREIRA",1,"LuanFERREIRA@CASER.COM","+554694949495"),
    (400618,"Lucas GARCIA",1,"LucasGARCIA@CASER.COM","+554979989722"),
    (400619,"Mathias GONCALVES",1,"MathiasGONCALVES@CASER.COM","+554694635464"),
    (400620,"Murilo LIMA",1,"MuriloLIMA@CASER.COM","+554646446548"),
    (400621,"Nathan LOPES",2,"NathanLOPES@CASER.COM","+556984579878"),
    (400622,"Otávio MACHADO",2,"OtávioMACHADO@CASER.COM","+555659898464"),
    (400623,"Pietro MARQUES MARTINS",2,"PietroMARQUES MARTINS@CASER.COM","+554946467644"),
    (400624,"Rafael MEDEIROS",2,"RafaelMEDEIROS@CASER.COM","+554646489796"),
    (400625,"Raul MELO",2,"RaulMELO@CASER.COM","+558998979744"),
    (400626,"Rian MENDER",2,"RianMENDER@CASER.COM","+556898999944"),
    (400627,"Ricardo MIRANDA",2,"RicardoMIRANDA@CASER.COM","+556565997774"),
    (400628,"Rodrigo MONTEIRO",2,"RodrigoMONTEIRO@CASER.COM","+556565699879"),
    (400629,"Samuel MORAES",3,"SamuelMORAES@CASER.COM","+556565656959"),
    (400630,"Theo MOURA",3,"TheoMOURA@CASER.COM","+555656232655"),
    (400631,"Thiago NASCIMENTO",3,"ThiagoNASCIMENTO@CASER.COM","+556565989874"),
    (400632,"Thomas NUNES",3,"ThomasNUNES@CASER.COM","+554646467979"),
    (400633,"Vicente OLIVEIRA",3,"VicenteOLIVEIRA@CASER.COM","+551649797979"),
    (400634,"Vinícius Pereira",3,"ViníciusPereira@CASER.COM","+556463535354"),
    (400635,"Vitor RAMOS",3,"VitorRAMOS@CASER.COM","+555454848994"),
    (400636,"Yago REI",4,"YagoREI@CASER.COM","+553632665656"),
    (400637,"Ygor REIAS",4,"YgorREIAS@CASER.COM","+556699779779"),
    (400638,"Ygor Ribeiro",4,"YgorRibeiro@CASER.COM","+556565685984");
    

insert into Products values 
    (1, "C40 Recharge", "", 43050, 57400, "2032-01-01", "Eletric","CROSSOVER"),
    (2, "XC40 Recharge", "", 32662, 43550, "2032-01-01", "Eletric","SUV"),
    (3, "XC90 Recharge", "", 50887, 67850, "2032-01-01", "Hybrid","SUV CROSSOVER"),
    (4, "XC60 Recharge", "", 39900, 53225, "2032-01-01", "Hybrid","SUV CROSSOVER"),
    (5, "XC40 Recharge", "", 29300, 39100, "2032-01-01", "Hybrid","SUV CROSSOVER"),
    (6, "S90 Recharge", "", 43300, 57775, "2032-01-01", "Hybrid","SALOON" ),
    (7, "S60 Recharge", "", 35600, 47475, "2032-01-01", "Hybrid", "SALOON"),
    (8, "V90 Recharge", "", 44400, 59225, "2032-01-01", "Hybrid", "ESTATE HATCHBACK"),
    (9, "V60 Recharge", "", 36200, 48380, "2032-01-01", "Hybrid", "ESTATE HATCHBACK"),
    (10, "XC90", "", 44200, 58965, "2032-01-01", "Mild Hybrids", "SUV"),
    (11, "XC60", "", 33800, 45110, "2032-01-01", "Mild Hybrids", "SUV"),
    (12, "XC40", "", 25500, 34100, "2032-01-01", "Mild Hybrids", "SUV"),
    (13, "S60", "", 35600, 47475, "2032-01-01", "Mild Hybrids", "SALOON"),
    (14, "V90", "", 31900, 42595, "2032-01-01", "Mild Hybrids", "ESTATE HATCHBACK"),
    (15, "V60", "", 26430, 35240, "2032-01-01", "Mild Hybrids", "ESTATE HATCHBACK");

insert into States values 
    (1, "Sao Paulo", "SP"),
    (2, "Parana", "PR"),
    (3, "Minas Gerais", "MG"),
    (4, "Rio De Janeiro", "RJ"),
    (5, "Rio Grande do Sul", "RS"),
    (6, "Santa Catarina", "SC"),
    (7, "Bahia", "BA");

insert into Cities values 
    (1, "Sao Paulo", 1),
    (2, "Curitiba", 2), 
    (3, "Belo Horizonte", 3), 
    (4, "Rio de Janeiro", 4), 
    (5, "Porto Alegre", 5), 
    (6, "Florianopolis", 6), 
    (7, "Salvador", 7);



