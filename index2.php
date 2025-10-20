<!doctype html>
<html lang="es">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Como insertar Emoji usando PHP en comentarios | BaulPHP</title>
<link href="vendor/emoji-picker/lib/css/emoji.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="vendor/emoji-picker/lib/js/config.js"></script>
<script src="vendor/emoji-picker/lib/js/util.js"></script>
<script src="vendor/emoji-picker/lib/js/jquery.emojiarea.js"></script>
<script src="vendor/emoji-picker/lib/js/emoji-picker.js"></script>

 
    <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
<header> 

    </header>

<!-- Begin page content -->


     
          <!-- Contenido -->


<div class="output-container">
<div class="comment-form-container">



<div class="input-row">
    <p class="emoji-picker-container">
      <textarea class="input-field" data-emojiable="true" data-emoji-input="unicode" type="text" name="comment" id="comment" placeholder="Agrege su mensaje"></textarea>
    </p>
</div>
</div>
</div>
<script>



$(function () {
	// Initializes and creates emoji set from sprite sheet
	window.emojiPicker = new EmojiPicker({
		emojiable_selector: '[data-emojiable=true]',
		iconSize: 24,
		assetsPath: 'vendor/emoji-picker/lib/img/',
		popupButtonClasses: 'icon-smile'
	});

	window.emojiPicker.discover();
});





</script>


</html>