3D Design — selected tasks (21–27 Aug)
======================================

Open index.html in any browser. Self-contained, no server, no network
libraries — works straight off the filesystem.

Seven tasks, in the order requested:
  315713  317140  316813  315929  315134  315451  314706

315713 came from the perfect export, the other six from the approved
export. Matching source lines are in source/selected_tasks.jsonl, same
order.

On screen
  prompt
  rubric score per build (model answer / primitives / assets)
  the three screenshots side by side
  a primitives-to-assets wipe comparator
  the rubric table, collapsed by default

The comparator
  Below the screenshots. Primitives fills the left of the bar, assets the
  right. Drag anywhere on the image to move the split — press and drag,
  the bar follows your pointer. Double-click resets it to the middle.
  Works with mouse, trackpad, pen and touch.

Not shown, per request: review rate, first-pass rate, reviewer, author,
reason, the design-artifact box and dev notes. None of it is in the page
— it was dropped at extraction, not hidden with CSS.

Keyboard
  j / k or up / down   move through the task list
  click a screenshot   open it enlarged
  left / right         while enlarged, step through that task's three
                       screenshots (model -> primitives -> assets)
  Esc                  close

Screenshots are signed Active Storage URLs on
api.data-labeling.revelo.com — be signed in to the labeling app in the
same browser, or they fall back to a placeholder. The signatures expire.
