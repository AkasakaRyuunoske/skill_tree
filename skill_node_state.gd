class_name SkillNodeState
extends Resource

enum {
	AVAILABLE,  # All requirements for allocation are met, but node is not yet allocated
	ALLOCATED,  # Node is allocated
	LOCKED,     # One or more conditions for node allocation are not satisfied
	TRANSFORMED # Node representing different stats than initially as outcome of a influence/tatto
}
