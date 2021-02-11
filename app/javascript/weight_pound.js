window.addEventListener('load', () => {
  const weightInput = document.getElementById("log_trainings_attributes_0_weight_kg");
  weightInput.addEventListener("input", () => {
    const inputValue = weightInput.value ;
    const addWeightDom = document.getElementById("weight-pound-number");
    addWeightDom.innerHTML = Math.floor(inputValue * 2.205);
    const displayWeightLb = addWeightDom.innerHTML
    document.getElementById("f_weight").value = displayWeightLb
  })

  // document.getElementById("addRow").onclick = function() {
  //   console.log('イベント発火')
  //   let block =  document.getElementById("detail-association-insertion-point")
  //   block.insertAdjacentHTML('beforebegin','<div>BeforeBegin</div>');
  // }
});
