<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-module" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
          <div class="form-group">
            <div class="row">
              <label class="col-sm-2 control-label" for="input-status"><?php echo $text_status; ?></label>
              <div class="col-sm-5">
                <select name="status" id="input-status" class="form-control">
                  <?php if ($status): ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php else: ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php endif; ?>
                </select>
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="input-color">
                <br>
                <?php echo $text_alert_color; ?>
              </label>
              <div class="col-sm-5">
                <div>
                  <input type="radio" id="choice1"
                   name="color" value="red" <?php if ($color == 'red'): ?> checked <?php endif; ?>>
                  <label for="choice1"><?php echo $text_red; ?></label>
                  <br>
                  <input type="radio" id="choice2"
                   name="color" value="green" <?php if ($color == 'green'): ?> checked <?php endif; ?>>
                  <label for="choice2"><?php echo $text_green; ?></label>
                  <br>
                  <input type="radio" id="choice3"
                   name="color" value="blue" <?php if ($color == 'blue'): ?> checked <?php endif; ?>>
                  <label for="choice3"><?php echo $text_blue; ?></label>
                </div>
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="input-home-only"><?php echo $text_show; ?></label>
              <div class="col-sm-5">
                <select name="home_only" id="input-home-only" class="form-control">
                  <?php if ($home_only): ?>
                  <option value="1" selected="selected"><?php echo $text_home_only; ?></option>
                  <option value="0"><?php echo $text_everywhere; ?></option>
                  <?php else: ?>
                  <option value="1"><?php echo $text_home_only; ?></option>
                  <option value="0" selected="selected"><?php echo $text_everywhere; ?></option>
                  <?php endif; ?>
                </select>
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="alert-text1"><?php echo $text_alert_text1; ?></label>
              <div class="col-sm-5">
                <input name="text1" id="alert-text1" value="<?php echo $text1; ?>" style="width: 100%;">
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="alert-linktext"><?php echo $text_alert_linktext; ?></label>
              <div class="col-sm-2">
                <input name="linktext" id="alert-linktext" value="<?php echo $linktext; ?>" style="width: 100%;">
              </div>
              <label class="col-sm-1 control-label" for="alert-link"><?php echo $text_alert_link; ?></label>
              <div class="col-sm-2">
                <input name="link" id="alert-link" value="<?php echo $link; ?>" style="width: 100%;">
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="alert-text2"><?php echo $text_alert_text2; ?></label>
              <div class="col-sm-5">
                <input name="text2" id="alert-text2" value="<?php echo $text2; ?>" style="width: 100%;">
              </div>
            </div>
            <br>
            <div class="row">
              <label class="col-sm-2 control-label" for="alert_closable"><?php echo $text_alert_closable; ?></label>
              <div class="col-sm-5">
                <select name="closable" id="alert_closable" class="form-control">
                  <?php if ($closable): ?>
                  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                  <option value="0"><?php echo $text_no; ?></option>
                  <?php else: ?>
                  <option value="1"><?php echo $text_yes; ?></option>
                  <option value="0" selected="selected"><?php echo $text_no; ?></option>
                  <?php endif; ?>
                </select>
              </div>
            </div>
            <br>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
