% Task 1: Area and perimeter

% Square
square_area(S, A) :- A is S * S.
square_perimeter(S, P) :- P is 4 * S.

% Rectangle
rectangle_area(L, W, A) :- A is L * W.
rectangle_perimeter(L, W, P) :- P is 2 * (L + W).

% Triangle
triangle_area(B, H, A) :- A is 0.5 * B * H.
triangle_perimeter(S1, S2, S3, P) :- P is S1 + S2 + S3.
