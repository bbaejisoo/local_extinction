/*
*    main.js
*    Mastering Data Visualization with D3.js
*    Project 2 - Gapminder Clone
*/

var margin = { left:80, right:20, top:10, bottom:100 };
var height = 500 - margin.top - margin.bottom,
    width = 800 - margin.left - margin.right;

var g = d3.select("#chart-area")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
        .attr("transform", "translate(" + margin.left +
            ", " + margin.top + ")");

var time = 0;

// Scales
var x = d3.scaleLog()
    .base(10)
    .range([0, width])
    .domain([142, 150000]);
var y = d3.scaleLinear()
    .range([height, 0])
    .domain([0, 90]);
var area = d3.scaleLinear()
    .range([25*Math.PI, 1500*Math.PI])
    .domain([2000, 1400000000]);
var continentColor = d3.scaleOrdinal(d3.schemeCategory20);

// Labels
var xLabel = g.append("text")
    .attr("y", height + 50)
    .attr("x", width / 2)
    .attr("font-size", "20vw")
    .attr("text-anchor", "middle")
    .text("GDP Per Capita ($)");
var yLabel = g.append("text")
    .attr("transform", "rotate(-90)")
    .attr("y", -40)
    .attr("x", -170)
    .attr("font-size", "20vw")
    .attr("text-anchor", "middle")
    .text("Life Expectancy (Years)")
var timeLabel = g.append("text")
    .attr("y", height -10)
    .attr("x", width - 40)
    .attr("font-size", "40vw")
    .attr("opacity", "1")
    .attr("text-anchor", "middle")
    .text("1800");


// X Axis
var xAxisCall = d3.axisBottom(x)
    .tickValues([400, 4000, 40000])
    .tickFormat(d3.format("$"));
g.append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height +")")
    .call(xAxisCall);

// Y Axis
var yAxisCall = d3.axisLeft(y)
    .tickFormat(function(d){ return +d; });
g.append("g")
    .attr("class", "y axis")
    .call(yAxisCall);

d3.json("data/mean.json", function(data){
    //console.log(data);
    // Clean data
    const formattedData = data.map(function(year){
        return year["countries"].map(function(country){
            country.income = +country.income;
            country.life_exp = +country.life_exp;
//            country.population = +country.population
//            console.log(country);
            return country;

        })
    });

    // Run the code every 0.1 second
    d3.interval(function(){
        // At the end of our data, loop back
        time = (time < 214) ? time+1 : 0
        update(formattedData[time]);
    }, 100)

    // First run of the visualization
    update(formattedData[0]);

})

function update(data) {
    // Standard transition time for the visualization
    var t = d3.transition()
        .duration(100);

  //  console.log(data);
    // JOIN new data with old elements.
    var circles = g.selectAll("circle").data(data, function(d){
  //      console.log(d.country);
        //console.log(d.country);
        return d.country;
    });
    //console.log(circles)
  //  console.log(data)
    var texts = g.selectAll(".enter_text").data(data, function(d){
      //console.log(d)
//      console.log(d.country)
      //console.log(d)
      //;console.log(d)
      return d.country;
    });
    //console.log(texts)
    //console.log(texts)
    // EXIT old elements not present in new data.

    // ENTER new elements present in new data.
    circles.enter()
        .append("circle")
        .attr("class", "enter")
        .attr("fill", function(d) { return continentColor(d.continent); })
        .merge(circles)
        .transition(t)
            .attr("cy", function(d){ return y(d.life_exp); })
            .attr("cx", function(d){ return x(d.income) })
            .attr("r", function(d){ return Math.sqrt(area(d.population*25) / Math.PI) });
    texts.enter()
      .append("text")
      .attr("class","enter_text")
      .attr("font-size", "20px")
      .merge(texts)
      .transition(t)
        .attr("x", function(d){

          return x(d.income-125);
        })
        .attr("y", function(d){
          return y(d.life_exp+5);
        })
      .text(function(d,i){
        return ((d.continent));
      });

    // Update the time label
    timeLabel.text(+(time + 1800))
}
