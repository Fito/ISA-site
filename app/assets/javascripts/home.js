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
    })
  }
  
  addAttachmentBtnSetup();
})