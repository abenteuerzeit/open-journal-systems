<?php
/* Smarty version 4.3.1, created on 2024-06-08 10:54:32
  from 'app:admineditContext.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66643868de7748_49055111',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '664748597680cd06723689c4a9fa96f696281a87' => 
    array (
      0 => 'app:admineditContext.tpl',
      1 => 1688091971,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66643868de7748_49055111 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="editContext">
	<?php if ($_smarty_tpl->tpl_vars['isAddingNewContext']->value) {?>
	<add-context-form
	<?php } else { ?>
	<pkp-form
	<?php }?>
		v-bind="components.<?php echo (defined('FORM_CONTEXT') ? constant('FORM_CONTEXT') : null);?>
"
		@set="set"
	/>
</div>
<?php echo '<script'; ?>
 type="text/javascript">
	pkp.registry.init('editContext', 'AddContextContainer', <?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'json_encode' ][ 0 ], array( $_smarty_tpl->tpl_vars['containerData']->value ));?>
);
<?php echo '</script'; ?>
>
<?php }
}
