/* 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠉⠛⠶⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⢰⠞⠛⢷⠀⠈⠙⠳⠦⣄⣀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠘⠒⠒⠋⠀⣠⣤⡀⠀⠀⠉⠛⢶⣤⣀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠋⢀⡴⠖⠶⢦⠀⠀⠀⢧⣬⠇⣀⣠⠴⠞⠋⠁⡏
⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠀⠀⠘⠧⣤⣀⡼⠀⢀⣀⡤⠶⢛⣩⣤⣀⠀⢠⡞⠋
⠀⠀⠀⠀⠀⠀⣠⠞⣁⣀⠀⠀⠀⠀⢀⣠⡴⠖⠋⠁⠀⠀⣿⠁⠀⣹⠀⠈⢷⡄
⠀⠀⠀⠀⣠⠞⠁⠀⠷⠿⣀⣤⠴⠚⠉⠁⠀⠀⠀⠀⠀⠀⠈⠓⠒⠃⠀⠀⠀⡇
⠀⠀⣠⠞⣁⣠⡤⠶⠚⠛⠉⠀⠀⠀⣀⡀⠀⠀⠀⠀⢀⡤⠶⠶⠦⣄⠀⠀⠀⡇
⠀⡾⠛⠋⢉⣤⢤⣀⠀⠀⠀⠀⣰⠞⠉⠙⠳⡄⠀⠀⡟⠀⠀⠀⠀⢸⡆⠀⠀⡇
⠀⡇⠀⢰⡏⠀⠀⢹⡆⠀⠀⠀⡇⠀⠀⠀⠀⣿⠀⠀⠳⣄⡀⠀⢀⣸⠇⠀⠀⡇
⠀⡇⠀⠀⢷⣤⣤⠞⠁⠀⠀⠀⢷⣀⣀⣠⡴⠃⠀⠀⠀⠈⠉⠉⠉⠁⣀⣠⠴⠇
⠀⠻⣆⠀⠀⠀⠀⢀⣀⣤⣀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⢀⣠⡤⠖⠛⠉⠀⠀⠀
⠀⠀⡿⠀⠀⠀⢰⡏⠀⠀⢹⡆⠀⠀⠀⠀⠀⣀⣤⠶⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀
⢰⠞⠁⠀⠀⠀⠀⢷⣄⣤⠞⠁⣀⣠⠴⠚⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⡆⠀⠀⠀⠀⠀⠀⣀⡤⠖⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⡇⠀⢀⣠⡴⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


 __  __ _     _             _____ _              _     _       
 |  \/  (_)   | |           / ____| |            | |   | |      
 | \  / |_ ___| |_ ___ _ __| |    | |__   ___  __| | __| | __ _ 
 | |\/| | / __| __/ _ \ '__| |    | '_ \ / _ \/ _` |/ _` |/ _` |
 | |  | | \__ \ ||  __/ |  | |____| | | |  __/ (_| | (_| | (_| |
 |_|  |_|_|___/\__\___|_|   \_____|_| |_|\___|\__,_|\__,_|\__,_|
                                                                

*/

module MisterChedda.NitroBoost
import MisterChedda.NitroBoost.*

enum VehicleTypePreset {
  BaseDefault = 0, // Fallback for unknown or custom vehicles
  // Sport / Hypercars
  Caliburn = 1,
  Porsche911 = 2,
  Aerondight = 3,
  QuadraTurboR = 4, // Specific name for clarity
  HerreraRiptide = 5,
  QuadraSportR7 = 6,
  HerreraOutlaw = 7,
  QuadraType66 = 8, // Base Type 66
  MizutaniShion = 9, // Base Shion
  // "Heavy" Sport / Muscle
  VillefortDeleon = 10,
  VillefortAlvarado = 11,
  // Standard
  VillefortCortes = 12,
  ArcherHella = 13,
  MakigaiMaimai = 14,
  // Nomad Versions (Specific checks needed first)
  ShionNomad = 15,
  GalenaNomad = 16,
  Type66Nomad = 17,
  MackinawNomad = 18,
  QuartzNomad = 19,
  ColbyPickupNomad = 20,
  // Bikes
  Sportbike1 = 21,
  Sportbike2 = 22,
  Sportbike3 = 23,
}

