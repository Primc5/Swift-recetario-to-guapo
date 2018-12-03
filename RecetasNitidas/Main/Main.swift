//
//  Main.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 28/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit
import SDWebImage

class Main: UIViewController {

    @IBOutlet var tableView: UITableView!
    internal var categoryModel: [CategoryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadCategory()
        registrarCellsCategory()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        // Add a background view to the table view
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func registrarCellsCategory(){
        let identifier = "CategoryCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    private func loadRecipes(array:[RecipeModel]){
        let navigationControler = RecipeList(recipemodel: array)
        navigationController?.pushViewController(navigationControler, animated: true)
    }
    
    private func loadCategory(){
        let detail_3_1 = DetailsModel(name: "Torta di spaghetti", img: "https://i.pinimg.com/originals/cc/58/b1/cc58b1cfc896d70a71a97262f16b7f44.jpg", lvl: "Semplice", desc: "Se vuoi sorprendere i più piccoli in casa, ti consigliamo di preparare questa ricetta per la torta di spaghetti che Ival ha portato dall'App RecetasGratis. Questa torta di spaghetti con carne e formaggio al forno è l'ideale per i bambini, ma ti assicuriamo che anche gli adulti lo adoreranno. È un modo diverso e molto originale per preparare il tipico piatto di pasta. Hai il coraggio di elaborarlo?", time: "45m", ingredients: "1 confezione di spaghetti \n prosciutto dolce affettato \n formaggio a fette \n 3 uova \n 1 manciata di formaggio grattugiato \n 100 grammi di carne macinata \n sale \n maggiorana")
        let detail_3_2 = DetailsModel(name: "Pasta con gamberi", img: "https://www.recetasderechupete.com/wp-content/uploads/2011/01/espaguetis_langostinos1-525x360.jpg", lvl: "Semplice", desc: "Hai bisogno di una ricetta di pasta facile, veloce e gustosa? Continua a leggere!, Perché questo incredibile piatto è realizzato in 15 minuti. Per fare la pasta con i gamberetti, devi solo raccogliere il tipo di pasta che ti piace di più, gamberetti, panna, due spicchi d'aglio, sale e pepe. Come ingredienti aggiuntivi, puoi aggiungere alla lista cipolla, porro o pepe. Hai il coraggio di preparare la ricetta? Non perdere nessun dettaglio e scopri in RecipesGratis come preparare la pasta con salsa di gamberetti e panna, ti promettiamo che lo amerai!", time: "15m", ingredients: "250 grammi di spaghetti interi \n 200 grammi di gamberetti \n 2 spicchi di aglio tritato \n 2 cucchiai di olio \n 200 millilitri di crema di latte (1 tazza) \n 1 pizzico di pepe nero \n 1 pizzico di sale")
        let detail_3_3 = DetailsModel(name: "Pizza Bolognese", img: "https://2.bp.blogspot.com/-n4aTA-EwtHg/V-UCR7_9S9I/AAAAAAAANwE/rdTz22UJIcAFQTkN2ueojcD7wV2Qezv6ACLcB/s640/pizzabon.jpg", lvl: "Difficile", desc: "Karlos Arguiñano ci mostra come preparare una pizza alla bolognese in modo semplice. Questa ricetta per la pizza è una delle più classiche e conosciute.", time: "10specchio", ingredients: "300 gr. di carne macinata \n \n 2-3 fette di pancetta \n 1 cipolla \n 1 carota \n 1 ramo di sedano \n 2 spicchi d'aglio \n 250 gr. di formaggio \n 1 bicchiere di salsa di pomodoro \n 1 bicchiere di vino bianco \n Olio d'oliva \n sale \n Prezzemolo (da decorare)")
        let detail_3_4 = DetailsModel(name: "Tortellini di ricotta e spinaci con uova di aragosta", img: "https://www.gallinablanca.es/files/thumbs/23e3db7bbae99c95c774a89574eceb9b95841bd4_r900_480_2.jpg", lvl: "Semplice", desc: "Un piatto squisito che lascerà senza parole i tuoi ospiti e il migliore di tutti è che è fatto solo con 4 ingredienti. Prendi dei tortellini ricchi e freschi e un vasetto di crema liquida, Avecrem da arricchire e uova di aragosta per preparare la salsa. E nient'altro, con solo questi cibi il tuo piatto farà scalpore.", time: "30m", ingredients: "200 cc. di crema liquida \n 1 pizzico di Avecrem 100% pesce e frutti di mare naturali \n 1 confezione di tortellini freschi con ricotta e spinaci \n 1 vasca di astice o uova di salmone")
        let detail_2_1 = DetailsModel(name: "Carpaccio di salmone con profumo di agrumi", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_6209.jpg", lvl: "Normale", desc: "Sono un amante del pesce fresco quindi adoro questo delizioso antipasto di salmone al carpaccio italiano. Ho iniziato ad essere un amante del carpaccio di pesce e appena ho provato il sushi mi è piaciuto molto. Penso che mangiare pesce in questi modi sia quando apprezzi davvero il suo sapore.\n Inutile dire che il carpaccio è un piatto italiano originale. In Italia solitamente chiamiamo il carpaccio tutto quel cibo fresco e crudo che viene tagliato a fette molto sottili e può essere carne, pesce o verdure.", time: "15m", ingredients: "Salmone fresco 500g \n \n Arancio piccolo 1 \n Piccolo limone 1 \n Olio extra vergine di oliva \n Pepe rosa \n sale")
        let detail_2_2 = DetailsModel(name: "Bacalao a livornesa", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_7512.jpg", lvl: "Difficile", desc: "Il merluzzo nella livornesa è una ricetta molto semplice ed economica con cui si degusta molto il merluzzo. Inoltre questa deliziosa ricetta italiana di pesce viene lasciata con una salsa molto ricca che non sarai in grado di resistere, finirai per mangiare una pagnotta di pane. Questo piatto è una ricetta tradizionale toscana e il piatto prende il nome dalla città di Livorno. \n In Italia si mangia merluzzo ovunque e ogni area ha le sue ricette. Ammetto che il merluzzo non ha mai attirato la mia attenzione, sarà perché quando mia madre l'ha soffiata e l'ha cucinata tutta la casa puzzava. Quindi non essere sorpreso se questa volta non preparo una ricetta con il merluzzo di mia madre, la verità è che non l'ho nemmeno chiesto.", time: "30m", ingredients: "Merluzzo dissalato 500 g \n Cipolla piccola 1 \n Aglio 2 denti \n Salsa di pomodoro o pomodori pelati 400 g \n Olive nere 20 g \n Farina per il rivestimento \n Olio d'oliva v.e. \n prezzemolo \n basilico \n Pepe nero \n Laurel 1 foglio \n maggiorana")
        let detail_2_3 = DetailsModel(name: "Torta di salmone", img: "https://fr.chatelaine.com/wp-content/uploads/2002/11/tartare-saumon-3508.jpg", lvl: "Difficile", desc: "Sbucciare un limone, rimuovere la membrana bianca e tritare la carne. Spremere gli altri 2 limoni. In una ciotola, mescolare olio, succo di limone e tabasco. Salpimente. Mescolare salmone, peperoni, capperi, olive e polpa di limone in un piatto. Aggiungere il condimento della ciotola, mescolare bene e lasciare marinare 20 minuti. Dividete gli ingredienti in 4 piatti e mettete 1 tuorlo al centro di ciascuno. Guarnire il piatto con prezzemolo tritato e servire.", time: "20m", ingredients: "3 limoni \n 5 cucchiai di olio d'oliva \n 1 rivolo di Tabasco \n 600 g di filetti di salmone in tacos \n 2 peperoni gialli, sgranati e tagliati a dadini \n 50 g di capperi sciacquati e scolati \n 8 olive verdi, disossate e tritate \n 4 tuorli d'uovo \n Sale e pepe \n Prezzemolo tritato per guarnire")
        let detail_2_4 = DetailsModel(name: "Pesce spada al forno", img: "https://irecetasfaciles.com/wp-content/uploads/2014/10/Pez-espada-al-horno-con-verduras-irecetas-faciles.jpg", lvl: "Estremo", desc: "Preriscaldare il forno a 180ºC. Quindi mescolare la cipolla, l'aglio e il prezzemolo in una ciotola. Mettere la metà della miscela in un piatto refrattario e posizionare il pesce in cima. Salpimiente e coprirlo con la miscela rimanente. Versa l'olio e il vino. Cuocere il pesce per 30 minuti, annaffiando frequentemente con il succo di cottura.", time: "40m", ingredients: "1 cipolla tritata \n 1 spicchio d'aglio, purè \n Prezzemolo tritato \n 4 fette di pesce spada \n 175 ml di olio d'oliva \n 175 ml di vino bianco \n sale e pepe")
        let detail_1_1 = DetailsModel(name: "Pollo disossato ripieno di castagne", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_2393.jpg", lvl: "Estremo", desc: "La verità è che mia madre a Natale di solito sempre ci sorprende con una ricetta di carne molto ricca, il pollo ripieno è una di quelle ricette che non mancano mai perché è molto gustosa, è anche qualcosa di speciale perché non durante il resto dell'anno. Da qui mi sono ispirato a preparare questo pollo disossato ripieno di castagne. Devo dire che ho migliorato molto la ricetta di mia madre. Ho aggiunto altri ingredienti come mele e castagne al classico ripieno di salsicce. Il risultato finale è un pollo molto più succoso, più leggero e dal sapore più fresco. Inoltre, dato che siamo nel mezzo della stagione autunnale, ho pensato che fosse molto appropriato accompagnarlo con una salsa di melograno che esalta ulteriormente il sapore di questa ricetta.", time: "90m", ingredients: "Castagne 400 g \n Pollo disossato di 1.200 kg \n Salsicce fresche di maiale 200 g \n Mela verde 1/2 \n Semi di finocchio 8 (o maggiorana) \n Uovo 1 \n Pane duro \n latte \n sale \n Pepe nero \n Limone 1/2 \n noce moscata \n Carote 3 \n Cipolla 1 \n Aglio 2 denti \n olio \n timo \n rosmarino")
        let detail_1_2 = DetailsModel(name: "Vitello tonnato", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_9526.jpg", lvl: "Estremo", desc: "Il vitello tonnato è una ricetta tradizionale italiana e proviene dalla regione Piemonte. Questa ricetta è anche conosciuta come vitel tonné, questo nome porta molte persone a credere che sia una ricetta francese, ma non è così. Ho provato questa ricetta molto tempo fa e mi ha conquistato fin dal primo momento per il suo contrasto di sapori che si combinano perfettamente. Nella casa dei miei genitori di solito non viene preparato perché a mia madre non piace la carne accompagnata da questo tipo di salsa, cosa faremo? ognuno ha i suoi gusti. Per preparare questa ricetta per la carne servita fredda ho seguito la ricetta del primo tonnel di vitello che ho assaggiato e che è stata una scoperta per me.", time: "90m", ingredients: "Manzo rotondo 1 pezzo da 1 kg \n Vino bianco 1 L \n Gambo di sedano 1 \n Laurel 3 foglie \n Pepe nero in grani \n Chiodi di garofano 3 \n Salvia 3 foglie \n sale")
        let detail_1_3 = DetailsModel(name: "Albóndigas italianas", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_5956.jpg", lvl: "Normale", desc: "Hai mai visto i classici del cinema italiano? Se la risposta è sì, avrai sicuramente visto come alcuni attori hanno mangiato un piatto di spaghetti con polpette italiane. In Italia è qualcosa di così tradizionale e indispensabile in un tavolo che gli italiani non sarebbero così se togliessero polpette, pasta e pizza. Sarei sicuramente qualcun altro, senza la mia passione per il buon cibo e la cucina. Dal momento che ho memoria in casa mia ci sono state polpette fritte ogni domenica e nei giorni festivi. Non possono mancare e fino ad oggi la tradizione continua, almeno nella casa di mia madre ... Io e mia sorella eravamo sempre disposti ad aiutare per questo motivo.", time: "25m", ingredients: "Manzo macinato (o 50% di vitello e 50% di maiale) 500 g \n Pane duro ammollato 1/3 \n Grana padano vecchio grattugiato 70 g \n Uova 2 \n sale \n pepe \n origano \n Prezzemolo alcune foglie \n Aglio 1 piccolo dente \n Vino (facoltativo) \n Latte (opzionale) \n Olio d'oliva v.e. friggere")
        let detail_1_4 = DetailsModel(name: "Spuntini di pollo", img: "https://unaitalianaenlacocina.es/wp-content/uploads/DSC_3456-bocaditos-de-pollo-1080x675.jpg", lvl: "Fasile", desc: "Le pepite di pollo sono un modo diverso e appetitoso per preparare un petto di pollo. Mia madre li ha scoperti quando è andata a trovare degli amici e quando li ha preparati a casa ci hanno conquistati tutti. Questa è una ricetta molto succosa, il pollo rimane molto tenero e non è affatto asciutto. Le pepite di pollo amano anche i bambini e puoi prima servire una crema di carote.", time: "15m", ingredients: "Filetto di petto di pollo mezzo magro \n Prosciutto Serrano 4 fette \n Formaggio tranchete 3 porzioni \n farina \n Mezzo bicchiere di vino bianco \n Olio extra vergine di oliva \n pepe \n sale \n stuzzicadenti")
        let detail_4_1 = DetailsModel(name: "Melanzane gratinate", img: "https://t2.rg.ltmcdn.com/es/images/5/2/9/img_berenjenas_gratinadas_con_queso_parmesano_56925_600.jpg", lvl: "Fasile", desc: "Amo le verdure, potrei mangiare quasi solo verdure e questa ricetta è uno dei miei contorni preferiti. È una ricetta super veloce e semplice che può accompagnare qualsiasi piatto principale, se lo servi con la pasta, ad esempio ti consiglio di servirlo come antipasto e se lo fai con carne o pesce può andare come guarnizione.", time: "30m", ingredients: "una melanzana piuttosto grande \n olio extra vergine \n 200 g di briciole di pane \n un po 'di prezzemolo \n sale")
        let detail_4_2 = DetailsModel(name: "Insalata con verdure marinate", img: "https://ep00.epimg.net/elcomidista/imagenes/2011/08/04/articulo/1312434000_131243_1312434000_noticia_normal.jpg", lvl: "Fasile", desc: "Cuocere i fagiolini e il cavolfiore in una grande casseruola con acqua bollente per 5-7 minuti. o finché sono teneri ma croccanti. Scolali. Risciacquali sotto un getto di acqua fredda; restituiscile per drenare. Mettili in una ciotola.", time: "200m", ingredients: "Fagiolini verdi da 1/2 libbra, tagliati a metà \n 2 coppe di fiori di cavolfiore \n 1 tazza di pomodori (pomodori) ciliegia, tagliata a metà \n 1 tazza di ceci in scatola, sciacquati e scolati \n 1 tazza di olive verdi farcite a fette \n 1/4 tazza di fette sottili di pomodori (pomodori) essiccati al sole \n 1/2 tazza di condimento all'italiana 'della casa' in stile toscano KRAFT Tuscan House Italian Dressing")
        let detail_4_3 = DetailsModel(name: "Fettuccine italiane con verdure", img: "https://images-gmi-pmc.edge-generalmills.com/b47156ea-985a-4c21-a8f6-217a71a0af93.jpg", lvl: "Fasile", desc: "Riscaldare l'olio d'oliva in una padella larga a fuoco medio-alto. Aggiungere i broccoli, il sedano, la cipolla, l'aglio e il basilico; cuocere le verdure, mescolando di tanto in tanto, per 5 minuti o finché sono teneri. Incorporare latte, formaggio e pepe evaporato; fallo bollire Riduci il fuoco a basso; Lasciate cuocere coperto per 5 minuti.", time: "20m", ingredients: "1 confezione (9 once) di pasta refrigerata BUITONI Fettuccine refrigerata, cotta, scolata e calda \n 1 cucchiaio di olio d'oliva \n 2 tazze di broccoli (broccoli) \n 1 tazza di fette di sedano tagliate in diagonale \n 1 cipolla grande, tagliata a spicchi \n 2 spicchi d'aglio tritati finemente \n 3/4 cucchiaino di basilico essiccato tritato")
        let detail_4_4 = DetailsModel(name: "La lattuga", img: "https://www.agrovademecum.com/resources/images/cultivo/04/1505456610_foto_lechuga_semillas_listado.jpg", lvl: "Infernale", desc: "Non provarci", time: "99999999 anni", ingredients: "Una lattuga")
        
        let recipe_1_1 = RecipeModel(name: detail_1_1.name!, img: detail_1_1.img!, lvl: detail_1_1.lvl!, detailsModel: detail_1_1)
        let recipe_1_2 = RecipeModel(name: detail_1_2.name!, img: detail_1_2.img!, lvl: detail_1_2.lvl!, detailsModel: detail_1_2)
        let recipe_1_3 = RecipeModel(name: detail_1_3.name!, img: detail_1_3.img!, lvl: detail_1_3.lvl!, detailsModel: detail_1_3)
        let recipe_1_4 = RecipeModel(name: detail_1_4.name!, img: detail_1_4.img!, lvl: detail_1_4.lvl!, detailsModel: detail_1_4)
        let array1 = [recipe_1_1, recipe_1_2, recipe_1_3, recipe_1_4]
        let recipe_2_1 = RecipeModel(name: detail_2_1.name!, img: detail_2_1.img!, lvl: detail_2_1.lvl!, detailsModel: detail_2_1)
        let recipe_2_2 = RecipeModel(name: detail_2_2.name!, img: detail_2_2.img!, lvl: detail_2_2.lvl!, detailsModel: detail_2_2)
        let recipe_2_3 = RecipeModel(name: detail_2_3.name!, img: detail_2_3.img!, lvl: detail_2_3.lvl!, detailsModel: detail_2_3)
        let recipe_2_4 = RecipeModel(name: detail_2_4.name!, img: detail_2_4.img!, lvl: detail_2_4.lvl!, detailsModel: detail_2_4)
        let array2 = [recipe_2_1, recipe_2_2, recipe_2_3, recipe_2_4]
        let recipe_3_1 = RecipeModel(name: detail_3_1.name!, img: detail_3_1.img!, lvl: detail_3_1.lvl!, detailsModel: detail_3_1)
        let recipe_3_2 = RecipeModel(name: detail_3_2.name!, img: detail_3_2.img!, lvl: detail_3_2.lvl!, detailsModel: detail_3_2)
        let recipe_3_3 = RecipeModel(name: detail_3_3.name!, img: detail_3_3.img!, lvl: detail_3_3.lvl!, detailsModel: detail_3_3)
        let recipe_3_4 = RecipeModel(name: detail_3_4.name!, img: detail_3_4.img!, lvl: detail_3_4.lvl!, detailsModel: detail_3_4)
        let array3 = [recipe_3_1, recipe_3_2, recipe_3_3, recipe_3_4]
        let recipe_4_1 = RecipeModel(name: detail_4_1.name!, img: detail_4_1.img!, lvl: detail_4_1.lvl!, detailsModel: detail_4_1)
        let recipe_4_2 = RecipeModel(name: detail_4_2.name!, img: detail_4_2.img!, lvl: detail_4_2.lvl!, detailsModel: detail_4_2)
        let recipe_4_3 = RecipeModel(name: detail_4_3.name!, img: detail_4_3.img!, lvl: detail_4_3.lvl!, detailsModel: detail_4_3)
        let recipe_4_4 = RecipeModel(name: detail_4_4.name!, img: detail_4_4.img!, lvl: detail_4_4.lvl!, detailsModel: detail_4_4)
        let array4 = [recipe_4_1, recipe_4_2, recipe_4_3, recipe_4_4]
        let category_1 = CategoryModel(title: "Carni", img: "https://www.muyinteresante.com.mx/wp-content/uploads/2018/05/httpstved-prod.adobecqms.netcontentdameditorialTelevisamexicomuyinteresantemxciencia1507carne-asada.imgo_.jpg", num: "\(array1.count)", recipeModel: array1)
        let category_2 = CategoryModel(title: "Pesci", img: "https://www.muyinteresante.com.mx/wp-content/uploads/2018/05/httpstved-prod.adobecqms.netcontentdameditorialTelevisamexicomuyinteresantemxcuriosidadespreguntas-y-respuestas17074dorynemo.imgo_-770x528.jpeg", num: "\(array2.count)", recipeModel: array2)
        let category_3 = CategoryModel(title: "Paste", img: "https://imageresizer.static9.net.au/rbKiqnkWLIoyx1_Gf9DqUnXHTBw=/625x352/http%3A%2F%2Fprod.static9.net.au%2F_%2Fmedia%2FImages%2FKitchen%2F2011%2F09%2F22%2F11%2F35%2Fspag-bowl-main.jpg", num: "\(array3.count)", recipeModel: array3)
        let category_4 = CategoryModel(title: "Ortaggi", img: "https://www.canalcocina.es/medias/images/1207_Los22MinutosDeJulius_EnsaladaHuertaGarbanzos0.jpg", num: "\(array4.count)", recipeModel: array4)
        
        categoryModel.append(category_1)
        categoryModel.append(category_2)
        categoryModel.append(category_3)
        categoryModel.append(category_4)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Main: UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryModel.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(categoryModel.count)

        let cell: CategoryCell = (tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell)!
        print("lol")
        let cellRow = categoryModel[indexPath.row]
        print("ajia")
        cell.lblCategory.text? = cellRow.title!
        cell.imgCategory.sd_setImage(with: URL(string: cellRow.img!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
        cell.lblnum.text? = cellRow.num!
        cell.backgroundColor = .clear
        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
        loadRecipes(array: categoryModel[indexPath.row].recipeModel)
    }

}


