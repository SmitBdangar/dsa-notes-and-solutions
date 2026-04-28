use std::ptr;
struct Node{val:i32,next:*mut Node}
fn push(head:*mut Node,v:i32)->*mut Node{unsafe{let n=Box::into_raw(Box::new(Node{val:v,next:head}));n}}
fn print(mut h:*mut Node){unsafe{while!h.is_null(){print!("{} ",(*h).val);h=(*h).next;}}}
fn reverse(mut h:*mut Node)->*mut Node{unsafe{let mut prev: *mut Node=ptr::null_mut();let mut cur=h;while!cur.is_null(){let nxt=(*cur).next;(*cur).next=prev;prev=cur;cur=nxt;}prev}}
fn main(){let mut head:*mut Node=ptr::null_mut();head=push(head,1);head=push(head,2);head=push(head,3);print(head);println!();head=reverse(head);print(head);}















//Creates a linked list of numbers where each element points to the next, adds values 1 2 3 so the order becomes 3 2 1 by inserting at the front, 
//prints all values in sequence, then reverses the list to make it 1 2 3 by changing the links between elements