public class NitroPresetHelper {

  // --- Get Type Preset based on TweakDB ID --- //
  private static func GetVehicleTypePreset(vehicleTweakID: TweakDBID) -> VehicleTypePreset {
    let vehicleName = TDBID.ToStringDEBUG(vehicleTweakID);
    // FTLog(s"NitroPresetHelper: Determining type preset for: \(vehicleName)");

    // Check specific Nomad variants FIRST to avoid matching base models
    if StrContains(vehicleName, "shion_nomad")       { /* FTLog("NitroPresetHelper: Type = ShionNomad"); */ return VehicleTypePreset.ShionNomad; }
    if StrContains(vehicleName, "galena_nomad")      { /* FTLog("NitroPresetHelper: Type = GalenaNomad"); */ return VehicleTypePreset.GalenaNomad; }
    if StrContains(vehicleName, "type66_nomad")      { /* FTLog("NitroPresetHelper: Type = Type66Nomad"); */ return VehicleTypePreset.Type66Nomad; }
    if StrContains(vehicleName, "mackinaw_nomad") || StrContains(vehicleName, "mackinaw_02") || StrContains(vehicleName, "mackinaw_ncu")   { /* FTLog("NitroPresetHelper: Type = MackinawNomad"); */ return VehicleTypePreset.MackinawNomad; }
    if StrContains(vehicleName, "quartz_nomad")      { /* FTLog("NitroPresetHelper: Type = QuartzNomad"); */ return VehicleTypePreset.QuartzNomad; }
    if StrContains(vehicleName, "colby_pickup_nomad") { /* FTLog("NitroPresetHelper: Type = ColbyPickupNomad"); */ return VehicleTypePreset.ColbyPickupNomad; }

    // Check base models
    if StrContains(vehicleName, "rayfield_caliburn")   { /* FTLog("NitroPresetHelper: Type = Caliburn"); */ return VehicleTypePreset.Caliburn; }
    if StrContains(vehicleName, "porsche_911turbo")    { /* FTLog("NitroPresetHelper: Type = Porsche911"); */ return VehicleTypePreset.Porsche911; }
    if StrContains(vehicleName, "rayfield_aerondight") { /* FTLog("NitroPresetHelper: Type = Aerondight"); */ return VehicleTypePreset.Aerondight; }
    if StrContains(vehicleName, "quadra_turbo")        { /* FTLog("NitroPresetHelper: Type = QuadraTurboR"); */ return VehicleTypePreset.QuadraTurboR; } // Assumes Turbo R
    if StrContains(vehicleName, "herrera_riptide")     { /* FTLog("NitroPresetHelper: Type = HerreraRiptide"); */ return VehicleTypePreset.HerreraRiptide; }
    if StrContains(vehicleName, "quadra_sport_r7")     { /* FTLog("NitroPresetHelper: Type = QuadraSportR7"); */ return VehicleTypePreset.QuadraSportR7; }
    if StrContains(vehicleName, "herrera_outlaw")      { /* FTLog("NitroPresetHelper: Type = HerreraOutlaw"); */ return VehicleTypePreset.HerreraOutlaw; }
    if StrContains(vehicleName, "quadra_type66")       { /* FTLog("NitroPresetHelper: Type = QuadraType66"); */ return VehicleTypePreset.QuadraType66; } // Base Type 66
    if StrContains(vehicleName, "mizutani_shion")      { /* FTLog("NitroPresetHelper: Type = MizutaniShion"); */ return VehicleTypePreset.MizutaniShion; } // Base Shion
    if StrContains(vehicleName, "villefort_deleon")    { /* FTLog("NitroPresetHelper: Type = VillefortDeleon"); */ return VehicleTypePreset.VillefortDeleon; }
    if StrContains(vehicleName, "villefort_alvarado")  { /* FTLog("NitroPresetHelper: Type = VillefortAlvarado"); */ return VehicleTypePreset.VillefortAlvarado; }
    if StrContains(vehicleName, "villefort_cortes")    { /* FTLog("NitroPresetHelper: Type = VillefortCortes"); */ return VehicleTypePreset.VillefortCortes; }
    if StrContains(vehicleName, "archer_hella")        { /* FTLog("NitroPresetHelper: Type = ArcherHella"); */ return VehicleTypePreset.ArcherHella; }
    if StrContains(vehicleName, "makigai_maimai")      { /* FTLog("NitroPresetHelper: Type = MakigaiMaimai"); */ return VehicleTypePreset.MakigaiMaimai; }

    // Bikes
    if StrContains(vehicleName, "sportbike1") { /* FTLog("NitroPresetHelper: Type = Sportbike1"); */ return VehicleTypePreset.Sportbike1; }
    if StrContains(vehicleName, "sportbike2") { /* FTLog("NitroPresetHelper: Type = Sportbike2"); */ return VehicleTypePreset.Sportbike2; }
    if StrContains(vehicleName, "sportbike3") { /* FTLog("NitroPresetHelper: Type = Sportbike3"); */ return VehicleTypePreset.Sportbike3; }
    /* FTLog("NitroPresetHelper: No specific type matched. Using BaseDefault."); */
    return VehicleTypePreset.BaseDefault; // Fallback for unknown/custom vehicles
  }

