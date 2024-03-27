function animateGoldCoin() {
    var coin = document.getElementById('gold-coin');
    //var piggyBank = document.getElementById('piggy-bank');

    // Show the piggy bank
   // piggyBank.classList.add('piggy-bank-visible');

    // Start the coin animation
    coin.classList.add('spin-zoom-and-fall');

    // Hide the piggy bank after the coin animation ends
    coin.addEventListener('animationend', function() {
        coin.classList.remove('spin-zoom-and-fall');
      //  piggyBank.classList.remove('piggy-bank-visible');
    }, {once: true});
}