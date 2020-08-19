$(function () {
  var rate = 0.1;
  $('#item-price').on('change', function () {
    var str = $(this).val();


    var itemPrice = Number(str);
    var addTaxPrice = Math.round(itemPrice * rate);
    var profit = itemPrice - addTaxPrice;
    $('#add-tax-price').text(addTaxPrice);
    $('#profit').text(profit);
  });
});

  