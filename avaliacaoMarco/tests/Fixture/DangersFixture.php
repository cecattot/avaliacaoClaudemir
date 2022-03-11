<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * DangersFixture
 */
class DangersFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'acesso' => 'Lorem ipsum dolor sit amet',
                'ativo' => 'L',
                'created' => '2022-03-10 23:34:29',
                'modified' => '2022-03-10 23:34:29',
                'role_id' => 'Lorem ipsum dolor sit amet',
            ],
        ];
        parent::init();
    }
}
