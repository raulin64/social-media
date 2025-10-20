
     
	  <link href="assets/css/jquery.cssemoticons.css" media="screen" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/js/jquery.cssemoticons.min.js" type="text/javascript"></script>



    
    </head>

    <link href="css/style.css" rel="stylesheet">
   
   @if(!IoC::resolve('Browser')->isMobile())
      <ul
         id="messages_box"
         class="dropdown-menu dropdown-menu-large row message-bg"
         style="
            margin-top: -10px;
            z-index: 9999px;
            margin-left: 15px;
            display: none;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
         "
      >
	  @endif
	  
	  @if(IoC::resolve('Browser')->isMobile())
		      <ul
         id="messages_box"
         class="dropdown-menu dropdown-menu-large row message-bg-mobil"
         style="
            margin-top: -10px;
            z-index: 9999px;
            margin-left: 15px;
            display: none;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
         "
      > 
	  @endif	
         <!-- ko if: contacts().length > 0 -->
         <ul
            id="contacts"
            class="conversation-wrap col-md-3"
            data-bind="foreach: contacts"
            style="
               background-color: #fff;
               margin: 10px;
               margin-top: 0px;
               border-radius: 5px;
               list-style-type: none;
            "
         >
            <li
               class="media conversation row"
               data-bind="click: $parent.loadMessages, css: { 'aliceblue' : unread > 0 }, attr:{ id: 'contact_'+id }"
            >
               <div class="col-md-4">
                  <a class="pull-left" href="#">
                     <img
                        class="media-object"
                        alt="64x64"
                        style="width: 32px; height: 32px"
                        data-bind="attr: { src : thumbnail_url }"
                     />
                  </a>
               </div>
               <div class="col-md-5">
                  <div class="media-body">
                     <h5
                        class="media-heading"
                        style="font-size: 0.7em"
                        data-bind="text: name, attr:{ id: 'contactName_'+id }"
                     ></h5>
                  </div>
               </div>
               <div class="col-md-2">
                  <div
                     data-bind="css: { 'status-online' : is_online , 'status-offline' : !is_online}"
                  ></div>
               </div>
            </li>
         </ul>
         <!-- /ko -->

         <span id="messages">
            <!-- ko if: contacts().length > 0 -->

            <div
               class="message-wrap col-md-8 border-div"
               style="padding: 30px; background: #f2f2f2"
            >
               <div style="text-align: center; margin: 0px; padding: 0px">
                  <small
                     >{{ t('yourconversationwith') }}
                     <span id="convo_user"></span
                  ></small>
               </div>
               <div class="row border-div">
			   @if(!IoC::resolve('Browser')->isMobile())
                  <div
                     id="msg_canvas"
                     class="msg-wrap-pc col-md-12"
                     style="height: 274px; overflow: hidden"
                     data-bind="foreach: messages"
                  >
				  
                     <div class="media msg">
                        <a class="pull-left" href="#">
                           <img
                              class="media-object"
                              alt="64x64"
                              style="width: 32px; height: 32px"
                              data-bind="attr: { src : from_user_thumbnail_url }"
                           />
                        </a>

                        <div class="media-body">
                           <small class="pull-right time"
                              ><i class="fa fa-clock-o"></i>
                              <span data-bind="text: sent_at"></span
                           ></small>
                           <h5
                              class="media-heading"
                              data-bind="text: from_user"
                           ></h5>
                           <small
                              class="col-lg-10"
                              data-bind="text: message"
                           ></small>
                        </div>

                     </div>

                  </div>
				  					 					
				                  <div class="coment" id="feedback-bg-info">
                     <h5  Default Feedback Message></h5>
                  </div>  
					@endif
									  @if(IoC::resolve('Browser')->isMobile())
							                  <div
                     id="msg_canvas"
                     class="msg-wrap-mobil col-md-12"
                     style="height: 274px; overflow: hidden"
                     data-bind="foreach: messages"
                  >			  
                     <div class="media msg">
                        <a class="pull-left" href="#">
                           <img
                              class="media-object"
                              alt="64x64"
                              style="width: 32px; height: 32px"
                              data-bind="attr: { src : from_user_thumbnail_url }"
                           />
                        </a>

                        <div class="media-body">
                           <small class="pull-right time"
                              ><i class="fa fa-clock-o"></i>
                              <span data-bind="text: sent_at"></span
                           ></small>
                           <h5
                              class="media-heading"
                              data-bind="text: from_user"
                           ></h5>
                           <small
                              class="col-lg-10"
                              data-bind="text: message"
                           ></small>
                        </div>
                     </div>
                  </div>
				  
				  				                  <div class="coment"id="feedback-bg-info">
                     <h5  Default Feedback Message></h5>
                  </div>  
					@endif
					 
                  

               <!--   <button id="update-feedback">Update Feedback</button>-->

                  <div class="col-md-12">
                     <div class="send-wrap">
					 
					 <p class="emoji-picker-container">
                        <input
                           type="textarea"
                           id="sendMessage"
                           class="sendMessage form-control send-message input-lg"
                           placeholder="{{ t('writeareply') }}"
						   data-emojiable="true" 
						   data-emoji-input="unicode"
                        />
					</p>
</div>



		                   <div class="btn-panel">
		                <a href="javascript:;" id="send-message-btn" class="send-message-btn col-lg-4 text-right btn send-message-btn pull-right" role="button" ><i class="fa fa-plus"></i> {{ t('sendmessage') }}</a>
		            </div
                     </div>
                  </div>
               </div>
            </div>
            <!-- /ko -->
         </span>

         <!-- ko if: contacts().length == 0 -->

         <div class="border-div" style="margin: 10px; text-align: center">
            <h2 style="font-size: 0.9em">{{ t('nocontacts') }}</h2>
         </div>

         <!-- /ko -->
      </ul>
	  
<script>	  
$(function () {
	
	// Initializes and creates emoji set from sprite sheet
	window.emojiPicker = new EmojiPicker({
		emojiable_selector: '[data-emojiable=true]',
		
		assetsPath: 'vendor/emoji-picker/lib/img/',
		
		popupButtonClasses: 'icon-smile'
	});

	window.emojiPicker.discover();
});
</script>

      <script>
	  
         $(document).ready(function () {
            // Example text to update the feedback
            const miTexto2 =
               "<strong>Success!</strong> Your feedback has been updated.";

            // Update the feedback message when the button is clicked
            $("#update-feedback").on("click", function () {
				
               $("#feedback-bg-info").html(miTexto2);
            });
				// Initializes and creates emoji set from sprite sheet
	window.emojiPicker = new EmojiPicker({
		emojiable_selector: '[data-emojiable=true]',
		popupButtonClasses: 'icon-smile'
	});

	window.emojiPicker.discover();
         });
      </script>
 

