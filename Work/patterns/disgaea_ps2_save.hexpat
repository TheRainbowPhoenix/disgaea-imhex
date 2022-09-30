
#pragma endian little

#include <std/core.pat>
#include <std/mem.pat>

// _val are read only

struct NameStr {
    char16 name[];
};

struct CharacterStats {
	u32 maxHP;
	u32 maxSP;
	u32 Attack;
	u32 Defense;
	u32 Intelligence;
	u32 Speed;
	u32 Hit;
	u32 Resistance;
};

struct StatusResist {
	u16 Poison;
	u16 Sleep;
	u16 Deprave;
	u16 Forget;
	u16 Paralyze;
};

struct LearnedSkills {
    u16 exp[96];
    u16 skill[96];
    u8 level[96];
};

NameStr SaveName @ 0x0D;

s64 mainCharaExp @ 0xBA8;
u16 EquipedWeapon @ 0xBB0;

u16 equipedAccessory1 @ 0xC78;
u16 equipedAccessory2 @ 0xD40;
u16 equipedAccessory3 @ 0xE08;

NameStr mainCharaName @ 0xED0;
NameStr mainCharaClass @ 0xEF2;

StatusResist mainCharaResist @ 0xF36;

u16 mainCharaSkillsExp[97] @ 0xFB0;
u16 mainCharaSkills[97] @ 0x1130;
u16 mainCharaSkillsLevel[97] @ 0x11F0;

u32 mainCharaCurrentHP @ 0x1250;
u32 mainCharaCurrentSP @ 0x1254;

CharacterStats _mainCharaStatsCalculed @ 0x1258;
CharacterStats mainCharaStatsActual @ 0x1278;

u32 mainCharaStatsMana @ 0x12B8;

CharacterStats baseCharaStats @ 0x12E4;

// Character Offset = Base_offset + 0x07C8 * (number - 1)
// Base_offset = 0x12B8
// Chara 5 = 0x12B8 + 0x07C8 * (5-1) = 0x31D8

u32 storageItems @ 0x000472C8;
// First 16 are bag, 256 other are warehouse
