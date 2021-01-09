<?php if ($status): ?>
  <div id="simple-alert" class="alert
      <?php if ($color == 'red'): ?>
        alert-danger
      <?php endif; ?>
      <?php if ($color == 'blue'): ?>
        alert-info
      <?php endif; ?>
      <?php if ($color == 'green'): ?>
        alert-success
      <?php endif; ?>
    fade in text-center hide" role="alert">
    <?php if ($closable): ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
      </button>
    <?php endif; ?>
    <span>
      <?php echo $text1; ?>
    </span>
    <?php if ($link): ?>
      <a href="<?php echo $link; ?>" class="alert-link">
        <?php echo $linktext; ?>
      </a>
    <?php endif; ?>
    <span>
      <?php echo $text2; ?>
    </span>
  </div>
<?php endif; ?>
