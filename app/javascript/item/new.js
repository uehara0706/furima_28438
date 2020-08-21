$(function () {
  let rate = 0.1;
  $('#item-price').on('change', function () {
    let str = $(this).val();


    let itemPrice = Number(str);
    let addTaxPrice = Math.round(itemPrice * rate);
    let profit = itemPrice - addTaxPrice;
    $('#add-tax-price').text(addTaxPrice);
    $('#profit').text(profit);
  });
});

  