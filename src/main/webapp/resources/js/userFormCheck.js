function submitUserForm() {

    var name = $('#name').val().trim();
    var age = $('#age').val().trim();
    if(name.length ==0) {
        alert('Please enter name.');
        $('#name').focus();
        return false;
    }

    if(name.length >25) {
        alert('The name mustn\'t exceed 25 characters');
        $('#name').focus();
        return false;
    }

    if(age <= 0) {
        alert('Please enter proper age');
        $('#age').focus();
        return false;
    }
    if(!isNumeric(age)) {
        alert('Not a number');
        $('#age').focus();
        return false;
    }
    
    return true;
};

function isNumeric(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
};