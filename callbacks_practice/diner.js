function bfastOrder() {
  let order = "I'd like coffee please.";
  console.log(order);

  return function(food) {
    order = `${order.slice(0, order.length - 7)} and ${food} please.`;
    console.log(order);
  };
};


let order = bfastOrder();
order("a bagel");
order("a doughnut")
