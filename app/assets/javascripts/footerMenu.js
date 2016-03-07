//= require d3
function initFooter() {

    d3.select("#helpNav").remove()
    d3.select("#newGameNav").remove();

    // make logo & menuBox
    // d3.select("body").append("div")
    //     .attr("class", "gameVaxLogoDiv")
    //     .text("VAX!")
    //     .style("cursor", "pointer")
    //     .on("click", function() {
    //         window.location.href = '/'
    //     })
    //

    d3.select("body").append("div")
        .attr("class", "gameMenuBox")


    d3.select(".gameMenuBox").append("div")
        .attr("class", "gameMenuBoxItem")
        .attr("id", "newGameNav")
        .text("New Game")
        .on("click", function() {
            window.location.href = '/game'
        })
        .on("mouseover", function() {
            d3.select(this).style("color", "#2692F2")
        })
        .on("mouseout", function() {
            d3.select(this).style("color", "white")
        })
}

function initMainFooter() {
}
