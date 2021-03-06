<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Danger $danger
 * @var string[]|\Cake\Collection\CollectionInterface $roles
 */
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $danger->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $danger->id), 'class' => 'side-nav-item']
            ) ?>
            <?= $this->Html->link(__('List Dangers'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="dangers form content">
            <?= $this->Form->create($danger) ?>
            <fieldset>
                <legend><?= __('Edit Danger') ?></legend>
                <?php
                    echo $this->Form->control('acesso');
                    echo $this->Form->control('role_id', ['options' => $roles]);
                ?>
            </fieldset>
            <?= $this->Form->button(__('Submit')) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>