  // --- Get baseline parameters for a given type preset --- //
  private static func GetPresetParams(typePreset: VehicleTypePreset) -> VehicleNitroParams {
    let params: VehicleNitroParams = VehicleNitroParams.CreateDefault(); // Start with base defaults
    /* FTLog(s"NitroPresetHelper: Getting base params for type preset: \(EnumInt(typePreset))"); */

    // Modify params based on the type preset
    switch typePreset {
      // --- Define baseline stats for each type --- //
      case VehicleTypePreset.Caliburn:
        params.NITRO_BASE_FORCE = 290000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 850.0;
        params.NITRO_FUEL_CAPACITY = 6.5;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.3;
        params.NITRO_FUEL_REGENERATION_RATE = 0.35;
        params.NITRO_BURNOUT_ENABLED = true; // Caliburn gets burnout
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.45;
        break;
      case VehicleTypePreset.Porsche911:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 200.0;
        params.NITRO_FUEL_CAPACITY = 4.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.3;
        params.NITRO_FUEL_REGENERATION_RATE = 0.3;
        params.NITRO_BURNOUT_ENABLED = true; // Caliburn gets burnout
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.55;
        break;
      case VehicleTypePreset.Aerondight:
        params.NITRO_BASE_FORCE = 220000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 700.0;
        params.NITRO_FUEL_CAPACITY = 6.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.2;
        params.NITRO_FUEL_REGENERATION_RATE = 0.5;
        params.NITRO_BURNOUT_ENABLED = true; // Aerondight gets burnout
        params.NITRO_BURNOUT_THRESHOLD = 0.85;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;
        break;
      case VehicleTypePreset.QuadraType66: // Example for base Type 66
        params.NITRO_BASE_FORCE = 110000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 400.0;
        params.NITRO_FUEL_CAPACITY = 4.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
        params.NITRO_FUEL_REGENERATION_RATE = 0.4;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;
        break;
      case VehicleTypePreset.MakigaiMaimai: // Example for Maimai
        params.NITRO_BASE_FORCE = 50000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 200.0; // High multiplier for fun
        params.NITRO_FUEL_CAPACITY = 2.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.5;
        params.NITRO_BURNOUT_ENABLED = false;
        break;
      case VehicleTypePreset.Type66Nomad: // Example for Nomad Type 66
        params.NITRO_BASE_FORCE = 171000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 500.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.2;
        params.NITRO_FUEL_REGENERATION_RATE = 0.3;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.6;
        break;
    case VehicleTypePreset.MackinawNomad:
        params.NITRO_BASE_FORCE = 160000.0; // Slightly more force?
        params.NITRO_GLOBAL_MULTIPLIER = 400.0;
        params.NITRO_FUEL_CAPACITY = 6.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.5;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.5;
        break;
    case VehicleTypePreset.QuartzNomad:
        params.NITRO_BASE_FORCE = 95000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 350.0;
        params.NITRO_FUEL_CAPACITY = 4.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
        params.NITRO_FUEL_REGENERATION_RATE = 0.35;
        params.NITRO_BURNOUT_ENABLED = false;
        break;
    case VehicleTypePreset.ColbyPickupNomad:
        params.NITRO_BASE_FORCE = 120000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 450.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = false;
        break;
    case VehicleTypePreset.ShionNomad:
        params.NITRO_BASE_FORCE = 110000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 350.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;
        break;
    case VehicleTypePreset.GalenaNomad:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = false;

        break;

    case VehicleTypePreset.VillefortAlvarado:
        params.NITRO_BASE_FORCE = 340000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = false;

        break;
    case VehicleTypePreset.VillefortCortes:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = false;

        break;

    case VehicleTypePreset.ArcherHella:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = false;

        break;
    case VehicleTypePreset.MizutaniShion:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.1;
        params.NITRO_FUEL_REGENERATION_RATE = 0.3;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.35;

        break;
    case VehicleTypePreset.VillefortDeleon:
        params.NITRO_BASE_FORCE = 110000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 350.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.3;
        params.NITRO_FUEL_REGENERATION_RATE = 0.35;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.95;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.3;
        break;
    case VehicleTypePreset.QuadraTurboR:
        params.NITRO_BASE_FORCE = 150000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 400.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.5;
        break;
    case VehicleTypePreset.HerreraRiptide:
        params.NITRO_BASE_FORCE = 120000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.35;
        params.NITRO_FUEL_REGENERATION_RATE = 0.4;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.3;
        break;
    case VehicleTypePreset.QuadraSportR7:
        params.NITRO_BASE_FORCE = 150000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 400.0;
        params.NITRO_FUEL_CAPACITY = 3.5;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.8;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;
        break;
    case VehicleTypePreset.HerreraOutlaw:
        params.NITRO_BASE_FORCE = 175000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 450.0;
        params.NITRO_FUEL_CAPACITY = 6.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.2;
        params.NITRO_FUEL_REGENERATION_RATE = 0.4;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.5;
        break;
    case VehicleTypePreset.ArcherHella:
        params.NITRO_BASE_FORCE = 100000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 300.0;
        params.NITRO_FUEL_CAPACITY = 3.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 0.7;
        params.NITRO_FUEL_REGENERATION_RATE = 0.25;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.25;
        break;
    case VehicleTypePreset.Sportbike1:
        params.NITRO_BASE_FORCE = 85000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 180.0;
        params.NITRO_FUEL_CAPACITY = 4.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.5;
        params.NITRO_FUEL_REGENERATION_RATE = 0.2;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.2;
        break;
    case VehicleTypePreset.Sportbike2:
        params.NITRO_BASE_FORCE = 80000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 160.0;
        params.NITRO_FUEL_CAPACITY = 3.5;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
        params.NITRO_FUEL_REGENERATION_RATE = 0.15;
        params.NITRO_BURNOUT_ENABLED = true;
        params.NITRO_BURNOUT_THRESHOLD = 0.9;
        params.NITRO_BURNOUT_REGEN_PERCENT = 0.1;
        break;
    case VehicleTypePreset.Sportbike3:
        params.NITRO_BASE_FORCE = 60000.0;
        params.NITRO_GLOBAL_MULTIPLIER = 140.0;
        params.NITRO_FUEL_CAPACITY = 5.0;
        params.NITRO_FUEL_CONSUMPTION_RATE = 1.25;
        params.NITRO_FUEL_REGENERATION_RATE = 0.1;
        params.NITRO_BURNOUT_ENABLED = false;
        break;

      // Default case uses the params from VehicleNitroParams.CreateDefault()
      case VehicleTypePreset.BaseDefault:
        /* FTLog("NitroPresetHelper: Using base default parameters (will be adjusted by mass if no overrides)."); */
        // NO mass calculation here. Rely on CreateDefault() called at the start of the function.
        break;


      default:
         /* FTLog("NitroPresetHelper: Using base default parameters."); */
        // Do nothing, already initialized with CreateDefault()
        break;
    }

    /* FTLog(s"NitroPresetHelper: Base params set - FuelCap: \(params.NITRO_FUEL_CAPACITY), BaseForce: \(params.NITRO_BASE_FORCE), Mult: \(params.NITRO_GLOBAL_MULTIPLIER)"); */
    return params;
  }

