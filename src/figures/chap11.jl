function fig11_1(output::Symbol, font::String, scale::Float64)
  p = TikzPicture(L"""
  \node[anchor=east](h) at(-1.55, 0) {\tt hist};
  \node[draw, fill=mycolor, minimum width=2.5cm, minimum height=2.5cm](hv) at(0,0){};
  \node[anchor=east](o) at (-0.5, 1) {\tt 'o'};
  \node[anchor=west](ov) at (0.5, 1) {\tt 1};
  \draw[-latex] (o)--(ov);
  \node[anchor=east](i) at (-0.5, 0.5) {\tt 'i'};
  \node[anchor=west](iv) at (0.5, 0.5) {\tt 1};
  \draw[-latex] (i)--(iv);
  \node[anchor=east](g) at (-0.5, 0) {\tt 'g'};
  \node[anchor=west](gv) at (0.5, 0) {\tt 1};
  \draw[-latex] (g)--(gv);
  \node[anchor=east](p) at (-0.5, -0.5) {\tt 'p'};
  \node[anchor=west](pv) at (0.5, -0.5) {\tt 2};
  \draw[-latex] (p)--(pv);
  \node[anchor=east](a) at (-0.5, -1) {\tt 'a'};
  \node[anchor=west](av) at (0.5, -1) {\tt 3};
  \draw[-latex] (a)--(av);
  \node[anchor=east](i) at(3.8, 0) {\tt inverso};
  \node[draw, fill=mycolor, minimum width=1cm, minimum height=3.5cm](iv) at(4.5,-0.5){};
  \node(n1) at(4.5,0.5){\tt 1};
  \node(n2) at(4.5,-1.00){\tt 2};
  \node(n3) at(4.5,-2.00){\tt 3};
  \node(a1) [draw, fill=mycolor, minimum width=2.5cm, minimum height=2cm] at(7,0.5){};
  \node(a2) [draw, fill=mycolor, minimum width=2.5cm, minimum height=0.5cm] at(7,-1.00){};
  \node(a3) [draw, fill=mycolor, minimum width=2.5cm, minimum height=0.5cm] at(7,-2.00){};
  \draw[-latex](n1)--(a1);
  \draw[-latex](n2)--(a2);
  \draw[-latex](n3)--(a3);
  \node[anchor=east](t1) at(6.25, 1.00){\tt 1};
  \node[anchor=east](t2) at(6.25, 0.50){\tt 2};
  \node[anchor=east](t3) at(6.25, 0.0){\tt 3};
  \node[anchor=east](tt1) at(6.25, -1.00){\tt 1};
  \node[anchor=east](ttt1) at(6.25, -2.00){\tt 1};
  \node[anchor=west](v1) at(7.25, 1.0){\tt 'o'};
  \node[anchor=west](v2) at(7.25, 0.50){\tt 'i'};
  \node[anchor=west](v3) at(7.25, 0.0){\tt 'g'};
  \node[anchor=west](vv1) at(7.25, -1.00){\tt 'p'};
  \node[anchor=west](vvv1) at(7.25, -2.00){\tt 'a'};
  \draw[-latex](t1)--(v1);
  \draw[-latex](t2)--(v2);
  \draw[-latex](t3)--(v3);
  \draw[-latex](tt1)--(vv1);
  \draw[-latex](ttt1)--(vvv1);
  """; options= "scale=$scale, transform shape", preamble="""
  \\usepackage{cancel}
  \\usepackage{fontspec}
  \\setmonofont[Scale=MatchLowercase]{$font}
  \\usetikzlibrary{arrows.meta}
  \\definecolor{mycolor}{RGB}{247,247,248}""")
  output == :pdf ? save(PDF("fig111"), p) : save(SVG("fig111"), p)
end

function fig11_2(output::Symbol, font::String, scale::Float64)
  p = TikzPicture(L"""
  \node(fib4) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm]{};
  \node at (0,0.25){\tt fibonacci};
  \node(f4n) at (-0.5, -0.25){\tt n};
  \node(f4) at (0.5, -0.25){\tt 4};
  \draw[-latex] (f4n)--(f4);
  \node(fib3) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(-2.75,-1.5){};
  \node at (-2.75,-1.25){\tt fibonacci};
  \node(f3n) at (-3.25, -1.75){\tt n};
  \node(f3) at (-2.25, -1.75){\tt 3};
  \draw[-latex] (f3n)--(f3);
  \node(fib2) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(2.75,-1.5){};
  \node at (2.75,-1.25){\tt fibonacci};
  \node(f2n) at (2.25, -1.75){\tt n};
  \node(f2) at (3.25, -1.75){\tt 2};
  \draw[-latex] (f2n)--(f2);
  \node(fib22) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(-4,-3){};
  \node at (-4,-2.75){\tt fibonacci};
  \node(f22n) at (-4.5, -3.25){\tt n};
  \node(f22) at (-3.5, -3.25){\tt 2};
  \draw[-latex] (f22n)--(f22);
  \node(fib1) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(-1.5,-3){};
  \node at (-1.5,-2.75){\tt fibonacci};
  \node(f1n) at (-2, -3.25){\tt n};
  \node(f1) at (-1, -3.25){\tt 1};
  \draw[-latex] (f1n)--(f1);
  \node(fib11) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(1.5,-3){};
  \node at (1.5,-2.75){\tt fibonacci};
  \node(f11n) at (1, -3.25){\tt n};
  \node(f11) at (2, -3.25){\tt 1};
  \draw[-latex] (f11n)--(f11);
  \node(fib0) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(4,-3){};
  \node at (4,-2.75){\tt fibonacci};
  \node(f0n) at (3.5, -3.25){\tt n};
  \node(f0) at (4.5, -3.25){\tt 0};
  \draw[-latex] (f0n)--(f0);
  \node(fib111) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(-5.25,-4.5){};
  \node at (-5.25,-4.25){\tt fibonacci};
  \node(f111n) at (-5.75, -4.75){\tt n};
  \node(f111) at (-4.75, -4.75){\tt 1};
  \draw[-latex] (f111n)--(f111);
  \node(fib00) [draw, fill=mycolor, minimum width=2cm, minimum height=1cm] at(-2.75,-4.5){};
  \node at (-2.75,-4.25){\tt fibonacci};
  \node(f00n) at (-3.25, -4.75){\tt n};
  \node(f00) at (-2.25, -4.75){\tt 0};
  \draw[-latex] (f00n)--(f00);
  \draw[-latex] (fib4)--(fib3);
  \draw[-latex] (fib4)--(fib2);
  \draw[-latex] (fib3)--(fib22);
  \draw[-latex] (fib3)--(fib1);
  \draw[-latex] (fib2)--(fib11);
  \draw[-latex] (fib2)--(fib0);
  \draw[-latex] (fib22)--(fib111);
  \draw[-latex] (fib22)--(fib00);
  """; options= "scale=$scale, transform shape", preamble="""
  \\usepackage{cancel}
  \\usepackage{fontspec}
  \\setmonofont[Scale=MatchLowercase]{$font}
  \\usetikzlibrary{arrows.meta}
  \\definecolor{mycolor}{RGB}{247,247,248}""")
  output == :pdf ? save(PDF("fig112"), p) : save(SVG("fig112"), p)
end
