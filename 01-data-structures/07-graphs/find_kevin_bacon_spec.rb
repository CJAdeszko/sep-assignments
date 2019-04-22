include RSpec

require_relative 'find_kevin_bacon'
require_relative 'node'

RSpec.describe "find_kevin_bacon(node, path=[])" do
  let(:kevin_bacon) { Node.new("Kevin Bacon") }
  let(:ryan_reynolds) { Node.new("Ryan Reynolds") }
  let(:jeff_bridges) { Node.new("Jeff Bridges") }
  let(:michael_fassbender) { Node.new("Michael Fassbender") }
  let(:jennifer_lawrence) { Node.new("Jennifer Lawrence") }
  let(:brad_pitt) { Node.new("Brad Pitt") }
  let(:james_mcavoy) { Node.new("James McAvoy") }
  let(:mary_l_p) { Node.new("Mary-Louise Parker") }
  let(:stephanie_szostak) { Node.new("Stephanie Szostak") }
  let(:sean_penn) { Node.new("Sean Penn") }
  let(:tim_robbins) { Node.new("Tim Robbins") }
  let(:laurence_fishburne) { Node.new("Laurence Fishburne") }
  let(:marcia_gay_harden) { Node.new("Marcia Gay Harden") }
  let(:laura_linney) { Node.new("Laura Linney") }
  let(:kevin_chapman) { Node.new("Kevin Chapman") }
  let(:emmy_rossum) { Node.new("Emmy Rossum") }
  let(:elisabeth_shue) { Node.new("Elisabeth Shue") }
  let(:josh_brolin) { Node.new("Josh Brolin") }
  let(:kim_dickens) { Node.new("Kim Dickens") }
  let(:greg_grunberg) { Node.new("Greg Grunberg") }
  let(:joey_slotnick) { Node.new("Joey Slotnick") }
  let(:morena_baccarin) { Node.new("Morena Baccarin") }
  let(:julian_dennison) { Node.new("Julian Dennison") }
  let(:zazie_beetz) { Node.new("Zazie Beetz") }
  let(:tj_miller) { Node.new("T.J. Miller") }
  let(:leslie_uggams) { Node.new("Leslie Uggams") }
  let(:karan_soni) { Node.new("Karan Soni") }
  let(:denzel_washington) { Node.new("Denzel Washington") }
  let(:vera_farmiga) { Node.new("Vera Farmiga") }
  let(:brendan_gleeson) { Node.new("Brendan Gleeson") }
  let(:sam_shepard) { Node.new("Sam Shepard") }
  let(:liam_cunningham) { Node.new("Liam Cunningham") }
  let(:joel_kinnaman) { Node.new("Joel Kinnaman") }
  let(:liev_schreiber) { Node.new("Liev Schreiber") }
  let(:danny_huston) { Node.new("Danny Huston") }
  let(:lynn_collins) { Node.new("Lynn Collins") }
  let(:dominic_monaghan) { Node.new("Dominic Monaghan") }
  let(:taylor_kitsch) { Node.new("Taylor Kitsch") }
  let(:taron_egerton) { Node.new("Taron Egerton") }
  let(:edward_holcroft) { Node.new("Edward Holcroft") }
  let(:julianne_moore) { Node.new( "Julianne Moore") }
  let(:colin_firth) { Node.new("Colin Firth") }
  let(:michael_gambon) { Node.new("Michael Gambon") }
  let(:hailee_steinfeld) { Node.new("Hailee Steinfeld") }
  let(:matt_damon) { Node.new("Matt Damon") }
  let(:barry_pepper) { Node.new("Barry Pepper") }
  let(:domhnall_gleeson) { Node.new("Domhnall Gleeson") }
  let(:robert_d_jr) { Node.new("Robert Downey Jr.") }
  let(:terrence_howard) { Node.new("Terrence Howard") }
  let(:gwyneth_paltrow) { Node.new("Gwyneth Paltrow") }
  let(:clark_gregg) { Node.new("Clark Gregg") }
  let(:paul_bettany) { Node.new("Paul Bettany") }
  let(:jon_favreau) { Node.new("Jon Favreau") }
  let(:john_goodman) { Node.new("John Goodman") }
  let(:steve_buscemi) { Node.new("Steve Buscemi") }
  let(:david_huddleston) { Node.new("David Huddleston") }
  let(:philip_seymour_hoffman) { Node.new("Philip Seymour Hoffman") }
  let(:tara_reid) { Node.new("Tara Reid") }
  let(:john_turturro) { Node.new("John Turturro") }
  let(:miles_teller) { Node.new("Miles Teller") }
  let(:jennifer_connelly) { Node.new("Jennifer Connelly") }
  let(:nicholas_hoult) { Node.new("Nicholas Hoult") }
  let(:oscar_isaac) { Node.new("Oscar Isaac") }
  let(:rose_byrne) { Node.new("Rose Byrne") }
  let(:evan_peters) { Node.new("Evan Peters") }
  let(:sophie_turner) { Node.new("Sophie Turner") }
  let(:josh_helman) { Node.new("Josh Helman") }
  let(:noomie_rapace) { Node.new("Noomi Rapace") }
  let(:charlize_theron) { Node.new("Charlize Theron") }
  let(:idris_elba) { Node.new( "Idris Elba") }
  let(:guy_pearce) { Node.new("Guy Pearce") }
  let(:benedict_wong) { Node.new("Benedict Wong") }
  let(:christoph_waltz) { Node.new("Christoph Waltz") }
  let(:eli_roth) { Node.new("Eli Roth") }
  let(:diane_kruger) { Node.new("Diane Kruger") }
  let(:daniel_bruhl) { Node.new("Daniel Bruhl") }
  let(:til_schweiger) { Node.new("Til Schweiger") }
  let(:bj_novak) { Node.new("B.J. Novak") }
  let(:gerard_butler) { Node.new("Gerard Butler") }
  let(:lena_headey) { Node.new("Lena Headey") }
  let(:dominic_west) { Node.new("Dominic West") }
  let(:david_wenham) { Node.new("David Wenham") }
  let(:rodrigo_santoro) { Node.new("Rodrigo Santoro") }
  let(:vincent_regan) { Node.new("Vincent Regan") }
  let(:joel_edgerton) { Node.new("Joel Edgerton") }
  let(:matthias_schoenaerts) { Node.new("Matthias Schoenaerts") }
  let(:charlotte_rampling) { Node.new("Charlotte Rampling") }
  let(:joely_richardson) { Node.new("Joely Richardson") }
  let(:bill_camp) { Node.new("Bill Camp") }
  let(:jeremy_irons) { Node.new("Jeremy Irons") }
  let(:christian_bale) { Node.new("Christian Bale") }
  let(:bradley_cooper) { Node.new("Bradley Cooper") }
  let(:amy_adams) { Node.new("Amy Adams") }
  let(:jeremy_renner) { Node.new("Jeremy Renner") }
  let(:louis_ck) { Node.new("Louis C.K.") }
  let(:jack_huston) { Node.new("Jack Huston") }
  let(:michael_pena) { Node.new("Michael Pena") }
  let(:shea_wigham) { Node.new("Shea Whigham") }
  let(:chris_tucker) { Node.new("Chris Tucker") }
  let(:robert_de_niro) { Node.new("Robert De Niro") }
  let(:jackie_weaver) { Node.new("Jackie Weaver") }
  let(:paul_herman) { Node.new("Paul Herman") }
  let(:john_bernthal) { Node.new("John Bernthal") }
  let(:shia_labeouf) { Node.new("Shia LaBeouf") }
  let(:logan_lerman) { Node.new("Logan Lerman") }
  let(:jim_parrack) { Node.new("Jim Parrack") }
  let(:brad_w_henke) { Node.new("Brad William Henke") }
  let(:kevin_vance) { Node.new("Kevin Vance") }
  let(:ryan_gosling) { Node.new("Ryan Gosling") }
  let(:charlie_talbert) { Node.new("Charlie Talbert") }
  let(:hunter_burke) { Node.new("Hunter Burke") }
  let(:steve_carell) { Node.new("Steve Carell") }
  let(:marisa_tomei) { Node.new("Marisa Tomei") }
  let(:jonah_hill) { Node.new("Jonah Hill") }
  let(:robin_wright) { Node.new("Robin Wright") }
  let(:chris_pratt) { Node.new("Chris Pratt") }
  let(:stephen_bishop) { Node.new("Stephen Bishop") }
  let(:scoot_mcnairy) { Node.new("Scoot McNairy") }
  let(:ben_mendelsohn) { Node.new("Ben Mendelsohn") }
  let(:james_gandolfini) { Node.new("James Gandolfini") }
  let(:richard_jenkins) { Node.new("Richard Jenkins") }
  let(:vincent_curatola) { Node.new("Vincent Curatola") }
  let(:ray_liotta) { Node.new("Ray Liotta") }
  let(:christopher_berry) { Node.new("Christopher Berry") }
  let(:trevor_long) { Node.new("Trevor Long") }
  let(:george_clooney) { Node.new("George Clooney") }
  let(:michael_mantell) { Node.new("Michael Mantell") }
  let(:elliot_gould) { Node.new("Elliot Gould") }
  let(:al_pacino) { Node.new("Al Pacino") }
  let(:don_cheadle) { Node.new("Don Cheadle") }
  let(:bernie_mac) { Node.new("Bernie Mac") }
  let(:carl_reiner) { Node.new("Carl Reiner") }
  let(:julian_glover) { Node.new("Julian Glover") }
  let(:brian_cox) { Node.new("Brian Cox") }
  let(:eric_bana) { Node.new("Eric Bana") }
  let(:orlando_bloom) { Node.new("Orlando Bloom") }
  let(:daniel_craig) { Node.new("Daniel Craig") }
  let(:lea_seydoux)  { Node.new("Lea Seydoux") }
  let(:ralph_fiennes) { Node.new("Ralph Fiennes") }
  let(:dave_bautista) { Node.new("Dave Bautista") }
  let(:albert_finney) { Node.new("Albert Finney") }
  let(:javier_bardem) { Node.new("Javier Bardem")}
  let(:harrison_ford) {Node.new("Harrison Ford") }
  let(:t_l_j) {Node.new("Tommy Lee Jones") }




  before do
    kevin_bacon.film_actor_hash["X-Men: First Class"] = [james_mcavoy, michael_fassbender, jennifer_lawrence]
    kevin_bacon.film_actor_hash["R.I.P.D"] = [ryan_reynolds, jeff_bridges, mary_l_p, stephanie_szostak]
    kevin_bacon.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, laurence_fishburne, marcia_gay_harden, laura_linney, kevin_chapman, emmy_rossum]
    kevin_bacon.film_actor_hash["Hollow Man"] = [elisabeth_shue, josh_brolin, kim_dickens, greg_grunberg, joey_slotnick]

    ryan_reynolds.film_actor_hash["R.I.P.D"] = [kevin_bacon, jeff_bridges, mary_l_p, stephanie_szostak]
    ryan_reynolds.film_actor_hash["Deadpool 2"] = [josh_brolin, morena_baccarin, julian_dennison, zazie_beetz, tj_miller, leslie_uggams, karan_soni]
    ryan_reynolds.film_actor_hash["Safe House"] = [denzel_washington, vera_farmiga, brendan_gleeson, sam_shepard, liam_cunningham, joel_kinnaman]
    ryan_reynolds.film_actor_hash["X-men Origins: Wolverine"] = [liev_schreiber, danny_huston, lynn_collins, dominic_monaghan, taylor_kitsch]

    jeff_bridges.film_actor_hash["Kingsman: The Golden Circle"] = [taron_egerton, edward_holcroft, julianne_moore, colin_firth, michael_gambon]
    jeff_bridges.film_actor_hash["True Grit"] = [josh_brolin, hailee_steinfeld, matt_damon, barry_pepper, domhnall_gleeson]
    jeff_bridges.film_actor_hash["Iron Man"] = [robert_d_jr, terrence_howard, gwyneth_paltrow, clark_gregg, paul_bettany, jon_favreau]
    jeff_bridges.film_actor_hash["The Big Lebowski"] = [john_goodman, julianne_moore, steve_buscemi, david_huddleston, philip_seymour_hoffman, tara_reid, john_turturro]
    jeff_bridges.film_actor_hash["Only The Brave"] = [miles_teller, josh_brolin, jennifer_connelly, taylor_kitsch]

    michael_fassbender.film_actor_hash["X-men: Apocalypse"] = [james_mcavoy, jennifer_lawrence, nicholas_hoult, oscar_isaac, rose_byrne, evan_peters, sophie_turner, josh_helman]
    michael_fassbender.film_actor_hash["Prometheus"] = [noomie_rapace, charlize_theron, idris_elba, guy_pearce, benedict_wong]
    michael_fassbender.film_actor_hash["Inglourious Basterds"] = [brad_pitt, christoph_waltz, eli_roth, diane_kruger, daniel_bruhl, til_schweiger, bj_novak]
    michael_fassbender.film_actor_hash["300"] = [gerard_butler, lena_headey, dominic_west, david_wenham, rodrigo_santoro, vincent_regan]

    jennifer_lawrence.film_actor_hash["Red Sparrow"] = [joel_edgerton, matthias_schoenaerts, charlotte_rampling, mary_l_p, joely_richardson, bill_camp, jeremy_irons]
    jennifer_lawrence.film_actor_hash["American Hustle"] = [christian_bale, bradley_cooper, amy_adams, jeremy_renner, louis_ck, jack_huston, michael_pena, shea_wigham]
    jennifer_lawrence.film_actor_hash["Silver Linings Playbook"] = [bradley_cooper, chris_tucker, robert_de_niro, jackie_weaver, shea_wigham, paul_herman]
    jennifer_lawrence.film_actor_hash["X-men: Apocalypse"] = [james_mcavoy, michael_fassbender, nicholas_hoult, oscar_isaac, rose_byrne, evan_peters, sophie_turner, josh_helman]
    jennifer_lawrence.film_actor_hash["X-men: First Class"] = [james_mcavoy, michael_fassbender, kevin_bacon, nicholas_hoult, rose_byrne]

    brad_pitt.film_actor_hash["Fury"] = [shia_labeouf, logan_lerman, michael_pena, john_bernthal, jim_parrack, brad_w_henke, kevin_vance]
    brad_pitt.film_actor_hash["The Big Short"] = [ryan_gosling, christian_bale, charlie_talbert, hunter_burke, steve_carell, marisa_tomei]
    brad_pitt.film_actor_hash["Moneyball"] = [jonah_hill, philip_seymour_hoffman, robin_wright, chris_pratt, stephen_bishop]
    brad_pitt.film_actor_hash["Killing Them Softly"] = [scoot_mcnairy, ben_mendelsohn, james_gandolfini, richard_jenkins, vincent_curatola, ray_liotta, sam_shepard, christopher_berry, trevor_long]
    brad_pitt.film_actor_hash["Inglourious Basterds"] = [michael_fassbender, christoph_waltz, eli_roth, diane_kruger, daniel_bruhl, til_schweiger, bj_novak]
    brad_pitt.film_actor_hash["Ocean's Thirteen"] = [george_clooney, matt_damon, michael_mantell, elliot_gould, al_pacino, don_cheadle, bernie_mac, carl_reiner]
    brad_pitt.film_actor_hash["Troy"] = [julian_glover, brian_cox, brendan_gleeson, diane_kruger, eric_bana, orlando_bloom]

    christoph_waltz.film_actor_hash["Inglourious Basterds"] = [michael_fassbender, brad_pitt, eli_roth, diane_kruger, daniel_bruhl, til_schweiger, bj_novak]

    daniel_craig.film_actor_hash["Spectre"] = [christoph_waltz, lea_seydoux, ralph_fiennes, dave_bautista]

    javier_bardem.film_actor_hash["Skyfall"] = [daniel_craig, ralph_fiennes, albert_finney]

    t_l_j.film_actor_hash["No Country For Old Men"] = [javier_bardem, josh_brolin]

    harrison_ford.film_actor_hash["The Fugitive"] = [t_l_j, julianne_moore]
  end


  it "returns if the node passed is Kevin Bacon" do
    expect(find_kevin_bacon(kevin_bacon)).to eq("This is Kevin Bacon")
  end


  it "returns an array of one movie if Kevin Bacon appears in the film" do
    expect(find_kevin_bacon(ryan_reynolds)).to eq(["R.I.P.D"])
  end


  it "returns an array of movies if Kevin Bacon can be found" do
    expect(find_kevin_bacon(brad_pitt)).to eq(["Inglourious Basterds", "X-men: Apocalypse", "X-men: First Class" ])
  end


  it "returns a message if Kevin Bacon can't be found" do
    expect(find_kevin_bacon(jeff_bridges)).to eq("Couldn't bring home the Bacon")
  end


  it "returns a message if it takes more than 6 films to find Kevin Bacon" do
    expect(find_kevin_bacon(harrison_ford)).to eq("Too many films to bring home the Bacon")
  end
end
