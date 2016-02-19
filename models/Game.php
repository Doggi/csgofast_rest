<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "game".
 *
 * @property integer $gameNum
 * @property string $roundHash
 * @property double $randNum
 * @property integer $winningTicket
 * @property string $winningPlayer
 * @property integer $date
 * @property string $user
 */
class Game extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'game';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['gameNum', 'roundHash', 'randNum', 'winningTicket', 'winningPlayer', 'date'], 'required'],
            [['gameNum', 'winningTicket'], 'integer'],
            ['date', 'date', 'format' => 'yyyy-mm-dd HH:mm:ss'],
            [['randNum'], 'number'],
            [['roundHash'], 'string', 'max' => 128],
            [['winningPlayer', 'user'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'gameNum' => 'Game Num',
            'roundHash' => 'Round Hash',
            'randNum' => 'Rand Num',
            'winningTicket' => 'Winning Ticket',
            'winningPlayer' => 'Winning Player',
            'date' => 'Date',
            'user' => 'User',
        ];
    }

    public function fields()
    {
        return [
            'gameNum',
            'roundHash',
            'randNum',
            'winningTicket',
            'winningPlayer',
            'date',
        ];
    }
}