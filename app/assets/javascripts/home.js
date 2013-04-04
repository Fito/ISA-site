$(function init(){ 
  function addAttachmentBtnSetup(){
    var fieldsCount = 3;
    $('div.button-container button.add-attachment').click( function(e){
      e.preventDefault();
      fieldsCount += 1;
      name = 'attachments_attachment'+ fieldsCount + '_url'
      var attachmentField = $('<label for="' + name + '">Attachment</label>' +
                              '<input id="' + name + '" name="attachments[attachment' + fieldsCount + '_url]" size="30" type="text">')
      $('.attachment-urls').append(attachmentField)
    });
  }
  
  function menuItemHighlight(){
    function highlight(){
      $(this).css('background-color', '#7D8EF4');
      $(this).css('border-radius', '8px 8px 0px 0px');
      $(this).css('color', '#FFF');
    }
    
    function deHighlight(){
      $(this).css('background-color', 'transparent');
      $(this).css('border-radius', '0px');
      $(this).css('color', '#555');
    }
    
    $('div.header-menu li.unselected').hover(highlight, deHighlight);
    $('div.header-menu li.selected').hover(highlight);
  }
    
  function menuOptionSetup(){        
    $('div.header-menu li').click( function(e){
      $('div.header-menu li').each( function(index, li){
        $(li).removeClass('selected');
        $(li).addClass('unselected');
        $(li).css('background-color', 'transparent');
        $(li).css('border-radius', '0px');
        $(li).css('color', '#555');
      });
    
      self = $(this);
      self.addClass('selected');
      self.removeClass('unselected');
      self.css('background-color', '#7D8EF4');
      self.css('border-radius', '8px 8px 0px 0px');
      self.css('color', '#FFF');
      menuItemHighlight();
    });
  }
  
  menuOptionSetup();
  menuItemHighlight();
  addAttachmentBtnSetup();
})