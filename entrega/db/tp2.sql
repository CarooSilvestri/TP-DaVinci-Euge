/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1_3306
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : 127.0.0.1:3306
 Source Schema         : tp2

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 29/06/2020 14:44:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bar
-- ----------------------------
DROP TABLE IF EXISTS `bar`;
CREATE TABLE `bar`  (
  `id_bar` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `localidad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estrellas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comida` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bar`) USING BTREE,
  UNIQUE INDEX `nobre_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bar
-- ----------------------------
INSERT INTO `bar` VALUES (1, 'Bastardo', 'nuñez', '4', 'si', '\r\nChupitos es un concepto nuevo nunca antes visto en Argentina. Queremos que vivas una experiencia nueva, probando nuestra especialidad: los chupitos. Podés jugar al beerpong, al arcade, y a muchos otros juegos para que la diversión no termine nunca. Nuestra carta y ambientación te hará elegirnos una y otra vez.', 'bastardo.jpg', '\r\nChupitos es un concepto nuevo nunca antes visto en Argentina. Queremos que vivas una experiencia nueva, probando nuestra especialidad: los chupitos. Podés jugar al beerpong, al arcade, y a muchos otros juegos para que la diversión no termine nunca. Nues');
INSERT INTO `bar` VALUES (2, 'Indoor', 'Palermo', '4,5', 'si', 'En la calle Chile del histórico barrio de San Telmo, de martes a domingos abre sus puertas un lugar tan agradable como el ambiente bohemio de la noche porteña, Indoor Bar ha sido un lugar diferente en medio de la movida gastronómica del centro de la ciudad de Buenos Aires. \r\n\r\nLa barra, ese espacio donde sucede la magia en la coctelería, atrae y atrapa con su enorme variedad de bebidas, nuestros cocteles para todos los gustos y por sobre todo la cálida atención de nuestro equipo, son todos los elementos que juegan en conjunto para que aquellos que nos visitan les resulte inevitable volver una vez más.', 'indoor.jpg', 'En la calle Chile del histórico barrio de San Telmo, de martes a domingos abre sus puertas un lugar tan agradable como el ambiente bohemio de la noche porteña, Indoor Bar ha sido un lugar diferente en medio de la movida gastronómica del centro de la ciuda');
INSERT INTO `bar` VALUES (3, 'La puerta roja', 'Recoleta', '4', 'si', 'La Puerta Roja, una invitacion diferente, ¿Cual? Toca y entra No importa que Chacabuco sea una calle bastante oscura: en el 733, brilla esta puerta que se abre ni bien se toca el timbre, a la manera de los speakeasy, los bares clandestinos en la época de la ley seca en los años 20 en EE.UU. Una propuesta simple, esencial, despojada de artificios, que se ha transformado exclusivamente por el boca a boca, en un lugar inevitable en San Telmo. Mariano, Lenny y Greg, son los responsables de este emprendimiento. Sus clientes: muchos extranjeros mezclados con porteños y algunos visitantes de otros barrios. Algunos llegan temprano, otros siguen llegando hasta bien entrada la madrugada. Subiendo una escalera se accede a la barra, parada obligada para pedir una copa. No es necesario pedir la carta: una gran pizarra tiene la lista de opciones. El espacio está dividido en tres partes: una sala con mesa de pool, la otra con dos mesas circulares con sillones, en la que a futuro se servirán cenas, y la tercera corresponde a la sección barra, a la que se suman mesas bajas con banquetas y sillones. Ya sabe, tocar y entrar es la forma de acceso. Solo hay que esperar que abran la puerta.', 'la-puerta-roja.jpg', 'La Puerta Roja, una invitacion diferente, ¿Cual? Toca y entra No importa que Chacabuco sea una calle bastante oscura: en el 733, brilla esta puerta que se abre ni bien se toca el timbre, a la manera de los speakeasy, los bares clandestinos en la época de ');
INSERT INTO `bar` VALUES (4, 'El Federal', 'Almagro', '4', 'si', 'Inició sus días como pulpería, fue almacén de ultramarinos, alojó un prostíbulo y un almacén con despacho de bebidas. Fue testigo de la transformación de la ciudad, la epidemia de la fiebre amarilla y la tragedia de un femicidio, además de haber servido como escenario para clásicos del cine argentino. En el nuevo siglo se consagró como el Café Bar más simbólico de San Telmo, emblema de identidad porteña y pieza arquitectónica esencial de Buenos Aires de más de 150 años de vida. La barra de madera con arco en alzada, los mosaicos calcáreos originales, la antigua máquina registradora, las chapas enlozadas y los avisos publicitarios del siglo pasado forman parte de su colección de piezas únicas.', 'el-federal.jpg', 'Inició sus días como pulpería, fue almacén de ultramarinos, alojó un prostíbulo y un almacén con despacho de bebidas. Fue testigo de la transformación de la ciudad, la epidemia de la fiebre amarilla y la tragedia de un femicidio, además de haber servido c');
INSERT INTO `bar` VALUES (5, 'Docks', NULL, '3', 'si', 'Docks bar es el nuevo espacio temático de los creadores del bar  J.W. Bradley. Abrió sus puertas recientemente en Palermo Soho y ofrece una propuesta de tragos y coctelería de autor tremenda. Si estás con ganas de salir con amigos a tomar y llevarlo a otro nivel andá a Docks Seafood & Drinks.\r\n\r\nApenas llegás a la discreta puerta negra en la esquina de Godoy Cruz y Costa Rica un hombre serio de traje pregunta si tenés reserva y si vas a la barra o mesa. Esto es importante porque solo en las mesas podés comer.\r\n\r\nDocks bar\r\nApenas ingresás tenés otra puerta donde te recibe una chica y te explica que Docks Bar está ambientado en la época de principios de siglo XX cuando el tráfico clandestino de licores estaba en boga. ¿Intrigante, no?\r\n\r\nApenas entrás se puede ver un espacio amplio, a media luz, con ladrillo a la vista simulando un puerto y en el medio un faro. Llamativo porque yo hubiera puesto una mesa. Pero en Docks Bar todo tiene secretos ocultos y esto no era una excepción. Tiene algunas mesitas más íntimas en el centro del salón y mesas grandes y cómodas para ir en grupo a los costados. Al fondo, el timón de Docks: la barra principal. Tomé mi lugar y me dispuse a saciar mi curiosidad por esta nueva propuesta porteña.', 'docks.jpg', 'Docks bar es el nuevo espacio temático de los creadores del bar  J.W. Bradley. Abrió sus puertas recientemente en Palermo Soho y ofrece una propuesta de tragos y coctelería de autor tremenda. Si estás con ganas de salir con amigos a tomar y llevarlo a otr');
INSERT INTO `bar` VALUES (6, 'Moby Dick', 'Caballito', '4,5', 'si', 'Moby Dick Pub & Grill heredero del clásico e imperdible bar del puerto de Punta Del Este, con su impronta marinera y británica trae a la costanera una propuesta inédita.\r\n\r\nUbicado en la típica zona gastrónomica de Costanera Moby Dick\r\nOfrece una versatilidad de espacios en donde se puede disfrutar de la combinación de gastronomía de autor, coctelería de lo mas variada y diversión. Ambientado al mejor estilo inglés y con sus barras pletóricas de bebidas, construye un ambiente festivo y descontracturado donde todos disfrutan y se llevan algo que recordar. Nuestra Propuesta\r\nAl entrar podrás apreciar un aire místico que recorre el lugar y que lentamente te atrapa bajo el encanto de la música, el buen servicio y su gastronomía. Moby Dick fue creado con el fin de ser un punto de encuentro para todos aquellos que están deseando pasar un buen momento en un ambiente cálido. Abrimos desde el mediodía comenzando con un ambiente familiar y tranquilo, el cual lentamente se va transformando, hasta crear una atmósfera ideal para compartir con amigos, una cena, cocktails y pasar un rato muy agradable.\r\n\r\nSiempre acompañados de la mejor música y presentaciones en vivo. Cerramos la noche con nuestro Dj residente que hace vibrar el lugar hasta la madrugada.\r\n\r\nAbierto todos los días del año. EL BAR / DRINKS\r\nSi de bebidas hablamos, en Moby Dick podés encontrar de todo, una excelente coctelería que abarca desde lo tradicional hasta nuestros espectaculares tragos de autor. Contamos con una amplia variedad de licores de distintas marcas y con más de 150 etiquetas de whiskys, sin olvidar por supuesto la agradable experiencia que podrás compartir de la mano de nuestros bartenders.', 'moby-dick.jpg', 'Moby Dick Pub & Grill heredero del clásico e imperdible bar del puerto de Punta Del Este, con su impronta marinera y británica trae a la costanera una propuesta inédita.\r\n\r\nUbicado en la típica zona gastrónomica de Costanera Moby Dick\r\nOfrece una versatil');
INSERT INTO `bar` VALUES (7, 'Korova ', 'Vicente lopez', '4', 'no', 'Si bien los Speakeasys ya se han vuelto muy populares en la coctelería porteña, todavía hay algunos que no tienen idea de qué hablamos cuando hablamos de Speakeasys y aun menos conocen Korova Cine Bar. Lo cual por un lado es encantador, ya que convierte a este bar secreto en un sitio aun más especial y privado. Pero por otro lado, Korova se merece estar en boca de todos.\r\n\r\n\r\nEl Speakeasy tiene su origen en la década del siglo XX, en la cosmopolita Nueva York. En esos momentos, en toda la ciudad regía la Ley Seca: una polémica medida que impedía la fabricación y el consumo de alcohol. Para demostrar que toda ley nace para ser quebrada, comenzaron a aparecer los bares speakeasy.\r\n\r\nDe boca en boca, se iba corriendo el rumor de la ubicación de aquellos lugares que permitían mantener vigente el ocio y los placeres nocturnos. Los bares formaban verdaderas comunidades secretas donde los propios clientes eran responsables de invitar a nuevos amigos a formar parte del misterio, aquello que estaba oculto y fuera de la ley. Se utilizaban contraseñas o invitaciones que sólo podían ser distribuidas por clientes, ya que los bares confiaban en ellos.\r\n\r\nSe dice que el término Speakeasy proviene de la forma en que un cliente pedía una bebida alcohólica sin levantar sospechas, los camareros dirían a los clientes habituales que estuvieran callados y “hablaran bajo” (en inglés, “speak easy”).\r\n\r\nDetrás de una puerta negra en una angosta callecita de nombre extraño del barrio de Olivos, se encuentra el primer y único Speakeasy de Zona Norte: Korova Cine Bar. Y lo que se halla detrás de esa puerta es mucho más que un simple bar secreto.\r\n\r\n\r\n\r\nKorova -lejos de ser parte del mundo de Alex DeLarge y La Naranja Mecánica- nació en 2008 de la mano de su actual dueño Popi y de su pasión por el cine. Comenzó como una cueva cinéfila donde sentarse a ver películas y tomar algo. Pero con el tiempo -y con mucho trabajo-, Korova evolucionó y se convirtió en uno de los mejores bares de la zona: cuenta con una sala central con sillones y mesas altas, una barra pequeña pero muy poderosa y atrapante, una terraza para las noches calurosas de verano, y una sala secreta escondida al fondo del bar, con una bola de luces y un estilo muy de Fiebre de Sábado por la Noche.\r\n\r\nLo peculiar de este bar es que es una caja de sorpresas. Cuando uno va a Korova no sabe con qué se va a encontrar o cómo va a ser la noche, pero lo que sí sabe es que va a pasar un muy buen rato.\r\n\r\n\r\n\r\nCon una carta sofisticada y dinámica de cócteles jugados e innovadores, Popi propone degustar bebidas de calidad a buenos precios en un ambiente cálido, intimo y divertido, para disfrutar un momento único en las afueras de la ciudad. ¿Lo mejor? Detrás de la barra, hay un equipo de bartenders con mucha onda que se encargan de preparar cada trago a la perfección y de sacarte una sonrisa.\r\n\r\nPero lo más interesante y encantador de este bar es que no necesitas pertenecer a ninguna élite o grupo determinado para ingresar. La idea es que un amigo te cuente sobre el bar y que vos vayas. Así de simple. Es un lugar en donde podes ser vos mismo y disfrutar a pleno. Porque acá no hay máscaras ni caretas. Éste, es un bar con todas las letras.\r\n\r\nKorova tiene, sin lugar a dudas, “ese no se qué” que no tienen ningún otro bar de la ciudad. Enamora por su encanto de innovador y buena onda. Korova es, señores y señoras, un lugar para enamorarse.', 'korova.jpg', 'Si bien los Speakeasys ya se han vuelto muy populares en la coctelería porteña, todavía hay algunos que no tienen idea de qué hablamos cuando hablamos de Speakeasys y aun menos conocen Korova Cine Bar. Lo cual por un lado es encantador, ya que convierte a');
INSERT INTO `bar` VALUES (8, 'Sigue al conejo blanco', 'san telmo', '4,5', 'si', 'Nos gusta decir que no somos un ciclo de lecturas, sino un ciclo de arte. Que creemos que la lengua también es música y es imagen y es cuerpo. Que leer y escuchar son pliegues de la misma vestidura. Que no sólo nos desvela la propuesta efímera, instantánea sino que nos importa el antes y el después. Que el placer debe estar por sobre todas las cosas. Que nuestro espacio es tiempo porque sabemos que es lo mejor que podemos dar. Que queremos celebrar cada encuentro y esperar con ansias el próximo. Que cada historia, cada palabra, cada imagen, cada pincelada, cada acorde liberado en Siga al Conejo Blanco va a hacer tic tac en algún músculo dormido de tu cuerpo.\r\n \r\n\r\nDejate caer en el pozo. Seguí al conejo blanco, seguinos.', 'sigue-al-conejo.jpg', 'Nos gusta decir que no somos un ciclo de lecturas, sino un ciclo de arte. Que creemos que la lengua también es música y es imagen y es cuerpo. Que leer y escuchar son pliegues de la misma vestidura. Que no sólo nos desvela la propuesta efímera, instantáne');
INSERT INTO `bar` VALUES (9, 'Jerome', 'Palermo', '4', 'si', 'Esta es la única Cerveza elaborada con agua de glaciar en plena Cordillera de los Andes, a casi 2000 metros sobre el nivel del mar, en Potrerillos, Luján de Cuyo, Mendoza, República Argentina. Nuestra compañía están orientada a la elaboración de finas cervezas de guarda en barricas de maderas, donde previamente se añejaron vinos de varietales finos.', 'jerome.jpg', 'Esta es la única Cerveza elaborada con agua de glaciar en plena Cordillera de los Andes, a casi 2000 metros sobre el nivel del mar, en Potrerillos, Luján de Cuyo, Mendoza, República Argentina. Nuestra compañía están orientada a la elaboración de finas cer');
INSERT INTO `bar` VALUES (10, 'Blest Palermo', 'Palermo', '4,5', 'si', 'Blest te trae la Patagonia al corazón de Palermo para que disfrutes de la cerveza artesanal mas antigua de Argentina. Creada en Bariloche en 1989 de la mano de Julio Migoya, traemos más de 10 canillas para que disfrutes de la mejor cerveza, en el Beer Garden mas grande de la ciudad y con la primer pileta cervecera del pais. Vení y sumate a la tradición de hacer historia!', 'blest.png', 'Blest te trae la Patagonia al corazón de Palermo para que disfrutes de la cerveza artesanal mas antigua de Argentina. Creada en Bariloche en 1989 de la mano de Julio Migoya, traemos más de 10 canillas para que disfrutes de la mejor cerveza, en el Beer Gar');
INSERT INTO `bar` VALUES (11, 'Boticario ', 'Palermo', '4', 'no', '\r\nLa historia que cuenta Boticario, entre macerados y “recetas para el enfermo”, gira entorno a la antigua droguería que existía donde hoy se ubica el bar, Honduras 5207. En la búsqueda de una identidad propia, Boticario se impone como el primer bar temático farmacéutico de la ciudad.\r\n\r\nDel mismo dueño de Chupitos, este bar está ambientado con estilo similar pero con impronta propia, la decoración, entre vintage y botánica, hace que uno viaje al pasado con solo entrar.  Lucas Ripani, el arquitecto responsable de la magia, nos contó un poco sobre la historia del bar y destacó el gran equipo de trabajo, entre los que se encuentran Seba Garcia, el bartender mas influyente del momento.\r\n\r\n\r\n\r\n¿En qué te inspiraste para hacer el bar? \r\n\r\nComencé investigando cómo era una pequeña botica donde fabricaban sus propios elementos, como por ejemplo la farmacia “La Estrella” en San Telmo. Pero lo que más me inspiró fue entender lo qué el cliente buscaba. En los años 30, las farmacias podían significar toda una experiencia artesanal que hizo que la arquitectura del bar requiera de mucho trabajo de detalle y textura.\r\n\r\n ¿Cuáles dirías que son los elementos claves de Boticario? \r\n\r\nLa vegetación presente en todo el bar hace referencia a la forma en que se fabricaban los medicamentos antiguos; La textura de las bolsas arpilleras ubicadas en la entrada representan el lugar donde se transportaba la droga en polvo; El trabajo de carpinteria que implicó realizar todos los muebles desde cero respetando el tema y estética farmacéuticos. Estas fueron unas de las tantas decisiones proyectuales que se tomaron en cuenta para poder crear lo que hoy es un bar distintivo.', 'boticario.jpg', '\r\nLa historia que cuenta Boticario, entre macerados y “recetas para el enfermo”, gira entorno a la antigua droguería que existía donde hoy se ubica el bar, Honduras 5207. En la búsqueda de una identidad propia, Boticario se impone como el primer bar temát');

-- ----------------------------
-- Table structure for barman
-- ----------------------------
DROP TABLE IF EXISTS `barman`;
CREATE TABLE `barman`  (
  `id_barman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edad` date NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_barman`) USING BTREE,
  INDEX `apellido_idex`(`apellido`) USING BTREE,
  INDEX `nombre_index`(`nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barman
-- ----------------------------
INSERT INTO `barman` VALUES (1, 'Juan ', 'Gonzales', '1995-07-06', NULL, 'juan.png');
INSERT INTO `barman` VALUES (2, 'Roman', 'Perez', '1999-07-15', NULL, 'roman.png');
INSERT INTO `barman` VALUES (3, 'Juana', 'Perez', '1999-07-15', NULL, 'juana.png');
INSERT INTO `barman` VALUES (4, 'Esteban', 'Quito', '1994-09-05', NULL, 'esteban.png');
INSERT INTO `barman` VALUES (5, 'Florencia', 'Almirante', '1984-09-15', NULL, 'florencia.png');
INSERT INTO `barman` VALUES (6, 'Juan', 'Floringo', '1978-06-26', NULL, 'juan2.png');
INSERT INTO `barman` VALUES (7, 'Julio ', 'Cesar', '1990-11-11', NULL, 'julio.png');
INSERT INTO `barman` VALUES (8, 'Maximo', 'Fernandez', '0000-00-00', NULL, 'maximo.png');
INSERT INTO `barman` VALUES (9, 'John', 'Oliver', '1988-12-31', NULL, 'john.png');
INSERT INTO `barman` VALUES (10, 'Margarita', 'Amarga', '0000-00-00', NULL, 'margarita.png');

-- ----------------------------
-- Table structure for barman_trabaja_bar
-- ----------------------------
DROP TABLE IF EXISTS `barman_trabaja_bar`;
CREATE TABLE `barman_trabaja_bar`  (
  `id_barman` int(255) UNSIGNED NOT NULL,
  `id_bar` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_barman`, `id_bar`) USING BTREE,
  INDEX `fk_barman_trabaja_bar_bar`(`id_bar`) USING BTREE,
  CONSTRAINT `fk_barman_trabaja_bar_bar` FOREIGN KEY (`id_bar`) REFERENCES `bar` (`id_bar`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_barman_trabaja_bar_barman` FOREIGN KEY (`id_barman`) REFERENCES `barman` (`id_barman`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barman_trabaja_bar
-- ----------------------------
INSERT INTO `barman_trabaja_bar` VALUES (1, 1);
INSERT INTO `barman_trabaja_bar` VALUES (1, 3);
INSERT INTO `barman_trabaja_bar` VALUES (2, 9);
INSERT INTO `barman_trabaja_bar` VALUES (3, 2);
INSERT INTO `barman_trabaja_bar` VALUES (3, 3);
INSERT INTO `barman_trabaja_bar` VALUES (3, 4);
INSERT INTO `barman_trabaja_bar` VALUES (4, 3);
INSERT INTO `barman_trabaja_bar` VALUES (5, 9);
INSERT INTO `barman_trabaja_bar` VALUES (6, 2);
INSERT INTO `barman_trabaja_bar` VALUES (7, 9);
INSERT INTO `barman_trabaja_bar` VALUES (8, 8);
INSERT INTO `barman_trabaja_bar` VALUES (8, 9);
INSERT INTO `barman_trabaja_bar` VALUES (10, 6);

SET FOREIGN_KEY_CHECKS = 1;