  // --- Load parameters using Type Preset + TDB Overrides --- //
  // public static func ApplyTweakDBOverrides(vehicle: wref<VehicleObject>, inParams: VehicleNitroParams) -> VehicleNitroParams {
  public static func LoadVehicleSpecificParams(vehicle: wref<VehicleObject>) -> VehicleNitroParams {
    let vehicleTweakID: TweakDBID = vehicle.GetRecordID();
    let vehicleName = TDBID.ToStringDEBUG(vehicleTweakID); // For logging

    // 1. Determine the vehicle type preset
    let typePreset = NitroPresetHelper.GetVehicleTypePreset(vehicleTweakID);

    // 2. Get the baseline parameters for this type (Preset values or CreateDefault() values)
    let outParams = NitroPresetHelper.GetPresetParams(typePreset);

    // +++ Apply Mass-Based Adjustments IF BaseDefault +++
    if Equals(typePreset, VehicleTypePreset.BaseDefault) {
        /* FTLog(s"NitroPresetHelper: Applying MASS-BASED adjustments for BaseDefault vehicle: \(vehicleName)"); */
        let mass = vehicle.GetTotalMass();

        // --- Adjust Base Force based on Mass ---
        let minMass = 1000.0; // e.g., Maimai-ish
        let maxMass = 3500.0; // e.g., Heavy truck-ish
        let minForce = 120000.0;
        let maxForce = 180000.0;
        let massRange = MaxF(maxMass - minMass, 1.0);
        let massProgress = ClampF((mass - minMass) / massRange, 0.0, 1.0);
        let forceRange = maxForce - minForce;
        let massAdjustedForce = minForce + (forceRange * massProgress);
        // Adjust the parameters *in outParams*
        outParams.NITRO_BASE_FORCE = massAdjustedForce;
        /* FTLog(s"  Mass: \(mass), MassProgress: \(massProgress), Adjusted Base Force: \(outParams.NITRO_BASE_FORCE)"); */

        // +++ Adjust Global Multiplier based on Mass (Inversely) +++
        let minMultiplier = 450.0;
        let maxMultiplier = 500.0;
        let multiplierRange = maxMultiplier - minMultiplier;
        let massAdjustedMultiplier = minMultiplier + (multiplierRange * (1.0 - massProgress));
        // Adjust the parameters *in outParams*
        outParams.NITRO_GLOBAL_MULTIPLIER = massAdjustedMultiplier;
        /* FTLog(s"  Adjusted Global Multiplier: \(outParams.NITRO_GLOBAL_MULTIPLIER)"); */

        // --- Adjust Fuel Capacity based on Mass ---
        let minCapacity = 2.5;
        let maxCapacity = 6.0;
        let capacityRange = maxCapacity - minCapacity;
        let massAdjustedCapacity = minCapacity + (capacityRange * massProgress);
         // Adjust the parameters *in outParams*
        outParams.NITRO_FUEL_CAPACITY = massAdjustedCapacity;
        /* FTLog(s"  Adjusted Fuel Capacity: \(outParams.NITRO_FUEL_CAPACITY)"); */

        // --- Adjust Regen Rate based on Mass ---
        let minRegen = 0.4;
        let maxRegen = 0.2;
        let regenRange = maxRegen - minRegen;
        let massAdjustedRegen = minRegen + (regenRange * massProgress);
         // Adjust the parameters *in outParams*
        outParams.NITRO_FUEL_REGENERATION_RATE = massAdjustedRegen;
         /* FTLog(s"  Adjusted Regen Rate: \(outParams.NITRO_FUEL_REGENERATION_RATE)"); */

        // Ensure burnout is disabled *unless* specifically overridden by TweakDB later
        outParams.NITRO_BURNOUT_ENABLED = false;
    }

    // 3. Apply specific TweakDB overrides on top of the type preset baseline (or mass-adjusted baseline)
    /* FTLog(s"NitroPresetHelper: Applying TweakDB overrides for Vehicle: \(vehicleName) (Preset: \(EnumValueToString("VehicleTypePreset", Cast<Int64>(EnumInt(typePreset))))))"); */

    // --- Fuel Capacity Override --- // Check against CURRENT value in outParams
    let fuelCapacitySuffix = t".nitrousFuelCapacity";
    let fuelCapacityTweakID = vehicleTweakID + fuelCapacitySuffix;
    let currentFuelCapacity = outParams.NITRO_FUEL_CAPACITY; // Use CURRENT value as default
    let tweakFuelCapacity = TweakDBInterface.GetFloat(fuelCapacityTweakID, currentFuelCapacity);
    // Only override if tweak value exists (>0) AND is different from the current value
    if tweakFuelCapacity > 0.0 && AbsF(tweakFuelCapacity - currentFuelCapacity) > 0.001 {
        /* FTLog(s"NitroPresetHelper:   OVERRIDING Fuel Capacity: \(tweakFuelCapacity) (Was: \(currentFuelCapacity))"); */
        outParams.NITRO_FUEL_CAPACITY = tweakFuelCapacity;
    }

    // --- Base Force Override --- // Check against CURRENT value in outParams
    let baseForceSuffix = t".nitrousBaseForce";
    let baseForceTweakID = vehicleTweakID + baseForceSuffix;
    let currentBaseForce = outParams.NITRO_BASE_FORCE; // Use CURRENT value as default
    let tweakBaseForce = TweakDBInterface.GetFloat(baseForceTweakID, currentBaseForce);
    if tweakBaseForce > 0.0 && AbsF(tweakBaseForce - currentBaseForce) > 0.001 {
        // FTLog(s"NitroPresetHelper:   OVERRIDING Base Force: \(tweakBaseForce) (Was: \(currentBaseForce))");
        outParams.NITRO_BASE_FORCE = tweakBaseForce;
    }

    // --- Global Multiplier Override --- // Check against CURRENT value in outParams
    let multiplierSuffix = t".nitrousGlobalMultiplier";
    let multiplierTweakID = vehicleTweakID + multiplierSuffix;
    let currentMultiplier = outParams.NITRO_GLOBAL_MULTIPLIER; // Use CURRENT value as default
    let tweakMultiplier = TweakDBInterface.GetFloat(multiplierTweakID, currentMultiplier);
    if tweakMultiplier > 0.0 && AbsF(tweakMultiplier - currentMultiplier) > 0.001 {
        // FTLog(s"NitroPresetHelper:   OVERRIDING Global Multiplier: \(tweakMultiplier) (Was: \(currentMultiplier))");
        outParams.NITRO_GLOBAL_MULTIPLIER = tweakMultiplier;
    }

    // --- Consumption Rate Override --- // Check against CURRENT value in outParams
    let consumptionSuffix = t".nitrousConsumptionRate";
    let consumptionTweakID = vehicleTweakID + consumptionSuffix;
    let currentConsumption = outParams.NITRO_FUEL_CONSUMPTION_RATE; // Use CURRENT value as default
    let tweakConsumption = TweakDBInterface.GetFloat(consumptionTweakID, currentConsumption);
    if tweakConsumption >= 0.0 && AbsF(tweakConsumption - currentConsumption) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Consumption Rate: \(tweakConsumption) (Was: \(currentConsumption))");
        outParams.NITRO_FUEL_CONSUMPTION_RATE = tweakConsumption;
    }

