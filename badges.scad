use <Sarina-Regular.ttf>;

with_keyring = true;
to_upper = false;
txt = "#Never\n Lucky";
height = 1.2;
color_layers = 3;
base = height-color_layers*0.2;
fontSize = 14;
rendered_txt = to_upper ? strtoupper(txt) : txt;
thumbnail = false;

function strtolower (string) = 
  chr([for(s=string) let(c=ord(s)) c<91 && c>64 ?c+32:c]); 

function strtoupper (string) = 
  chr([for(s=string) let(c=ord(s)) c<123 && c>96 ?c-32:c]); 


color("lightgray") difference() {
    union() {
        linear_extrude(height) fill() offset(5) union() { 
                multiLineSplit(rendered_txt, fontSize);
                if(with_keyring) translate([-3, fontSize+3]) circle(r = 3, $fn = 100);
        };
    };
    if(with_keyring) translate([-3, fontSize+3, height/2]) cylinder(h = height, r = 4, center = true, $fn = 100);
    translate([0, 0, base]) color("purple") linear_extrude(height-base) multiLineSplit(rendered_txt, fontSize);
}
translate([0, 0, base]) color("purple") linear_extrude(height-base) multiLineSplit(rendered_txt, fontSize);



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

