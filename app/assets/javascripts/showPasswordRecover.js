function showRecoverPasswordForm() {
  document.getElementById('recover_password').style.display = 'block';
  document.getElementById('customer_login').style.display='none';
}

function hideRecoverPasswordForm() {
  document.getElementById('recover_password').style.display = 'none';
  document.getElementById('customer_login').style.display = 'block';
}

if (window.location.hash == '#recover') { showRecoverPasswordForm() }

  