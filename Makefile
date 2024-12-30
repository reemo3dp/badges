OPENSCAD ?= openscad

OPENSCAD_ARGS = --backend Manifold \
	--enable lazy-union \
	--render \
	--colorscheme DeepOcean \
	--camera 0,0,0,0,0,0,0 \
	--viewall \
	--autocenter

.PHONY: all clean

clean:
	rm -rf stls/

all: \
	stls/keyring_nobushill.3mf \
	stls/keyring_mechanical_creep.3mf \
	stls/keyring_constable.3mf \
	stls/keyring_bambuzzle.3mf \
	stls/keyring_resident_seagull.3mf \
	stls/keyring_sock_enthusiast.3mf \
	stls/keyring_dorkus_maximus.3mf \
	stls/keyring_dorkus_minimus.3mf \
	stls/keyring_never_lucky.3mf \
	stls/keyring_dork_supreme.3mf \
	stls/keyring_ingepakte_schildpad.3mf \
	stls/badge_nobushill.3mf \
	stls/badge_mechanical_creep.3mf \
	stls/badge_constable.3mf \
	stls/badge_bambuzzle.3mf \
	stls/badge_resident_seagull.3mf \
	stls/badge_sock_enthusiast.3mf \
	stls/badge_dorkus_maximus.3mf \
	stls/badge_dorkus_minimus.3mf \
	stls/badge_never_lucky.3mf \
	stls/badge_dork_supreme.3mf \
	stls/badge_ingepakte_schildpad.3mf


stls/badge_never_lucky.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="#Never\n Lucky"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_ingepakte_schildpad.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="ingepakte\n schildpad"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_dorkus_minimus.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="dorkus\n  minimus"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_dork_supreme.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="Dork\n  Supreme"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_dorkus_maximus.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="dorkus\n  maximus"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_mechanical_creep.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="mechanical\n  creep"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_resident_seagull.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="resident\n  seagull"' \
		-D 'with_keyring=false' \
		$< 

stls/badge_sock_enthusiast.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="sock\nenthusiast"' \
		-D 'with_keyring=false' \
		$< 

stls/keyring_ingepakte_schildpad.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="ingepakte\n schildpad"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_never_lucky.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="#Never\n Lucky"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_dorkus_minimus.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="dorkus\n  minimus"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_dork_supreme.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="Dork\n  Supreme"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_dorkus_maximus.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="dorkus\n  maximus"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_mechanical_creep.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="mechanical\n  creep"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_resident_seagull.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="resident\n  seagull"' \
		-D 'with_keyring=true' \
		$< 

stls/keyring_sock_enthusiast.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="sock\nenthusiast"' \
		-D 'with_keyring=true' \
		$< 





stls/keyring_%.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="$*"' \
		-D 'with_keyring=true' \
		$< 

stls/badge_%.3mf: badges.scad
	@mkdir ./stls/ 2>/dev/null || true
	$(OPENSCAD) -o $@ -o $@.png $(OPENSCAD_ARGS) \
		-D 'txt="$*"' \
		-D 'with_keyring=false' \
		$< 
