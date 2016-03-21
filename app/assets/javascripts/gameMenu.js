customNodeChoice = 1;
customVaccineChoice = 1;
customNeighborChocie = 1;
customOutbreakChoice = 1;

var speed = false;
var toggleDegree = true;

function difficultySelection(class){
  d3.select(".difficultySelection").append("div")
  .attr("class", class)
  .style("color", "#BABABA")
  .style("font-family", "Nunito")
  .style("font-weight", "500")
  .style("font-size", "20px")
  .text("")
}

function initBasicMenu() {

  d3.select(".vaxLogoDiv")
  .style("visibility", "visible")

  d3.select(".vaxLogoDiv")
  .style("left", "-12px")

  // new game header at top-left
  d3.select("body").append("div")
  .attr("class", "newGameHeader")
  .text("NEW GAME")

  d3.select("body").append("div")
  .attr("class", "row")
  // difficulty selection div
  d3.select("row").append("div")
  .attr("class", "difficultySelection col-xs-6")

  d3.select("row").append("div")
  .attr("class", "gameOptions col-xs-6")

  // header for difficulty selection
  d3.select(".difficultySelection").append("div")
  .attr("class", "difficultyHeader")
  .text("DIFFICULTY")

  // difficulty menu items
  d3.select(".difficultySelection").append("div")
  .attr("class", "difficultyItem")
  .attr("id", "difficultyEasy")
  .text("Easy")
  .on("mouseover", function() {
    d3.select(this).style("color", "#2692F2")
  })
  .on("mouseout", function() {
    d3.select(this).style("color", "#707070")
  })
  .on("click", function() {
    difficultyString = "easy"
    initBasicGame(difficultyString);
  })

  difficultySelection("easyHi")

  d3.select(".difficultySelection").append("div")
  .attr("class", "difficultyItemGrey")
  .attr("id", "difficultyMedium")
  .text("Medium")

  difficultySelection("mediumHi")

  d3.select(".difficultySelection").append("div")
  .attr("class", "difficultyItemGrey")
  .attr("id", "difficultyHard")
  .text("Hard")

  difficultySelection("hardHi")

  d3.select(".gameOptions").append("div")
  .attr("class", "gameOptionsHeader")
  .text("GAME OPTIONS")
  .style("top", "35px")
  .style("width", "200px")
  .style("left", "600px")
  .style("color", "#707070")
  .style("font-family", "Nunito")
  .style("font-weight", "700")
  .style("font-size", "24px")

  d3.select(".gameOptions").append("div")
  .attr("class", "quarantineModeOptions")
  .text("Quarantine Phase")
  .style("top", "165px")
  .style("width", "200px")
  .style("left", "600px")
  .style("color", "#707070")
  .style("font-family", "Nunito")
  .style("font-weight", "300")
  .style("font-size", "22px")

  d3.select(".gameOptions").append("div")
  .attr("class", "turnBasedTrue")
  .text("Turn-based")
  .style("top", "190px")
  .style("width", "200px")
  .style("left", "600px")
  .style("color", "#2692F2")
  .style("font-family", "Nunito")
  .style("font-weight", "500")
  .style("font-size", "18px")
  .style("cursor", "pointer")
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
  .style("top", "190px")
  .style("width", "200px")
  .style("left", "705px")
  .style("color", "#BABABA")
  .style("font-family", "Nunito")
  .style("font-weight", "300")
  .style("font-size", "18px")
  .style("cursor", "pointer")
  .on("click", function() {
    d3.select(".turnBasedTrue").style("color", "#BABABA").style("font-weight", "300")
    d3.select(".realTimeTrue").style("color", "#2692F2").style("font-weight", "500")

    speed = true;

    if (vaxEasyHiScoreRT < 0) d3.select(".easyHi").text("")
    else d3.select(".easyHi").text("(Best: " + vaxEasyHiScoreRT + "%)")

    if (vaxMediumHiScoreRT < 0) d3.select(".mediumHi").text("")
    else d3.select(".mediumHi").text("(Best: " + vaxMediumHiScoreRT + "%)")

    if (vaxHardHiScoreRT < 0) d3.select(".hardHi").text("")
    else d3.select(".hardHi").text("(Best: " + vaxHardHiScoreRT + "%)")
  })

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
