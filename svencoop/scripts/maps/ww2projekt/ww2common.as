#include "ShellEject"
#include "british/weapon_enfield"
#include "british/weapon_sten"
#include "british/weapon_webley"
#include "british/weapon_enfieldscoped"
#include "british/weapon_bren"
#include "british/weapon_lewis"
#include "british/weapon_piat"
#include "british/weapon_mills"
#include "british/weapon_fairbairn"
#include "axis/weapon_mp40"
#include "axis/weapon_mp44"
#include "axis/weapon_kar98k"
#include "axis/weapon_g43"
#include "axis/weapon_fg42"
#include "axis/weapon_luger"
#include "axis/weapon_c96"
#include "axis/weapon_kar98kscoped"
#include "axis/weapon_mg42"
#include "axis/weapon_panzerschreck"
#include "axis/weapon_mg34"
#include "axis/weapon_stick"
#include "axis/weapon_spade"
#include "allies/weapon_garand"
#include "allies/weapon_m1911"
#include "allies/weapon_m3greasegun"
#include "allies/weapon_thompson"
#include "allies/weapon_m1carbine"
#include "allies/weapon_springfield"
#include "allies/weapon_bar"
#include "allies/weapon_30cal"
#include "allies/weapon_bazooka"
#include "allies/weapon_grenade"
#include "allies/weapon_amerk"
#include "soviet/weapon_ppsh41"
#include "soviet/weapon_nagantscoped"
#include "soviet/weapon_dp28"
#include "soviet/weapon_tokarev"
#include "soviet/weapon_nagant"
#include "soviet/weapon_svt40"
#include "soviet/weapon_m1895"
#include "soviet/weapon_rgd33"
#include "soviet/weapon_maxim"
#include "soviet/weapon_panzerfaust"
#include "BuyMenu"

BuyMenu::BuyMenu g_BuyMenu;

void RegisterSoviet()
{
	g_BuyMenu.RemoveItems();
	RegisterPPSH41();
	RegisterNAGANTS();
	RegisterDP28();
	RegisterTOKAREV();
	RegisterNAGANT();
	RegisterSVT40();
	RegisterM1895();
	RegisterRGD33();
	RegisterMAXIM();
	RegisterPANZERF();
}

void RegisterBritish()
{
	g_BuyMenu.RemoveItems();
	RegisterENFIELD();
	RegisterSTEN();
	RegisterWEBLEY();
	RegisterENFIELDS();
	RegisterBREN();
	RegisterMILLS();
	RegisterPIAT();
	RegisterFAIRB();
	RegisterLEWIS();
}

void RegisterGerman()
{
	g_BuyMenu.RemoveItems();
	RegisterMP40();
	RegisterMP44();
	RegisterK98K();
	RegisterG43();
	RegisterFG42();
	RegisterLUGER();
	RegisterSCOPED98K();
	RegisterMG42();
	RegisterPANZERS();
	RegisterMG34();
	RegisterSTICK();
	RegisterSPADE();
	RegisterC96();
}

void RegisterAmerican()
{
	g_BuyMenu.RemoveItems();
	RegisterGARAND();
	RegisterM1911();
	RegisterM3GREASEGUN();
	RegisterTHOMPSON();
	RegisterM1CARB();
	RegisterSPRINGF();
	RegisterBAR();
	RegisterTHIRTYCAL();
	RegisterBAZOOKA();
	RegisterMK2GRENADE();
	RegisterBAYO();
}

