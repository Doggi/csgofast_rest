<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Game;

/**
 * GameSearch represents the model behind the search form about `app\models\Game`.
 */
class GameSearch extends Game
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['gameNum', 'winningTicket'], 'integer'],
            [['roundHash', 'winningPlayer', 'date', 'user'], 'safe'],
            [['randNum'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Game::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'gameNum' => $this->gameNum,
            'randNum' => $this->randNum,
            'winningTicket' => $this->winningTicket,
            'date' => $this->date,
        ]);

        $query->andFilterWhere(['like', 'roundHash', $this->roundHash])
            ->andFilterWhere(['like', 'winningPlayer', $this->winningPlayer])
            ->andFilterWhere(['like', 'user', $this->user]);

        return $dataProvider;
    }
}