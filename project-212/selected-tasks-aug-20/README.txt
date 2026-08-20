3D Design — selected tasks
==========================

Seven tasks, in the order requested:
  308567  309823  310578  310633  309587  308387  308386

Every thumbnail is clickable:

  Model answer  ->  opens the local model HTML in a new tab
  Primitives    ->  opens the local primitives HTML in a new tab
  Assets        ->  plays the assets showcase VIDEO in a modal, in place

The video plays inline rather than downloading. Esc or a click outside
closes it; the filename and an "open in new tab" link sit under the
player if you want the file itself. If a video can't load — almost always
because you're not signed in to the labeling app — the modal says so and
offers a direct link rather than failing silently.

A "zoom" link in each label bar still enlarges the screenshot instead, and
where an asset-based build was also supplied there's a "build" link next
to it (308567, 308387, 308386).

START HERE
----------
Run serve.command (double-click on macOS), then open

    http://localhost:8000

Twelve of the fourteen bundled HTML builds have no local asset files and
would run off the filesystem, but the three asset builds load .glb models
over XHR, which browsers block on file:// pages. Serving the folder makes
everything work the same way. Any static server does:

    python3 -m http.server 8000     # or: npx serve .

What's on screen
  prompt, rubric score per build (model answer / primitives / assets),
  the three screenshots, and the rubric table collapsed by default.

The sidebar is ordered by model-answer rubric score, weakest first, with
each task's score shown on its row. The viewer opens on the weakest one.
j / k walk that order.

Not shown, per request: the review box (rate, reviewer, author, reason),
dev notes, the per-criterion comments, and the design-artifact zip links.
All of that was dropped at extraction — none of it is in the page.

Keyboard: j / k or arrow keys move through the list, Esc closes an image.

BUNDLED BUILDS
--------------
  apps/308567-mimic/         Mimic Vault — A Dungeon of Liars
      model.html  primitives.html  assets.html
  apps/309823-tidal/         Tidal Race — Whirlpool / Cinematic Headlands
      model.html  primitives.html
  apps/310578-titration/     Titration Rig — Afternoon Lab
      model.html  primitives.html
  apps/310633-serpent/       Serpent House — Exhibit 07: Ecdysis
      model.html  primitives.html
  apps/309587-harbour/       HarbourLab — Swell & Breakwater · Phase 01
      model.html  primitives.html
  apps/308387-airplane/      Alpine morning flight sim
      model.html  primitives.html  assets.html
        assets/aircraft.glb  +  uploads/ (control yoke glb, backdrop jpeg)
  apps/308386-armor/         The Vigil — An Armoury in Shadow
      model.html  primitives.html  assets.html
        assets/models/*.glb  +  assets/textures/*.jpg

  Two notes on the asset builds:
    - 308567's assets.html is fully self-contained: its seven dungeon
      models are base64-embedded in window.__MV_MODELS__ inside the 20 MB
      HTML, so the loose assets/models/ folder from your zip is redundant
      and was left out.
    - 308386 is the heavy one: ~38 MB of models on first load, so budget
      15-30 seconds cold. The page has a 40 s failsafe.

  All fourteen builds still pull three.js, Tailwind, GSAP, Google Fonts
  and their HDRIs from CDNs, so they need a network connection.

Videos, screenshots and artifact zips are signed Active Storage URLs on
api.data-labeling.revelo.com — be signed in to the labeling app in the
same browser, or they won't load. Signatures expire in August 2027.
