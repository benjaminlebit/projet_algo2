package Objets is

type Point is record
X : Float;
Y : Float;
end record;

type Segment is record
P1 : Point;
P2 : Point;
end record;

type point_seg is record
	p: Point;
	seg1, seg2: segment;
end record;

type tab_point_seg is array (integer range <>) of point_seg;

type seg_ptr_ele;
type list_seg is access seg_ptr_ele;
type seg_ptr_ele is record
	seg: segment;
	suiv: list_seg;
end record;

procedure deja_utilise(s: segment; liste: in out list_seg; b: out boolean; suppr: in boolean); 

procedure sort_point_seg(t: in out tab_point_seg);

function "<=" (a,b: segment) return boolean;

function "=" (a,b: segment) return boolean;

procedure commencant(seg: segment; p: point; segments_parcourus: in out list_seg; commence: out boolean);

procedure terminant(seg: segment; p: point; segments_parcourus: in out list_seg; termine: out boolean);

end Objets;
