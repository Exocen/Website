customNodeChoice = 1;
customVaccineChoice = 1;
customNeighborChocie = 1;
customOutbreakChoice = 1;

var speed = false;
var toggleDegree = true;

function difficultySelection(clas){
  return d3.select(".difficultySelection").append("div")
  .attr("class", clas)
}

function difficultySelection2(clas, id, text){
  return difficultySelection(clas)
  .attr("id", id)
  .text(text)
}
function difficultySelectionOver(clas, id, text, ds){
  return difficultySelection2(clas, id, text, ds)
  .on("mouseover", function() {
    d3.select(this).style("color", "#2692F2")
  })
  .on("mouseout", function() {
    d3.select(this).style("color", "#707070")
  })
  .on("click", function() {
    initBasicGame(ds);
  })
}

function initBasicMenu() {

  d3.select(".vaxLogoDiv")
  .style("visibility", "visible")

  d3.select(".vaxLogoDiv")
  .style("left", "-12px")

  // new game header at top-left
  d3.select(".jumbotron").append("div")
  .attr("class", "newGameHeader ")
  .text("NEW GAME")

  d3.select(".jumbotron").append("div")
  .attr("class", "row")
  // difficulty selection div
  d3.select(".row").append("div")
  .attr("class", "difficultySelection col-xs-6")

  d3.select(".row").append("div")
  .attr("class", "gameOptions col-xs-6")

  // header for difficulty selection
  d3.select(".difficultySelection").append("div")
  .attr("class", "difficultyHeader")
  .text("DIFFICULTY")

  // difficulty menu items

  difficultySelectionOver("difficultyItem", "difficultyEasy", "Easy", "easy")
  difficultySelection("easyHi")
  difficultySelection2("difficultyItemGrey", "difficultyMedium", "Medium")
  difficultySelection("mediumHi")
  difficultySelection2("difficultyItemGrey", "difficultyHard", "Hard")
  difficultySelection("hardHi")

  d3.select(".gameOptions").append("div")
  .attr("class", "gameOptionsHeader")
  .text("GAME OPTIONS")

  d3.select(".gameOptions").append("div")
  .attr("class", "quarantineModeOptions")
  .text("Quarantine Phase")

  d3.select(".gameOptions").append("div")
  .attr("class", "turnBasedTrue")
  .text("Turn-based")
  .on("click", function() {
    d3.select(".turnBasedTrue").style("color", "#2692F2").style("font-weight", "500")
    d3.select(".realTimeTrue").style("color", "#BABABA").style("font-weight", "300")

    speed = false;

    if (vaxEasyHiScore !== -Infinity){
      d3.select(".easyHi").text("(Best: " + vaxEasyHiScore + "%)")
    }

    if (vaxMediumHiScore !== -Infinity) {
      d3.select(".mediumHi").text("(Best: " + vaxMediumHiScore + "%)")
    }
    if (vaxHardHiScore !== -Infinity) {
      d3.select(".hardHi").text("(Best: " + vaxHardHiScore + "%)")
    }
  })

  d3.select(".gameOptions").append("div")
  .attr("class", "realTimeTrue")
  .text("Real-time")
  .on("click", function() {
    d3.select(".turnBasedTrue").style("color", "#BABABA").style("font-weight", "300")
    d3.select(".realTimeTrue").style("color", "#2692F2").style("font-weight", "500")

    speed = true;
    displayScore(vaxEasyHiScoreRT, ".easyHi");
    displayScore(vaxMediumHiScoreRT, ".mediumHi");
    displayScore(vaxHardHiScoreRT, ".hardHi");
  })

}
function displayScore(score, clas){
  if (score < 0) d3.select(clas).text("")
  else d3.select(clas).text("(Best: " + score + "%)")
}


function initCustomMenu() {

  d3.select(".difficultySelection").style("top", "40px")

  d3.selectAll(".difficultyItem").remove()
  d3.selectAll(".difficultyItemHighlight").remove()
  d3.selectAll(".difficultyItemGrey").remove()
  d3.selectAll(".difficultyHeader").remove()

  d3.select("#customMenuDiv").style("visibility", "visible")
  d3.select("#customNodes").text("Nodes: " + parseInt($.cookie ('customNodes'),10))
  d3.select("#customDegree").text("Neighbors: " + parseInt($.cookie ('customNeighbors'),10) + "ea.")
  d3.select("#customVaccines").text("Vaccines: " + parseInt($.cookie ('customVaccines'),10))
  d3.select("#customRefusers").text("Refusers: " + parseInt($.cookie ('customRefusers'),10))
  d3.select("#customOutbreaks").text("Outbreaks: " + parseInt($.cookie ('customOutbreaks'),10))

  d3.selectAll(".ui-state-default").style("background", "white")
  d3.selectAll(".ui-corner-all").style("border-radius", "50px")

  d3.select("#customMenuDiv").append("text")
  .attr("class", "okayButton")
  .text("OKAY")
  .on("click", function() {
    d3.select(this).remove();
    d3.select(".vaxLogoDiv").remove();
    initCustomGame();
  })
}

var maxVax = parseInt($.cookie ('customNodes'),10)