    // --- Regeneration Rate Override --- // Check against CURRENT value in outParams
    let regenRateSuffix = t".nitrousRegenRate";
    let regenRateTweakID = vehicleTweakID + regenRateSuffix;
    let currentRegenRate = outParams.NITRO_FUEL_REGENERATION_RATE; // Use CURRENT value as default
    let tweakRegenRate = TweakDBInterface.GetFloat(regenRateTweakID, currentRegenRate);
    if tweakRegenRate >= 0.0 && AbsF(tweakRegenRate - currentRegenRate) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Regeneration Rate: \(tweakRegenRate) (Was: \(currentRegenRate))");
        outParams.NITRO_FUEL_REGENERATION_RATE = tweakRegenRate;
    }

     // --- Regen Pause Duration Override --- // Check against CURRENT value in outParams
    let regenPauseSuffix = t".nitrousRegenPause";
    let regenPauseTweakID = vehicleTweakID + regenPauseSuffix;
    let currentRegenPause = outParams.NITRO_REGEN_PAUSE_DURATION; // Use CURRENT value as default
    let tweakRegenPause = TweakDBInterface.GetFloat(regenPauseTweakID, currentRegenPause);
    if tweakRegenPause >= 0.0 && AbsF(tweakRegenPause - currentRegenPause) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Regen Pause Duration: \(tweakRegenPause) (Was: \(currentRegenPause))");
        outParams.NITRO_REGEN_PAUSE_DURATION = tweakRegenPause;
    }

    // --- Cooldown Duration Override --- // Check against CURRENT value in outParams
    let cooldownSuffix = t".nitrousCooldown";
    let cooldownTweakID = vehicleTweakID + cooldownSuffix;
    let currentCooldown = outParams.NITRO_COOLDOWN_DURATION; // Use CURRENT value as default
    let tweakCooldown = TweakDBInterface.GetFloat(cooldownTweakID, currentCooldown);
    if tweakCooldown >= 0.0 && AbsF(tweakCooldown - currentCooldown) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Cooldown Duration: \(tweakCooldown) (Was: \(currentCooldown))");
        outParams.NITRO_COOLDOWN_DURATION = tweakCooldown;
    }

    // --- Combat Regen Amount Override --- // Check against CURRENT value in outParams
    let combatRegenAmtSuffix = t".nitrousCombatRegenAmount";
    let combatRegenAmtTweakID = vehicleTweakID + combatRegenAmtSuffix;
    let currentCombatRegenAmt = outParams.NITRO_COMBAT_HIT_REGEN_AMOUNT; // Use CURRENT value as default
    let tweakCombatRegenAmt = TweakDBInterface.GetFloat(combatRegenAmtTweakID, currentCombatRegenAmt);
    if tweakCombatRegenAmt >= 0.0 && AbsF(tweakCombatRegenAmt - currentCombatRegenAmt) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Combat Regen Amount: \(tweakCombatRegenAmt) (Was: \(currentCombatRegenAmt))");
        outParams.NITRO_COMBAT_HIT_REGEN_AMOUNT = tweakCombatRegenAmt;
    }

    // --- Combat Regen Cooldown Override --- // Check against CURRENT value in outParams
    let combatRegenCdSuffix = t".nitrousCombatRegenCooldown";
    let combatRegenCdTweakID = vehicleTweakID + combatRegenCdSuffix;
    let currentCombatRegenCd = outParams.NITRO_COMBAT_REGEN_COOLDOWN; // Use CURRENT value as default
    let tweakCombatRegenCd = TweakDBInterface.GetFloat(combatRegenCdTweakID, currentCombatRegenCd);
    if tweakCombatRegenCd >= 0.0 && AbsF(tweakCombatRegenCd - currentCombatRegenCd) > 0.001 { // Allow 0
        // FTLog(s"NitroPresetHelper:   OVERRIDING Combat Regen Cooldown: \(tweakCombatRegenCd) (Was: \(currentCombatRegenCd))");
        outParams.NITRO_COMBAT_REGEN_COOLDOWN = tweakCombatRegenCd;
    }

    // --- Burnout Enabled Override --- // Check against CURRENT value in outParams
    // IMPORTANT: The default for BaseDefault (after mass adjustment) is FALSE.
    // A TweakDB entry *must* exist and be TRUE to enable burnout for a BaseDefault vehicle.
    let burnoutEnabledSuffix = t".nitrousBurnoutEnabled";
    let burnoutEnabledTweakID = vehicleTweakID + burnoutEnabledSuffix;
    let currentBurnoutEnabled = outParams.NITRO_BURNOUT_ENABLED; // Use CURRENT value as default
    let tweakBurnoutEnabled = TweakDBInterface.GetBool(burnoutEnabledTweakID, currentBurnoutEnabled);
    if NotEquals(tweakBurnoutEnabled, currentBurnoutEnabled) {
        // FTLog(s"NitroPresetHelper:   OVERRIDING Burnout Enabled: \(tweakBurnoutEnabled) (Was: \(currentBurnoutEnabled))");
        outParams.NITRO_BURNOUT_ENABLED = tweakBurnoutEnabled;
    }

    // --- Burnout Threshold Override --- // Check against CURRENT value in outParams
    // Only apply these if Burnout is actually enabled (either by preset or TweakDB override)
    if outParams.NITRO_BURNOUT_ENABLED {
        let burnoutThresholdSuffix = t".nitrousBurnoutThreshold";
        let burnoutThresholdTweakID = vehicleTweakID + burnoutThresholdSuffix;
        let currentBurnoutThreshold = outParams.NITRO_BURNOUT_THRESHOLD; // Use CURRENT value as default
        let tweakBurnoutThreshold = ClampF(TweakDBInterface.GetFloat(burnoutThresholdTweakID, currentBurnoutThreshold), 0.0, 1.0); // Clamp 0-1
        if AbsF(tweakBurnoutThreshold - currentBurnoutThreshold) > 0.001 {
            // FTLog(s"NitroPresetHelper:   OVERRIDING Burnout Threshold: \(tweakBurnoutThreshold) (Was: \(currentBurnoutThreshold))");
            outParams.NITRO_BURNOUT_THRESHOLD = tweakBurnoutThreshold;
        }

        // --- Burnout Regen Percent Override --- // Check against CURRENT value in outParams
        let burnoutRegenPctSuffix = t".nitrousBurnoutRegenPercent";
        let burnoutRegenPctTweakID = vehicleTweakID + burnoutRegenPctSuffix;
        let currentBurnoutRegenPct = outParams.NITRO_BURNOUT_REGEN_PERCENT; // Use CURRENT value as default
        let tweakBurnoutRegenPct = ClampF(TweakDBInterface.GetFloat(burnoutRegenPctTweakID, currentBurnoutRegenPct), 0.0, 1.0); // Clamp 0-1
        if AbsF(tweakBurnoutRegenPct - currentBurnoutRegenPct) > 0.001 {
            // FTLog(s"NitroPresetHelper:   OVERRIDING Burnout Regen %: \(tweakBurnoutRegenPct) (Was: \(currentBurnoutRegenPct))");
            outParams.NITRO_BURNOUT_REGEN_PERCENT = tweakBurnoutRegenPct;
        }

        // --- Burnout Regen Cooldown Override --- // Check against CURRENT value in outParams
        let burnoutRegenCdSuffix = t".nitrousBurnoutRegenCooldown";
        let burnoutRegenCdTweakID = vehicleTweakID + burnoutRegenCdSuffix;
        let currentBurnoutRegenCd = outParams.NITRO_BURNOUT_REGEN_COOLDOWN; // Use CURRENT value as default
        let tweakBurnoutRegenCd = TweakDBInterface.GetFloat(burnoutRegenCdTweakID, currentBurnoutRegenCd);
        if tweakBurnoutRegenCd >= 0.0 && AbsF(tweakBurnoutRegenCd - currentBurnoutRegenCd) > 0.001 { // Allow 0
            // FTLog(s"NitroPresetHelper:   OVERRIDING Burnout Regen Cooldown: \(tweakBurnoutRegenCd) (Was: \(currentBurnoutRegenCd))");
            outParams.NITRO_BURNOUT_REGEN_COOLDOWN = tweakBurnoutRegenCd;
        }
    } else {
        /* FTLog(s"NitroPresetHelper:   Skipping Burnout Threshold/Regen%/Cooldown overrides because Burnout Enabled is false."); */
    }


    /* FTLog(s"NitroPresetHelper: Final params after TDB overrides - FuelCap: \(outParams.NITRO_FUEL_CAPACITY), BaseForce: \(outParams.NITRO_BASE_FORCE), Mult: \(outParams.NITRO_GLOBAL_MULTIPLIER), Burnout: \(outParams.NITRO_BURNOUT_ENABLED)"); */
    return outParams;
  }
} 