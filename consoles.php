<!DOCTYPE html>
<html>
<head>
	<title>Using MySQL</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<meta name = "viewport" content = "width = device-width, initial-scale = 1">            
    <link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script type = "text/javascript"
       src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
	
	<link rel="stylesheet" href="./style/style.css">
</head>
<body>

<header class="row">
	<div class="col s12 m12 l12"> 
	  <nav>
        <div class = "nav-wrapper">
           <a href = "./assignment.html" class = "brand-logo left">MySQL and PHP</a>           
           <a href="#" data-activates="mobile-demo" class="right button-collapse"><i class="material-icons">menu</i></a>           
           <ul id = "nav-desktop" class = "right hide-on-med-and-down">
              <li><a href = "./assignment.html">Assignment</a></li>
              <li><a  href = "#" class = "dropdown-button"  data-activates = "dropdown">Solutions</a>	
              <ul id = "dropdown" class = "dropdown-content">
		         <li><a href = "./owners.php">Owners</a></li>
		         <li><a href = "./consoles.php">Consoles</a></li>
		      </ul>              
           </ul>                 
	      <ul class="side-nav" id="mobile-demo">
              <li><a href = "./assignment.html">Assignment</a></li>  
              <li>
              		Solutions
              		<ul>
              			<li><a href = "./owners.php">Owners</a></li>
              			<li><a href = "./consoles.php">Consoles</a></li> 
              		</ul>
              </li>                  
	      </ul>
        </div>
     </nav>
	</div>
</header>

<div class="z-depth-2 cont content">
    <h1>Game Consoles</h1>
    
<!-- begin of summary block --> 
<?php 
    include_once '.\db\db.php'; 
    
    //function: inserts game console div block into html
    function game_console_block ($console, $num_of_games, $games) {
        $console_string =  "<div class='game-console'>
                            <h4 style='text-decoration: underline;'>Console: {console}</h4>
                            <p>
                              <span>Games:</span>
                              <span class='game-list'>{games}</span><br/>
                              <span>Games Total:</span> {num_of_games}
                            </p>
                          </div>";
        $console_string = str_replace('{console}', $console, $console_string);
        $console_string = str_replace('{games}', $games, $console_string);
        $console_string = str_replace('{num_of_games}', $num_of_games, $console_string);
        
        print $console_string;
    }

    //main program
    $dbc = dbconn();
    $db = $dbc['conn'];
    
    // If db connection failed exit
    if (!$db) {
        print "We are sorry! The application currently is not available. Please try again later";
        exit();
    }
    
    //Preparing query: games belonging to particular owner
    $query_games = "SELECT DISTINCT nom_jeux FROM jeux_video
              WHERE id_console = :id_console
              ORDER BY nom_jeux";   
    
    try {
        $stmt_games = $db->prepare($query_games);
    }
    catch (PDOException $e) {
        //print "Can not get data from DB: ".$e->getMessage();
        
        //Close DB connection and exit
        $db = null;
        $dbc = null;
        exit();
    }

    
    // Retrieving consoles from DB
    try {
        $query_consoles = $db->query('SELECT id_console, nom_console 
                         FROM console
                         ORDER BY nom_console');
        
    }
    catch (PDOException $e) {
        //print "Can not get data from DB: ".$e->getMessage();
        
        //Close DB connection and exit
        $db = null;
        $dbc = null;
        exit();
    }
    
    while ($row = $query_consoles->fetch(PDO::FETCH_ASSOC)){
        $console_id = $row['id_console'];
        $console_name = $row['nom_console'];
        $games = "";
        
        //Extracting games for particular owner from DB
        $stmt_games->bindParam(":id_console", $console_id, PDO::PARAM_INT);
        
        try {
            $stmt_games->execute();
        }
        catch (PDOException $e) {
            //print "Can not get data from DB: ".$e->getMessage();
            
            //Close DB connection and exit
            $db = null;
            $dbc = null;
            exit();
        }
        
        //Number of games owned by a particular owner
        $num = $stmt_games->rowCount();
                
        //fetching games
        if ($num > 0) {
            while ($row_games = $stmt_games->fetch(PDO::FETCH_ASSOC)){
                $games .= $row_games['nom_jeux'].", " ;
            }
            $games = trim($games, ", ").".";
        }
        
        //Adding game owner data to 
        game_console_block($console_name, $num, $games);
        
        //Closing DB connection
        $db = null;
        $dbc = null;
    }
?>
<!-- end of summary block -->	  
</div>	
<footer class = "page-footer">        
     <div class = "footer-copyright cont">
        
          &copy; 2018 MySQL and PHP Practice
           <a class = "grey-text text-lighten-4 right" target="_blank"
               href = "https://github.com/codenroller/MySQL-and-PHP.git">
           		<img id="git" src='images/gitcat.png'></img></a>
        
     </div>         
</footer>

<div class="scripts">
       <script src='./js/style.js'></script>
</div> 
</body>
</html>