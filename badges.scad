use <Pacifico-Regular.ttf>;
use <Sarina-Regular.ttf>;
use <PermanentMarker-Regular.ttf>;


txt = "mechanical\n  creep";

color("lightgray") difference() {
    union() {
        linear_extrude(1) offset(5) union() { 
            multiLineSplit(txt, 10);
            translate([-3, 10+3]) circle(r = 3);
        };
    };
    translate([-3, 10+3]) cylinder(h = 2, r = 4, center = true);
}
color("purple") linear_extrude(1) multiLineSplit(txt, 10);



module multiLine(lines, size){
  union(){
    for (i = [0 : len(lines)-1])
      translate([0 , -i * (size + 0.5), 0 ])
        text(lines[i], size, font = "Sarina:style=Regular");
  }
}

module multiLineSplit(line, size){
    sep_ix = search(match_value = chr(10),                  // search indices of newline chars
                    string_or_vector = line,
                    num_returns_per_match = 0)[0];          // search returns array of matches!
    
    lines_ix = [ for (i = [0:len(sep_ix)])                  // build slice tuples
        i == 0 && i == len(sep_ix) ? [0,len(line)-1] :      // no matches, return whole line
        i == 0 ? [0,sep_ix[i]-1] :                          // first slice
        i == len(sep_ix) ? [sep_ix[i-1]+1,len(line)-1] :    // last slice
        [sep_ix[i-1]+1,sep_ix[i]-1] ];                      // everything in between

    lines_str = [ for (i = [0:len(lines_ix)-1])             // reconstruct slices as strings
        str(chr([ for (j = [lines_ix[i][0]:lines_ix[i][1]]) ord(line[j]) ])) ];

    multiLine(lines_str, size);
}