void RegisterWorldWar2()
{
	g_BuyMenu.RemoveItems();
	RegisterENFIELD();
	RegisterSTEN();
	RegisterWEBLEY();
	RegisterENFIELDS();
	RegisterBREN();
	RegisterPIAT();
	RegisterMILLS();
	RegisterFAIRB();
	RegisterMP40();
	RegisterMP44();
	RegisterK98K();
	RegisterG43();
	RegisterFG42();
	RegisterLUGER();
	RegisterSCOPED98K();
	RegisterMG42();
	RegisterPANZERS();
	RegisterMG34();
	RegisterSTICK();
	RegisterSPADE();
	RegisterGARAND();
	RegisterM1911();
	RegisterM3GREASEGUN();
	RegisterTHOMPSON();
	RegisterM1CARB();
	RegisterSPRINGF();
	RegisterBAR();
	RegisterTHIRTYCAL();
	RegisterBAZOOKA();
	RegisterMK2GRENADE();
	RegisterBAYO();
	RegisterC96();
	RegisterLEWIS();
	RegisterPPSH41();
	RegisterNAGANTS();
	RegisterDP28();
	RegisterTOKAREV();
	RegisterNAGANT();
	RegisterSVT40();
	RegisterM1895();
	RegisterRGD33();
	RegisterMAXIM();
	RegisterPANZERF();
	//German
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "9mm", "ammo_9mmAR", 10000, "ammo", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "556", "ammo_556", 20000, "ammo", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "357", "ammo_357", 30000, "ammo", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "rockets", "ammo_rpgclip", 40000, "ammo", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Stielhandgranate", GetSTICKName(), 50000, "equipment", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Luger P08", GetLUGERName(), 50000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Mauser C96", GetC96Name(), 110000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "German Shovel", GetSPADEName(), 50000, "secondary", "melee" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "MP40", GetMP40Name(), 150000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "MP44", GetMP44Name(), 250000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "FG42", GetFG42Name(), 350000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Gewehr 43", GetG43Name(), 400000, "primary", "semi_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Karabiner 98k w/ Bayonet", GetK98KName(), 500000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "MG34", GetMG34Name(), 700000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Karabiner 98k w/ Scope", GetSCOPED98KName(), 750000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Panzerschreck", GetPANZERSName(), 900000, "primary", "launcher" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "MG42", GetMG42Name(), 1000000, "primary", "lmg" ) );
	//USA
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Mk.2 Grenade", GetMK2GRENADEName(), 50000, "equipment", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Colt M1911", GetM1911Name(), 70000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "M4 Bayonet", GetBAYOName(), 50000, "secondary", "melee" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Thompson M1A1", GetTHOMPSONName(), 150000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Thompson M3 Grease Gun", GetM3GREASEGUNName(), 250000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "BAR", GetBARName(), 350000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "M1 Carbine", GetM1CARBName(), 450000, "primary", "semi_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "M1 Garand w/ Melee", GetGARANDName(), 550000, "primary", "semi_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Springfield", GetSPRINGFName(), 750000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "M1A1 Bazooka", GetBAZOOKAName(), 900000, "primary", "launcher" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "M1919a4 .30 Cal", GetTHIRTYCALName(), 1000000, "primary", "lmg" ) );
	//British/Commonwealth
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Mills Bomb", GetMILLSName(), 50000, "equipment", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Webley Revolver", GetWEBLEYName(), 100000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Fairbairn-Sykes", GetFAIRBName(), 50000, "secondary", "melee" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Sten MK2", GetSTENName(), 150000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Lee Enfield w/ Bayonet", GetENFIELDName(), 600000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Bren LMG", GetBRENName(), 650000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Lewis LMG", GetLEWISName(), 700000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Lee Enfield w/ Scope", GetENFIELDSName(), 800000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "PIAT", GetPIATName(), 900000, "primary", "launcher" ) );
	//Soviet
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "RGD-33 Grenade", GetRGD33Name(), 50000, "equipment", "" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Tokarev TT-33 Pistol", GetTOKAREVName(), 50000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Nagant M1895 Revolver", GetM1895Name(), 100000, "secondary", "handgun" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "PPSh-41", GetPPSH41Name(), 200000, "primary", "smg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "DP-28", GetDP28Name(), 350000, "primary", "lmg" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "SVT-40", GetSVT40Name(), 400000, "primary", "semi_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Mosin-Nagant w/ Bayonet", GetNAGANTName(), 500000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Mosin-Nagant w/ Scope", GetNAGANTSName(), 750000, "primary", "bolt_rifle" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Panzerfaust", GetPANZERFName(), 500000, "primary", "launcher" ) );
	g_BuyMenu.AddItem( BuyMenu::BuyableItem( "Maxim M1910", GetMAXIMName(), 1000000, "primary", "lmg" ) );
	g_Hooks.RegisterHook( Hooks::Player::ClientSay, @ClientSay );
}

