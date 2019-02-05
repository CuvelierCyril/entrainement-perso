<?php
$profession = $_POST['profession'];
$prefessionAccepted = ['guerrier', 'guardien', 'revenant', 'voleur', 'elementaliste', 'ingenieur', 'rodeur', 'envouteur', 'necromant'];
if (isset($profession)){
    if (preg_match('#^[a-z]{2,15}$#i', $profession)){
        if (in_array($profession, $prefessionAccepted)){
            try{
                $bdd = new PDO('mysql:host=localhost;dbname=entrainementperso;charset=utf8', 'root', '');
            } catch(Exception $e){
                die($e);
            }
            $response = $bdd->prepare('SELECT p_name, p_armor FROM profession WHERE p_name = :profession');
            $response->bindValue(':profession', $profession);
            $response->execute();
            $generalStats = $response->fetchAll(PDO::FETCH_ASSOC);
            $stat = $generalStats[0];
            $response = $bdd->prepare('SELECT s_name FROM profession INNER JOIN spécialisations ON spécialisations.profession_id = profession.id WHERE profession.p_name = :profession');
            $response->bindValue(':profession', $profession);
            $response->execute();
            $speStats = $response->fetchAll(PDO::FETCH_NUM);
            foreach ($speStats as $speStat){
                $stat['specialisations_name'][] = $speStat[0];
            }
            $response = $bdd->prepare('SELECT w_name FROM profession INNER JOIN profession_weapons ON profession_weapons.id_profession = profession.id INNER JOIN weapons ON weapons.id = profession_weapons.id_weapons WHERE profession.p_name = :profession');
            $response->bindValue(':profession', $profession);
            $response->execute();
            $weaponStats = $response->fetchAll(PDO::FETCH_NUM);
            foreach ($weaponStats as $weaponStat){
                $stat['weapons_name'][] = $weaponStat[0];
            }
            echo json_encode($stat);
        }
    }
}

