<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-05-06 11:44:32
         compiled from "D:\web\server2go\htdocs\LW3\template\index.html" */ ?>
<?php /*%%SmartyHeaderCode:84795549e280e11141-60831663%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d8ff11366eb7c09e6b0e332f3152e37ce3db8da' => 
    array (
      0 => 'D:\\web\\server2go\\htdocs\\LW3\\template\\index.html',
      1 => 1430905218,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '84795549e280e11141-60831663',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headline' => 0,
    'name' => 0,
    'users' => 0,
    'user' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5549e281426732_55793063',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5549e281426732_55793063')) {function content_5549e281426732_55793063($_smarty_tpl) {?><h1><?php echo $_smarty_tpl->tpl_vars['headline']->value;?>
</h1>

<p>Hello, <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</p>

<h2>Users</h2>
<?php  $_smarty_tpl->tpl_vars['user'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['user']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['users']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['user']->key => $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->_loop = true;
?>
  <label>Name: </label><span><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</span><br/>
  <label>Surname: </label><span><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value['surname'], ENT_QUOTES, 'UTF-8', true);?>
</span><br/>
  <label>Age: </label><span><?php echo $_smarty_tpl->tpl_vars['user']->value['age'];?>
</span><br/>
<?php } ?>
<?php }} ?>