CClientCommand buy( "buy", "Opens the BuyMenu", @WW2_Buy );

void WW2_Buy( const CCommand@ args )
{
	CBasePlayer@ pPlayer = g_ConCommandSystem.GetCurrentPlayer();
	if( args.ArgC() == 1 )
	{
		g_BuyMenu.Show( pPlayer );
	}
}

HookReturnCode ClientSay( SayParameters@ pParams )
{
	CBasePlayer@ pPlayer = pParams.GetPlayer();

	const CCommand@ args = pParams.GetArguments();
	
	if( args.ArgC() == 1 && args.Arg(0) == "buy" || args.Arg(0) == "/buy" )
	{
		pParams.ShouldHide = true;
		g_BuyMenu.Show( pPlayer );
	}
	else if( args.ArgC() == 2 && args.Arg(0) == "buy" || args.Arg(0) == "/buy" )
	{
		pParams.ShouldHide = true;
		bool bItemFound = false;
		string szItemName;
		uint uiCost;

		if( g_BuyMenu.m_Items.length() > 0 )
		{
			for( uint i = 0; i < g_BuyMenu.m_Items.length(); i++ )
			{
				if( "weapon_" + args.Arg(1) == g_BuyMenu.m_Items[i].EntityName || "ammo_" + args.Arg(1) == g_BuyMenu.m_Items[i].EntityName )
				{
					bItemFound = true;
					szItemName = g_BuyMenu.m_Items[i].EntityName;
					uiCost = g_BuyMenu.m_Items[i].Cost;
					break;
				}
				else
					bItemFound = false;
			}

			if( bItemFound )
			{
				if( pPlayer.pev.frags <= 0 )
				{
				g_PlayerFuncs.ClientPrint( pPlayer, HUD_PRINTTALK, "Not enough money(frags) - Cost: " + uiCost + "\n" );
				}
				else 
					if( uint(pPlayer.pev.frags) >= uiCost )
					{
						pPlayer.pev.frags -= uiCost;
						pPlayer.GiveNamedItem( szItemName );
					}
					else
					g_PlayerFuncs.ClientPrint( pPlayer, HUD_PRINTTALK, "Not enough money(frags) - Cost: " + uiCost + "\n" );
			}
			else
				g_PlayerFuncs.ClientPrint( pPlayer, HUD_PRINTTALK, "Invalid item: " + args.Arg(1) + "\n" );
		}
	}
	return HOOK_CONTINUE;
}

/*
weapon_mp40
weapon_kar98k
weapon_mp44
weapon_fg42
weapon_g43
weapon_luger
weapon_c96
weapon_kar98kscoped
weapon_mg42
weapon_panzerschreck
weapon_stick
weapon_mg34
weapon_spade
weapon_bar
weapon_bazooka
weapon_thompson
weapon_m1911
weapon_grenade
weapon_m1carbine
weapon_garand
weapon_springfield
weapon_30cal
weapon_m3greasegun
weapon_amerk
weapon_ppsh41
weapon_panzerfaust
weapon_nagant
weapon_nagantscoped
weapon_maxim
weapon_dp28
weapon_svt40
weapon_tokarev
weapon_m1895
weapon_rgd33
weapon_enfield
weapon_sten
weapon_webley
weapon_enfieldscoped
weapon_lewis
weapon_bren
weapon_piat
weapon_mills
weapon_fairbairn
*/