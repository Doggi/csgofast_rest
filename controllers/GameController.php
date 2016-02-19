<?php
/**
 * Created by IntelliJ IDEA.
 * User: soeren
 * Date: 19.02.16
 * Time: 01:51
 */

namespace app\controllers;


use app\models\Game;
use yii\rest\ActiveController;

class GameController extends ActiveController
{
    public $modelClass = 'app\models\Game';

    public function actionView(){
        return Game::find();
    }
}