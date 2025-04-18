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
                                                                
- This file (nitro.reds) is the main script for Nitrous. It applies the nitro boost mechanism, handles VFX, SFX, user settings, and probably more.
- NitroPresetHelper.reds is a helper that sets and gets vehicle regen, fuel, boost preset values from tweakDB or default values set in script for vanilla vehicles.
- test_mask.reds is the main HUD controller, creates a scriptable HUD UI with Codeware.UI.* (thank you psiberx)
- VehicleIconService.reds is a HUD helper that retrieves the current vehicle icon
- intro.reds handles the introduction message sequence (messages from Muamar)

  Yeah you're thinking "MisterChedda - your naming scheme is a mess." I know.

*/

module MisterChedda.NitroBoost
import MisterChedda.NitroBoost.*
import Codeware.UI.*
import Audioware.*

@if(ModuleExists("MisterChedda.ImmersiveNitrous"))
import MisterChedda.ImmersiveNitrous.*

enum HUDLayoutPreset {
  Default = 0,
  NearSpeedometer = 1,
}

enum EDriveLayout {
  Unknown = 0,
  FrontWheelDrive = 1,
  RearWheelDrive = 2,
  AllWheelDrive = 3,
}

enum MotionBlurLevel {
  None = 0,
  Low = 1,
  Medium = 2,
  High = 3,
  Ultra = 4 
}

// TODO replace this with like a key listener UI button
enum NitroActivationKeyPreset {
  // Keyboard
  LeftShift = 0,     // EInputKey.IK_LShift
  RightShift = 1,    // EInputKey.IK_RShift
  LeftControl = 2,   // EInputKey.IK_LControl
  RightControl = 3,  // EInputKey.IK_RControl
  Spacebar = 4,      // EInputKey.IK_Space
  CapsLock = 5,      // EInputKey.IK_CapsLock
  Alt = 6,          // EInputKey.IK_Alt
  // Mouse
  MouseButton4 = 7, // EInputKey.IK_Mouse4
  MouseButton5 = 8, // EInputKey.IK_Mouse5
  // Controller
  Pad_A_Cross = 9,   // EInputKey.IK_Pad_A_CROSS
  Pad_B_Circle = 10,  // EInputKey.IK_Pad_B_CIRCLE
  Pad_LeftShoulder = 11, // EInputKey.IK_Pad_LeftShoulder
  Pad_RightShoulder = 12, // EInputKey.IK_Pad_RightShoulder
  Pad_LeftTrigger = 13,  // EInputKey.IK_Pad_LeftTrigger
  Pad_RightTrigger = 14, // EInputKey.IK_Pad_RightTrigger
  Pad_LeftThumb = 15,   // EInputKey.IK_Pad_LeftThumb
  Pad_RightThumb = 16, // EInputKey.IK_Pad_RightThumb
  Pad_X_Square = 17,   // EInputKey.IK_Pad_X_SQUARE
  Pad_Y_Triangle = 18 // EInputKey.IK_Pad_Y_TRIANGLE
}

enum ExhaustColor {
  Red = 0,
  Green = 1,
  Yellow = 2,
  Pink = 3,
  Purple = 4,
  Default = 5
}

// --- Nitro Tuning Constants ---
@addField(VehicleComponent)
public let m_nitroParams: VehicleNitroParams; // Store nitro params per vehicle instance when player is driving

@addField(VehicleComponent)
public let m_isNitroActive: Bool;

@addField(VehicleComponent)
public let m_nitroFuelRemaining: Float;

@addField(VehicleComponent)
public let m_nitroCooldownEndTime: Float; // Activation cooldown (when empty)

@addField(VehicleComponent)
public let m_nitroRegenPauseEndTime: Float; // Passive regen pause (after partial boost)

@addField(VehicleComponent)
public let m_nitroCallbackID: DelayID;

@addField(VehicleComponent)
public let m_nitroRegenCallbackID: DelayID;

@addField(VehicleComponent)
private let m_lastCombatRegenTime: Float;

@addField(VehicleComponent)
public let m_nitroEffectNames: array<CName>;

@addField(VehicleComponent)
public let m_nitroSFX: CName;

@addField(VehicleComponent)
private let m_nitroRefuelListenerHandle: ref<CallbackHandle>;

@addField(VehicleComponent)
private let m_driveLayout: EDriveLayout;

@addField(VehicleComponent)
private let m_isBike: Bool;

@addField(VehicleComponent)
private let m_longitudinalFrictionMultiplier: Float; 

@addField(VehicleComponent)
private let m_nitroImpulseCounter: Int32;

@addField(VehicleComponent)
private let m_motionBlurLevel: MotionBlurLevel;

@addField(VehicleComponent)
private let m_enableNitroSound: Bool;

@addField(VehicleComponent)
private let m_nitroSoundVolume: Float;

// +++ Burnout Mechanic Fields +++
@addField(VehicleComponent)
private let m_nitroFuelAtActivation: Float;

@addField(VehicleComponent)
private let m_burnoutRegenCooldownEndTime: Float;

@addField(VehicleComponent)
private let m_consecutiveBurnoutCount: Int32;

@addField(VehicleComponent)
private let m_currentVehicleIconPart: CName;

// +++ Gameplay Multipliers (Cached on Mount) +++
@addField(VehicleComponent)
private let m_nitroRegenMultiplier: Float;

@addField(VehicleComponent)
private let m_nitroBoostMultiplier: Float;

@addField(VehicleComponent)
private let m_isTemporarilyDisabled: Bool;

@addField(VehicleComponent)
private let m_isMountedOnQuestVehicle: Bool;

// +++ Regen Pause Multiplier (Cached on Mount) +++
@addField(VehicleComponent)
private let m_nitroRegenPauseMultiplier: Float;

// +++ Throttle Listener Variables +++
@addField(VehicleComponent)
private let m_isNitroKeyPressed: Bool;      // Is the specific nitro key for this context held?

@addField(VehicleComponent)
private let m_isAccelerateKeyPressed: Bool; // Is *any* accelerate key held?

@addField(VehicleComponent)
private let m_nitroKeyToListen: EInputKey;

@addField(VehicleComponent)
private let m_accelerateKey1ToListen: EInputKey;

@addField(VehicleComponent)
private let m_accelerateKey2ToListen: EInputKey;


public struct NitroState {
  public let isActive: Bool;
  public let fuelPercent: Float;
  public let cooldownRemaining: Float;
  // public let isRegenPaused: Bool;
}

// --- VehicleNitroParams struct and NitroPreset enum remain the same ---
struct VehicleNitroParams {
  // Global multiplier for the nitro force
  public let NITRO_GLOBAL_MULTIPLIER: Float;
  // Base force applied by the nitro (before mass scaling)
  public let NITRO_BASE_FORCE: Float;
  // How much fuel the nitro tank holds (in seconds of boost)
  public let NITRO_FUEL_CAPACITY: Float;
  // How much fuel is consumed per second while boosting
  public let NITRO_FUEL_CONSUMPTION_RATE: Float; // units: fuel per second
  public let NITRO_FUEL_REGENERATION_RATE: Float; // units: fuel per second (Passive)
  // public let NITRO_DRIFT_REGENERATION_RATE: Float; // --- REMOVED ---
  public let NITRO_REGEN_PAUSE_DURATION: Float; // units: seconds (Pause after partial boost)
  // Cooldown duration in seconds after nitro stops (When empty)
  public let NITRO_COOLDOWN_DURATION: Float;

  // --- Combat Regen Params (Now for WEAPON hits) ---
  public let NITRO_COMBAT_HIT_REGEN_AMOUNT: Float; // Flat fuel amount per valid weapon hit
  public let NITRO_COMBAT_REGEN_COOLDOWN: Float;  // Cooldown between combat regen triggers

  // +++ Burnout Params +++
  public let NITRO_BURNOUT_THRESHOLD: Float;       // Min fuel % at activation for burnout (e.g., 0.9)
  public let NITRO_BURNOUT_REGEN_PERCENT: Float;   // Base fuel % regained on burnout (e.g., 0.4)
  public let NITRO_BURNOUT_REGEN_COOLDOWN: Float;  // Short cooldown for burnout regen itself (e.g., 0.5s)
  // +++ END Burnout Params +++
  // +++ Burnout Enable Flag +++
  public let NITRO_BURNOUT_ENABLED: Bool;        // Is burnout mechanic active for this vehicle?

  // Static method to create a default-initialized params struct
  public static func CreateDefault() -> VehicleNitroParams {
    let params: VehicleNitroParams;
    params.NITRO_GLOBAL_MULTIPLIER = 1.0;
    params.NITRO_BASE_FORCE = 50000.0;
    params.NITRO_FUEL_CAPACITY = 3.0;
    params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
    params.NITRO_FUEL_REGENERATION_RATE = 0.25; // Passive regen
    params.NITRO_REGEN_PAUSE_DURATION = 1.5; // Short pause after partial boost
    params.NITRO_COOLDOWN_DURATION = 3.0; // Penalty for hitting empty
    params.NITRO_COMBAT_HIT_REGEN_AMOUNT = 0.1; // Smaller amount per bullet hit
    params.NITRO_COMBAT_REGEN_COOLDOWN = 0.1;  // Shorter cooldown for rapid fire

    // +++ Burnout Defaults +++
    params.NITRO_BURNOUT_THRESHOLD = 0.9;       // Require 90% fuel at start
    params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;   // Get 40% back
    params.NITRO_BURNOUT_REGEN_COOLDOWN = 0.5;  // 0.5s cooldown on regen itself
    // +++ END Burnout Defaults +++
    params.NITRO_BURNOUT_ENABLED = false; // Default to OFF, requires TweakDB opt-in

    return params;
  }

  public static func ApplyDevPreset(out params: VehicleNitroParams) -> VehicleNitroParams {
    params.NITRO_GLOBAL_MULTIPLIER = 500.0;
    params.NITRO_BASE_FORCE = 50000.0;
    params.NITRO_FUEL_CAPACITY = 10.0;
    params.NITRO_FUEL_CONSUMPTION_RATE = 0.05;
    params.NITRO_FUEL_REGENERATION_RATE = 2.0;
    params.NITRO_REGEN_PAUSE_DURATION = 0.05;
    params.NITRO_COOLDOWN_DURATION = 0.05;
    params.NITRO_COMBAT_HIT_REGEN_AMOUNT = 0.1;
    params.NITRO_COMBAT_REGEN_COOLDOWN = 0.1;
    return params;
  }


  // Static method to apply the default preset
  public static func ApplyDefaultPreset(out params: VehicleNitroParams) -> VehicleNitroParams {
    params.NITRO_GLOBAL_MULTIPLIER = 500.0;
    params.NITRO_BASE_FORCE = 150000.0;
    params.NITRO_FUEL_CAPACITY = 4.0;
    params.NITRO_FUEL_CONSUMPTION_RATE = 1.0;
    params.NITRO_FUEL_REGENERATION_RATE = 0.3;
    params.NITRO_REGEN_PAUSE_DURATION = 1.5;
    params.NITRO_COOLDOWN_DURATION = 3.0;
    params.NITRO_COMBAT_HIT_REGEN_AMOUNT = 0.1;
    params.NITRO_COMBAT_REGEN_COOLDOWN = 0.1;
    params.NITRO_BURNOUT_THRESHOLD = 0.9;       // Require 90% fuel at start
    params.NITRO_BURNOUT_REGEN_PERCENT = 0.4;   // Get 40% back
    params.NITRO_BURNOUT_REGEN_COOLDOWN = 0.5;  // 0.5s cooldown on regen itself
    return params;
  }

  // Static method to apply a high power preset
  public static func ApplyHighPowerPreset(out params: VehicleNitroParams) -> VehicleNitroParams {
    params.NITRO_GLOBAL_MULTIPLIER = 800.0;
    params.NITRO_BASE_FORCE = 250000.0;
    params.NITRO_FUEL_CAPACITY = 2.5;
    params.NITRO_FUEL_CONSUMPTION_RATE = 1.2;
    params.NITRO_FUEL_REGENERATION_RATE = 0.2;
    params.NITRO_REGEN_PAUSE_DURATION = 2.0;
    params.NITRO_COOLDOWN_DURATION = 4.0;
    params.NITRO_COMBAT_HIT_REGEN_AMOUNT = 0.10; // Less regen per hit
    params.NITRO_COMBAT_REGEN_COOLDOWN = 0.15;
    return params;
  }

  // Static method to apply a long duration preset
  public static func ApplyLongDurationPreset(out params: VehicleNitroParams) -> VehicleNitroParams {
    params.NITRO_GLOBAL_MULTIPLIER = 400.0;
    params.NITRO_BASE_FORCE = 120000.0;
    params.NITRO_FUEL_CAPACITY = 6.0;
    params.NITRO_FUEL_CONSUMPTION_RATE = 0.8;
    params.NITRO_FUEL_REGENERATION_RATE = 0.4;
    params.NITRO_REGEN_PAUSE_DURATION = 1.0;
    params.NITRO_COOLDOWN_DURATION = 2.5;
    params.NITRO_COMBAT_HIT_REGEN_AMOUNT = 0.20; // More regen per hit
    params.NITRO_COMBAT_REGEN_COOLDOWN = 0.08;
    return params;
  }
}

public class NitroAccelerationStateEvent extends CallbackSystemEvent {
  public let isPressed: Bool;
  public let vehicleID: EntityID; // Let's add vehicle ID for robustness

  // Static constructor matching the Codeware pattern
  public static func Create(vehicle: wref<VehicleObject>, pressed: Bool) -> ref<NitroAccelerationStateEvent> {
    let event = new NitroAccelerationStateEvent();
    event.isPressed = pressed;
    event.vehicleID = vehicle.GetEntityID(); // Store the ID
    return event;
  }

  // Required for registering by name
  public static func GetEventName() -> CName {
      return n"MisterChedda.NitroBoost.NitroAccelerationStateEvent";
  }
}

@addField(VehicleComponent)
private let m_isAccelerateActionPressed: Bool; // Tracks the state from the event

public class NitroRefuelEvent extends CallbackSystemEvent {
    // This event doesn't need specific data, just its type signifies the action.
    // We might add the vehicle ID later if needed, but for now, let the
    // currently driven vehicle handle it.

    // Static constructor
    public static func Create() -> ref<NitroRefuelEvent> {
        let event = new NitroRefuelEvent();
        return event;
    }

    // Required for registering by name
    public static func GetEventName() -> CName {
       return n"MisterChedda.NitroBoost.NitroRefuelEvent";
    }
}

// --- VehicleNitroSystem ---
// (Manages user settings, provides nitro params)
public class VehicleNitroSystem extends ScriptableSystem {
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting1-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting1-description")
  let enableNitro: Bool = true;

  // ~~~ General ~~~
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting2-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Left Shift\", \"Right Shift\", \"Left Control\", \"Right Control\", \"Spacebar\", \"Caps Lock\", \"Alt\", \"Mouse 4\", \"Mouse 5\", \"Gamepad A/Cross\", \"Gamepad B/Circle\", \"Gamepad Left Shoulder\", \"Gamepad Right Shoulder\", \"Gamepad Left Trigger\", \"Gamepad Right Trigger\", \"Gamepad Left Thumb\", \"Gamepad Right Thumb\", \"Gamepad X/Square\", \"Gamepad Y/Triangle\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting2-description")
  let nitroActivationKey: NitroActivationKeyPreset = NitroActivationKeyPreset.LeftShift;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Bike-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Left Shift\", \"Right Shift\", \"Left Control\", \"Right Control\", \"Spacebar\", \"Caps Lock\", \"Alt\", \"Mouse 4\", \"Mouse 5\", \"Gamepad A/Cross\", \"Gamepad B/Circle\", \"Gamepad Left Shoulder\", \"Gamepad Right Shoulder\", \"Gamepad Left Trigger\", \"Gamepad Right Trigger\", \"Gamepad Left Thumb\", \"Gamepad Right Thumb\", \"Gamepad X/Square\", \"Gamepad Y/Triangle\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Bike-description")
  let nitroActivationKey_Bike: NitroActivationKeyPreset = NitroActivationKeyPreset.LeftControl;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "1")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-useSeparateKBMControllerBinds-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-useSeparateKBMControllerBinds-description")
  let useSeparateKBMControllerBinds: Bool = false; // +++ NEW Toggle +++

  // --- Separate KBM/Controller Bindings (Visible when useSeparateKBMControllerBinds = true) ---
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "2") // Order after toggle
  @runtimeProperty("ModSettings.dependency", "useSeparateKBMControllerBinds") // +++ Corrected Dependency: Visible when TRUE +++
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Keyboard_Car-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Left Shift\", \"Right Shift\", \"Left Control\", \"Right Control\", \"Spacebar\", \"Caps Lock\", \"Mouse 4\", \"Mouse 5\"") // KBM Only
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Keyboard_Car-description")
  let nitroActivationKey_Keyboard_Car: NitroActivationKeyPreset = NitroActivationKeyPreset.LeftShift; 

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "3")
  @runtimeProperty("ModSettings.dependency", "useSeparateKBMControllerBinds") // +++ Corrected Dependency: Visible when TRUE +++
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Controller_Car-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Gamepad A/Cross\", \"Gamepad B/Circle\", \"Gamepad Left Shoulder\", \"Gamepad Right Shoulder\", \"Gamepad Left Trigger\", \"Gamepad Right Trigger\", \"Gamepad Left Thumb\", \"Gamepad Right Thumb\", \"Gamepad X/Square\"") // Controller Only
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Controller_Car-description")
  let nitroActivationKey_Controller_Car: NitroActivationKeyPreset = NitroActivationKeyPreset.Pad_A_Cross; 

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.dependency", "useSeparateKBMControllerBinds") // +++ Corrected Dependency: Visible when TRUE +++
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Keyboard_Bike-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Left Shift\", \"Right Shift\", \"Left Control\", \"Right Control\", \"Spacebar\", \"Caps Lock\", \"Mouse 4\", \"Mouse 5\"") // KBM Only
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Keyboard_Bike-description")
  let nitroActivationKey_Keyboard_Bike: NitroActivationKeyPreset = NitroActivationKeyPreset.LeftControl; 

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Activation")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Controls")
  @runtimeProperty("ModSettings.category.order", "5")
  @runtimeProperty("ModSettings.dependency", "useSeparateKBMControllerBinds") // +++ Corrected Dependency: Visible when TRUE +++
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Controller_Bike-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Gamepad A/Cross\", \"Gamepad B/Circle\", \"Gamepad Left Shoulder\", \"Gamepad Right Shoulder\", \"Gamepad Left Trigger\", \"Gamepad Right Trigger\", \"Gamepad Left Thumb\", \"Gamepad Right Thumb\", \"Gamepad X/Square\"") // Controller Only
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroActivationKey_Controller_Bike-description")
  let nitroActivationKey_Controller_Bike: NitroActivationKeyPreset = NitroActivationKeyPreset.Pad_LeftShoulder; 

  // ~~~ VFX ~~~
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-VFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-motionBlurLevel-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-motionBlurLevel-description")
  let motionBlurLevel: MotionBlurLevel = MotionBlurLevel.Low;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-VFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-exhaustColor-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Red\", \"Green\", \"Yellow\", \"Pink\", \"Purple\", \"Default\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-exhaustColor-description")
  let exhaustColor: ExhaustColor = ExhaustColor.Default;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-VFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.step", "5")
  @runtimeProperty("ModSettings.min", "0")
  @runtimeProperty("ModSettings.max", "40")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-tppFOVIntensity-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-tppFOVIntensity-description")
  let tppFOVIntensity: Float = 20.0;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-VFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.step", "5")
  @runtimeProperty("ModSettings.min", "0")
  @runtimeProperty("ModSettings.max", "40")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-fppFOVIntensity-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-fppFOVIntensity-description")
  let fppFOVIntensity: Float = 25.0;

  // ~~~ SFX ~~~
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-SFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "3")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-enableNitroSound-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Enabled\", \"Disabled\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-enableNitroSound-description")
  let enableNitroSound: Bool = true;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-SFX")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "3")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroSoundVolume-displayValue")
  @runtimeProperty("ModSettings.sliderRange", "0.0, 1.0, 0.05") // Min, Max, Step
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroSoundVolume-description")
  let nitroSoundVolume: Float = 0.6; // Default to the previous hardcoded value

  // ~~~ HUD UI ~~~
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-enableHudUi-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Enabled\", \"Disabled\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-enableHudUi-description")
  let enableHudUi: Bool = true;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-showHudOnlyWhenActive-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Disabled\", \"Enabled\"") // False = Disabled (Always Show), True = Enabled (Show when not full/inactive)
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-showHudOnlyWhenActive-description")
  let showHudOnlyWhenActive: Bool = false; // Default to always showing the HUD

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudBarWidth-displayValue")
  @runtimeProperty("ModSettings.step", "10")
  @runtimeProperty("ModSettings.min", "300")
  @runtimeProperty("ModSettings.max", "1200")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudBarWidth-description")
  let hudBarWidth: Int32 = 900; // Default width

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudBarHeight-displayValue")
  @runtimeProperty("ModSettings.step", "1")
  @runtimeProperty("ModSettings.min", "10")
  @runtimeProperty("ModSettings.max", "50")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudBarHeight-description")
  let hudBarHeight: Int32 = 25; // Default height

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudVerticalOffset-displayValue")
  @runtimeProperty("ModSettings.step", "10")
  @runtimeProperty("ModSettings.min", "-100")
  @runtimeProperty("ModSettings.max", "600")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudVerticalOffset-description")
  let hudVerticalOffset: Int32 = 90; // Default offset for the bar itself

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudHorizontalOffset-displayValue")
  @runtimeProperty("ModSettings.step", "10")
  @runtimeProperty("ModSettings.min", "-600")
  @runtimeProperty("ModSettings.max", "600")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudHorizontalOffset-description")
  let hudHorizontalOffset: Int32 = 0; // Default offset for the bar itself

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudOpacity-displayValue")
  @runtimeProperty("ModSettings.step", "0.1")
  @runtimeProperty("ModSettings.min", "0.0")
  @runtimeProperty("ModSettings.max", "1.0")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudOpacity-description")
  let hudOpacity: Float = 1.0; // Default opacity for the bar itself

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hideNitroBarInFPP-displayValue")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hideNitroBarInFPP-description")
  let hideNitroBarInFPP: Bool = true;

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-HUDUI")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "4")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-hudLayoutPreset-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Default\", \"Near Speedometer\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-hudLayoutPreset-description")
  let hudLayoutPreset: HUDLayoutPreset = HUDLayoutPreset.Default;

  // ~~~ Quest Related ~~~
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-QuestRelated")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "5")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-enableNitroForClaireRaceQuests-displayValue")
  @runtimeProperty("ModSettings.displayValues", "\"Enabled\", \"Disabled\"")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-enableNitroForClaireRaceQuests-description")
  let enableNitroForClaireRaceQuests: Bool = true;


  // ~~~ Gameplay ~~~
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Gameplay")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroRegenPercentIncrease-displayValue")
  @runtimeProperty("ModSettings.step", "5")     // Percentage step
  @runtimeProperty("ModSettings.min", "-100")      // Percentage min (-100%)
  @runtimeProperty("ModSettings.max", "100")     // Percentage max (+100%)
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroRegenPercentIncrease-description")
  let nitroRegenPercentIncrease: Int32 = 0;  // Store percentage

  @runtimeProperty("ModSettings.category", "UI-Nitrous-ModSettings-category-Gameplay")
  @runtimeProperty("ModSettings.mod", "UI-Nitrous-ModSettings-title")
  @runtimeProperty("ModSettings.category.order", "2")
  @runtimeProperty("ModSettings.displayName", "UI-Nitrous-ModSettings-setting-nitroBoostPercentIncrease-displayValue")
  @runtimeProperty("ModSettings.step", "5")
  @runtimeProperty("ModSettings.min", "-125")
  @runtimeProperty("ModSettings.max", "50")
  @runtimeProperty("ModSettings.description", "UI-Nitrous-ModSettings-setting-nitroBoostPercentIncrease-description")
  let nitroBoostPercentIncrease: Int32 = 0;

  private let currentActivationKey: EInputKey; // Used when useSeparateKBMControllerBinds = false (Car)
  private let currentActivationKey_Bike: EInputKey; // Used when useSeparateKBMControllerBinds = false (Bike)
  private let currentActivationKey_Keyboard_Car: EInputKey;
  private let currentActivationKey_Controller_Car: EInputKey;
  private let currentActivationKey_Keyboard_Bike: EInputKey;
  private let currentActivationKey_Controller_Bike: EInputKey;
 
  private let currentNitroSoundVolume: Float; // +++ Store the actual sound volume +++
  private let isTemporarilyDisabled: Bool = false;
  private let isMountedOnQuestVehicle: Bool = false;
  private let factIDList: array<Uint32>;
  private let factsList: array<CName>;

  private let m_accelerateKeyPrimary: EInputKey;
  private let m_accelerateKeySecondary: EInputKey;

  private let m_cachedRegenPercentIncrease: Int32;
  private let m_cachedBoostPercentIncrease: Int32;
  private let m_cachedMotionBlurLevel: MotionBlurLevel;
  private let m_cachedHUDLayoutPreset: HUDLayoutPreset;

  private func OnAttach() -> Void {
    // FTLog("====== VehicleNitroSystem: OnAttach BEGIN ======");
    ModSettings.RegisterListenerToClass(this);
    ModSettings.RegisterListenerToModifications(this);
    this.InitializeParams();
    let questSystem: ref<QuestsSystem> = GameInstance.GetQuestsSystem(this.GetGameInstance());

    this.factsList = [n"q000_done"];
    this.InitializeKeyBindings();
    this.CheckIfTemporarilyDisabled();

    let i: Int32 = 0;
    // register listeners for all facts in the list. Currently just prologue.. might need to add more later
    while i < ArraySize(this.factsList) {
        // let factValue: Int32 = GameInstance.GetQuestsSystem(this.GetGame()).GetFact(this.factsList[i]);
        this.factIDList[i] = GameInstance.GetQuestsSystem(this.GetGameInstance()).RegisterListener(this.factsList[i], this, n"OnFactChanged");
        i += 1;
    }


    // FTLog("====== VehicleNitroSystem: OnAttach END ======");
  }

  private func ShowKeybindChangePopup(showAltText: Bool) -> Void {
    // let controller: ref<inkGameController> = GameInstance.GetInkSystem().GetLayer(n"inkHUDLayer").GetGameController() as inkGameController;
    // if IsDefined(controller) {
    //     let popup: ref<NitroKeybindChangePopup> = NitroKeybindChangePopup.Create();
    //     popup.Open(controller);
    //     FTLog("VehicleNitroSystem: Showing keybind change popup.");
    // } else {
    //     FTLog("VehicleNitroSystem: ERROR - Could not get inkGameController to show keybind change popup.");
    // }
    // ah need to add listeners to see if player is in menu or not, otherwise this popup kind of breaks
    let warningMsg: SimpleScreenMessage;
    warningMsg.isShown = true;
    warningMsg.duration = 10.00;
    warningMsg.message = showAltText ? "Nitrous: you changed the HUD layout. You will need to reload the save to see changes apply properly." : "Nitrous: you changed a Gameplay or Keybinding setting that requires you to exit your vehicle to take effect. RE-ENTER VEHICLE TO APPLY.";
    warningMsg.type = SimpleMessageType.Negative;
    GameInstance.GetBlackboardSystem(GetGameInstance()).Get(GetAllBlackboardDefs().UI_Notifications).SetVariant(GetAllBlackboardDefs().UI_Notifications.WarningMessage, ToVariant(warningMsg), true);
    // FTLog("VehicleNitroSystem: Showing keybind change popup.");
  }

  private func GetKeyEnumFromName(keyName: CName) -> EInputKey {
    let keyEnum: EInputKey = EInputKey.IK_None;
    switch (keyName) {
      case n"IK_W":
        keyEnum = EInputKey.IK_W;
        break;
      case n"IK_Up":
        keyEnum = EInputKey.IK_Up;
        break;
      case n"IK_A": 
        keyEnum = EInputKey.IK_A;
        break;
      case n"IK_S":
        keyEnum = EInputKey.IK_S;
        break;
      case n"IK_D":
        keyEnum = EInputKey.IK_D;
        break;
      case n"IK_Left":
        keyEnum = EInputKey.IK_Left;
        break;
      case n"IK_Right":
        keyEnum = EInputKey.IK_Right;
        break;
      case n"IK_Down":
        keyEnum = EInputKey.IK_Down;
        break;
      case n"IK_Space":
        keyEnum = EInputKey.IK_Space;
        break;
      case n"IK_LShift":
        keyEnum = EInputKey.IK_LShift;
        break;
      case n"IK_LControl":
        keyEnum = EInputKey.IK_LControl;
        break;
      case n"IK_Pad_A_CROSS":
        keyEnum = EInputKey.IK_Pad_A_CROSS;
        break;
      case n"IK_Pad_B_CIRCLE":
        keyEnum = EInputKey.IK_Pad_B_CIRCLE;
        break;
      case n"IK_Pad_X_SQUARE":
        keyEnum = EInputKey.IK_Pad_X_SQUARE;
        break;
      case n"IK_Pad_Y_TRIANGLE":
        keyEnum = EInputKey.IK_Pad_Y_TRIANGLE;
        break;
      case n"IK_Pad_LeftShoulder":
        keyEnum = EInputKey.IK_Pad_LeftShoulder;
        break;
      case n"IK_Pad_RightShoulder":
        keyEnum = EInputKey.IK_Pad_RightShoulder;
        break;
      case n"IK_Pad_LeftTrigger":
        keyEnum = EInputKey.IK_Pad_LeftTrigger;
        break;
      case n"IK_Pad_RightTrigger":
        keyEnum = EInputKey.IK_Pad_RightTrigger;
        break;
      case n"IK_Pad_LeftThumb":
        keyEnum = EInputKey.IK_Pad_LeftThumb;
        break;
      case n"IK_Pad_RightThumb":
        keyEnum = EInputKey.IK_Pad_RightThumb;
        break;
      case n"IK_Pad_Start":
        keyEnum = EInputKey.IK_Pad_Start;
        break;
      case n"IK_Pad_Back_Select":
        keyEnum = EInputKey.IK_Pad_Back_Select;
        break;
      case n"IK_Pad_DigitUp":
        keyEnum = EInputKey.IK_Pad_DigitUp;
        break;
      case n"IK_Pad_DigitDown":
        keyEnum = EInputKey.IK_Pad_DigitDown;
        break;
      case n"IK_Pad_DigitLeft":
        keyEnum = EInputKey.IK_Pad_DigitLeft;
        break;
      case n"IK_Pad_DigitRight":
        keyEnum = EInputKey.IK_Pad_DigitRight;
        break;
      default:
        keyEnum = EInputKey.IK_None;
        FTLog(s"Key Bindings: Error - Could not find key enum for \(keyName)");
    }
    return keyEnum;
  }

  public func GetNitroActivationKeyForVehicle(isBike: Bool, isGamepadInput: Bool) -> EInputKey {
      if this.useSeparateKBMControllerBinds {
        if isBike {
          return isGamepadInput ? this.currentActivationKey_Controller_Bike : this.currentActivationKey_Keyboard_Bike;
        } else { // Car
          return isGamepadInput ? this.currentActivationKey_Controller_Car : this.currentActivationKey_Keyboard_Car;
        }
      } else { // Combined mode
        return isBike ? this.currentActivationKey_Bike : this.currentActivationKey;
      }
  }

  // unused but maybe useful for future reference: this reads user settings for keybindings. But controller binds are not in user settings so...
  private func InitializeKeyBindings() -> Void {
      // FTLog("Key Bindings: Initializing key bindings...");
      this.m_accelerateKeyPrimary = EInputKey.IK_None; // Default to None
      this.m_accelerateKeySecondary = EInputKey.IK_None;

      let settings: ref<UserSettings> = GameInstance.GetSettingsSystem(this.GetGameInstance());
      if !IsDefined(settings) {
          // FTLog("Key Bindings: Error - Could not get UserSettings system.");
          // Set defaults if settings system fails
          this.m_accelerateKeyPrimary = EInputKey.IK_W;
          this.m_accelerateKeySecondary = EInputKey.IK_Up;
          return;
      }

      let accelerateKeyPrimary: CName = (settings.GetVar(n"/key_bindings/SettingsVehicle", n"vehicleAccelerate") as ConfigVarName).GetValue();
      let accelerateKeySecondary: CName = (settings.GetVar(n"/key_bindings/SettingsVehicle", n"vehicleAccelerate2") as ConfigVarName).GetValue();

      // FTLog(s"Key Bindings: Accelerate Key bindings read - Primary: \(accelerateKeyPrimary), Secondary: \(accelerateKeySecondary)");  

      this.m_accelerateKeyPrimary = this.GetKeyEnumFromName(accelerateKeyPrimary);
      this.m_accelerateKeySecondary = this.GetKeyEnumFromName(accelerateKeySecondary);
      
      // let groupTest = n"/key_bindings";
      // let groupTest2 = n"/controls/vehicle";
      // let groupTest3 = n"/controls/vehicle/";
      // let groupTest4 = n"/key_bindings/vehicle";

      // if settings.HasGroup(groupTest) {
      //   FTLog(s"Key Bindings: Found groupTest \(groupTest)");
      // }
      // if settings.HasGroup(groupTest2) {
      //   FTLog(s"Key Bindings: Found groupTest2 \(groupTest2)");
      // }
      // if settings.HasGroup(groupTest3) {
      //   FTLog(s"Key Bindings: Found groupTest3 \(groupTest3)");
      // }
      // if settings.HasGroup(groupTest4) {
      //   FTLog(s"Key Bindings: Found groupTest4 \(groupTest4)");
      // }

      // let varTest = n"accelerate";
      // let varTest2 = n"accelerate_secondary";
      // if settings.HasVar(groupTest, varTest) {
      //   FTLog(s"Key Bindings: Found varTest \(varTest) in group \(groupTest)");
      // }
      // if settings.HasVar(groupTest2, varTest2) {
      //   FTLog(s"Key Bindings: Found varTest2 \(varTest2) in group \(groupTest2)");
      // }
      // let groupPath: CName = n"/key_bindings/SettingsVehicle";
      // // if settings.HasGroup(groupPath) {
      //     let vehicleBindingsGroup: ref<ConfigGroup> = settings.GetGroup(groupPath);
      //     if IsDefined(vehicleBindingsGroup) && !vehicleBindingsGroup.IsEmpty(false) {
      //         // --- Get Primary Accelerate Binding ---
      //         // NOTE: Reading exact keybinding values directly from ConfigVars is complex
      //         // as they might not be simple types. We will use fallbacks for now.
      //         // Proper implementation would require inspecting the actual structure/types
      //         // used for keybindings in UserSettings.
              
      //         // let groups = vehicleBindingsGroup.GetGroups(false);
      //         // let i: Int32 = 0;
      //         // while i < ArraySize(groups) {
      //         //   let group: ref<ConfigGroup> = groups[i];
      //         //   let groupName = group.GetName();
      //         //   FTLog(s"Key Bindings: Found group \(groupName) in group \(groupPath)");
      //         //   i += 1;
      //         // }
      //         // i = 0;
      //         /*
      //         The above for /key_bindings/ prints:
      //         SettingsGeneral
      //         SettingsLocomotion
      //         SettingsVehicle
      //         SettingsUI
      //         SettingsBraindance

      //         had to eye ball the HasGroup on root settings tho (ie to find "key_bindings")
      //         */
      //         let vars = vehicleBindingsGroup.GetVars(false);
      //         let i: Int32 = 0;
      //         FTLog(s"Key Bindings: Found \(ArraySize(vars)) variables in group \(groupPath)");
      //         while i < ArraySize(vars) {
      //           let var: ref<ConfigVar> = vars[i];
      //           let varName = var.GetName();
      //           // let varValue: CName = var.GetValue();
      //           let varPath = var.GetGroupPath();
      //           let varType = var.GetType();
      //           let value = (var as ConfigVarName).GetValue();
      //           FTLog(s"Key Bindings: Accelerate Key binding - \(NameToString(varPath)): \(NameToString(varName)) \(varType) - \(value)");
      //           i += 1;
      //         }

      //         // let accelerateKeyPrimary: ConfigVarString = vehicleBindingsGroup.GetVar(n"accelerate_primary") as ConfigVarString;
      //         // let accelerateKeySecondary: ConfigVarString = vehicleBindingsGroup.GetVar(n"accelerate_secondary") as ConfigVarString;
      //         // FTLog("VehicleNitroSystem: Reading Accelerate bindings (using fallbacks for now).");
      //         this.m_accelerateKeyPrimary = EInputKey.IK_W; // Fallback
      //         this.m_accelerateKeySecondary = EInputKey.IK_Up; // Fallback
      //         // TODO: Add actual logic here if the structure of keybinding ConfigVars is known.
      //         // This might involve getting a complex object or list and parsing it.
      //     } else {
      //         FTLog(s"Key Bindings: Error - Could not get ConfigGroup for '\(groupPath)', using defaults.");
      //         this.m_accelerateKeyPrimary = EInputKey.IK_W;
      //         this.m_accelerateKeySecondary = EInputKey.IK_Up;
      //     }
      // } else {
      //     FTLog(s"VehicleNitroSystem: Error - Settings group '\(groupPath)' not found, using defaults.");
      //     this.m_accelerateKeyPrimary = EInputKey.IK_W;
      //     this.m_accelerateKeySecondary = EInputKey.IK_Up;
      // }
      FTLog(s"Key Bindings: Accelerate Key bindings read - Primary: \(this.m_accelerateKeyPrimary), Secondary: \(this.m_accelerateKeySecondary)");
  }

  public static func GetMotionBlurValue(motionBlurLevel: MotionBlurLevel) -> Float {
    if Equals(motionBlurLevel, MotionBlurLevel.None) {
      return 0.0;
    } else if Equals(motionBlurLevel, MotionBlurLevel.Low) {
      return 8.0;
    } else if Equals(motionBlurLevel, MotionBlurLevel.Medium) {
      return 15.0;
    } else if Equals(motionBlurLevel, MotionBlurLevel.High) {
      return 20.0;
    } else if Equals(motionBlurLevel, MotionBlurLevel.Ultra) {
      return 30.0;
      } else {
        return 0.0;
    }
  }

  private func OnRestored(saveVersion: Int32, gameVersion: Int32) {
    this.CheckIfTemporarilyDisabled();
  }

  private func OnPlayerAttach(request: ref<PlayerAttachRequest>) {
    this.CheckIfTemporarilyDisabled();
  }

  private func SetTemporaryDisabled(disabled: Bool) -> Void {
    this.isTemporarilyDisabled = disabled;
  }

  private func CheckIfTemporarilyDisabled() -> Void {
    // FTLog("NitroBoost: Checking if temporarily disabled...");
    let questSystem: ref<QuestsSystem> = GameInstance.GetQuestsSystem(this.GetGameInstance());
    let i: Int32 = 0;
    while i < ArraySize(this.factsList) {
        if questSystem.GetFact(this.factsList[i]) == 0 {
            this.isTemporarilyDisabled = true;
            break;
        }
        i += 1;
    }
    this.isTemporarilyDisabled = false;
  }

  public final func OnFactChanged(val: Int32) -> Void {
    // FTLog("NitroBoost: Some fact changed. Recalculating...");
    this.CheckIfTemporarilyDisabled();
  }

  private func OnDetach() -> Void {
    // FTLog("====== VehicleNitroSystem: OnDetach BEGIN ======");
    ModSettings.UnregisterListenerToClass(this);
    ModSettings.UnregisterListenerToModifications(this);
    let i: Int32 = 0;
    while i < ArraySize(this.factIDList) {
        // let factValue: Int32 = GameInstance.GetQuestsSystem(this.GetGame()).GetFact(this.factsList[i]);
        GameInstance.GetQuestsSystem(this.GetGameInstance()).UnregisterListener(this.factsList[i], this.factIDList[i]);
        i += 1;
    }
    i = 0;
    // FTLog("====== VehicleNitroSystem: OnDetach END ======");
  }

  public func GetAccelerateKeyPrimary() -> EInputKey { return this.m_accelerateKeyPrimary; }

  public func GetAccelerateKeySecondary() -> EInputKey { return this.m_accelerateKeySecondary; }

  public func GetCurrentMotionBlurLevel() -> MotionBlurLevel {
    return this.motionBlurLevel;
  }

  public func IsNitroSoundEnabled() -> Bool {
    return this.enableNitroSound;
  }

  public func GetCurrentActivationKey() -> EInputKey {
    return this.currentActivationKey;
  }

  public func GetCurrentBikeActivationKey() -> EInputKey {
      return this.currentActivationKey_Bike;
  }

  public func GetCurrentNitroSoundVolume() -> Float {
    return this.currentNitroSoundVolume;
  }

  public func ShouldHideNitroBarInFPP() -> Bool {
    return this.hideNitroBarInFPP;
  }

  public func GetHudBarWidth() -> Int32 {
    return this.hudBarWidth;
  }

  public func GetHudBarHeight() -> Int32 {
    return this.hudBarHeight;
  }

  public func GetHudLayoutPreset() -> HUDLayoutPreset {
    return this.hudLayoutPreset;
  }

  public func GetHudVerticalOffset() -> Int32 {
    return this.hudVerticalOffset;
  }

  public func GetHudOpacity() -> Float {
    return this.hudOpacity;
  }

  public func GetHudHorizontalOffset() -> Int32 {
    return this.hudHorizontalOffset;
  }

  public func GetExhaustColor() -> ExhaustColor {
    return this.exhaustColor;
  }

  public func IsHudUiEnabled() -> Bool {
    return this.enableHudUi;
  }

  public func ShouldShowHudOnlyWhenActive() -> Bool {
    return this.showHudOnlyWhenActive;
  }

  public func IsTemporarilyDisabled() -> Bool {
    return this.isTemporarilyDisabled;
  }

  public func IsMountedOnQuestVehicle() -> Bool {
    return this.isMountedOnQuestVehicle;
  }

  public func SetMountedOnQuestVehicle(mounted: Bool) -> Void {
    this.isMountedOnQuestVehicle = mounted;
  }

  public func GetNitroRegenMultiplier() -> Float {
    // Convert stored percentage (0-35) to multiplier (1.0-1.35)
    return 1.0 + (Cast<Float>(this.nitroRegenPercentIncrease) / 100.0);
  }

  public func GetNitroBoostMultiplier() -> Float {
    // Convert stored percentage (0-35) to multiplier (1.0-1.35)
    return 1.0 + (Cast<Float>(this.nitroBoostPercentIncrease) / 100.0);
  }

   private func InitializeParams() -> Void {
    // FTLog(s"====== VehicleNitroSystem: InitializeParams BEGIN ======");
    // this.currentNitroParams = VehicleNitroParams.CreateDefault(); // REMOVED - No longer needed here

    // +++ Get and store the actual EInputKey based on the setting +++
    // this.currentActivationKey = this.GetSelectedActivationKey(this.nitroActivationKey); // Pass the car setting
    // this.currentActivationKey_Bike = this.GetSelectedActivationKey(this.nitroActivationKey_Bike); // Pass the bike setting

    if this.useSeparateKBMControllerBinds {
      // --- Separate Bind Mode ---
      this.currentActivationKey_Keyboard_Car = this.GetSelectedActivationKey(this.nitroActivationKey_Keyboard_Car);
      this.currentActivationKey_Controller_Car = this.GetSelectedActivationKey(this.nitroActivationKey_Controller_Car);
      this.currentActivationKey_Keyboard_Bike = this.GetSelectedActivationKey(this.nitroActivationKey_Keyboard_Bike);
      this.currentActivationKey_Controller_Bike = this.GetSelectedActivationKey(this.nitroActivationKey_Controller_Bike);
      // Clear the original combined keys when in separate mode
      this.currentActivationKey = EInputKey.IK_None;
      this.currentActivationKey_Bike = EInputKey.IK_None;
       // FTLog("VehicleNitroSystem: Initializing in SEPARATE bind mode.");
       // FTLog(s"  KBM Car: \(this.currentActivationKey_Keyboard_Car), Controller Car: \(this.currentActivationKey_Controller_Car)");
       // FTLog(s"  KBM Bike: \(this.currentActivationKey_Keyboard_Bike), Controller Bike: \(this.currentActivationKey_Controller_Bike)");

    } else {
      // --- Combined Bind Mode ---
      this.currentActivationKey = this.GetSelectedActivationKey(this.nitroActivationKey);
      this.currentActivationKey_Bike = this.GetSelectedActivationKey(this.nitroActivationKey_Bike);
      // Clear the separate keys when in combined mode
      this.currentActivationKey_Keyboard_Car = EInputKey.IK_None;
      this.currentActivationKey_Controller_Car = EInputKey.IK_None;
      this.currentActivationKey_Keyboard_Bike = EInputKey.IK_None;
      this.currentActivationKey_Controller_Bike = EInputKey.IK_None;
      // FTLog("VehicleNitroSystem: Initializing in COMBINED bind mode.");
      // FTLog(s"  Car Key: \(this.currentActivationKey), Bike Key: \(this.currentActivationKey_Bike)");
    }



    // +++ Read and store the volume setting +++
    this.currentNitroSoundVolume = this.nitroSoundVolume;

    this.m_cachedRegenPercentIncrease = this.nitroRegenPercentIncrease;
    this.m_cachedBoostPercentIncrease = this.nitroBoostPercentIncrease;
    this.m_cachedMotionBlurLevel = this.motionBlurLevel;
    this.m_cachedHUDLayoutPreset = this.hudLayoutPreset;
    // FTLog(s"VehicleNitroSystem: Initialized Settings - Motion Blur: \(EnumInt(this.motionBlurLevel)), Sound Enabled: \(this.enableNitroSound), Car Key: \(this.currentActivationKey), Bike Key: \(this.currentActivationKey_Bike), Sound Volume: \(this.currentNitroSoundVolume)");
    // +++ Log Gameplay settings (Log the percentage values) +++
    // FTLog(s"VehicleNitroSystem: Initialized Gameplay Settings - Regen Incr: \(this.nitroRegenPercentIncrease)%, Boost Incr: \(this.nitroBoostPercentIncrease)%");
    // FTLog("====== VehicleNitroSystem: InitializeParams END ======");
  }

  public cb func OnModSettingsChange() -> Void {
    // FTLog("====== VehicleNitroSystem: OnModSettingsChange BEGIN ======");

    // +++ Store old keys BEFORE re-initializing +++
    let oldUseSeparateBinds = this.useSeparateKBMControllerBinds;
    let oldKeyCombinedCar = this.currentActivationKey;
    let oldKeyCombinedBike = this.currentActivationKey_Bike;
    let oldKeyKBMCar = this.currentActivationKey_Keyboard_Car;
    let oldKeyControllerCar = this.currentActivationKey_Controller_Car;
    let oldKeyKBMBike = this.currentActivationKey_Keyboard_Bike;
    let oldKeyControllerBike = this.currentActivationKey_Controller_Bike;

    let oldRegenPercentIncrease = this.m_cachedRegenPercentIncrease;
    let oldBoostPercentIncrease = this.m_cachedBoostPercentIncrease;
    let oldMotionBlurLevel = this.m_cachedMotionBlurLevel;
    let oldHUDLayoutPreset = this.m_cachedHUDLayoutPreset;

    // +++ Store old HUD settings before re-initializing +++
    let oldHudWidth = this.hudBarWidth; // Read directly from setting for comparison
    let oldHudHeight = this.hudBarHeight;
    let oldHudOffset = this.hudVerticalOffset;
    let oldHudEnabled = this.enableHudUi;
    this.InitializeParams(); // This now sets both this.currentActivationKey and this.currentActivationKey_Bike

    // --- Get new state ---
    let newUseSeparateBinds = this.useSeparateKBMControllerBinds;

    // +++ Determine if key listeners need updating +++
    let keysChanged = false;
    if NotEquals(oldUseSeparateBinds, newUseSeparateBinds) {
      keysChanged = true; // Mode switch always requires update
      // FTLog("VehicleNitroSystem: Binding mode changed.");
    } else {
      // Mode didn't change, compare relevant keys
      if newUseSeparateBinds { // Separate mode
        if NotEquals(oldKeyKBMCar, this.currentActivationKey_Keyboard_Car) ||
           NotEquals(oldKeyControllerCar, this.currentActivationKey_Controller_Car) ||
           NotEquals(oldKeyKBMBike, this.currentActivationKey_Keyboard_Bike) ||
           NotEquals(oldKeyControllerBike, this.currentActivationKey_Controller_Bike) {
          keysChanged = true;
          // FTLog("VehicleNitroSystem: One or more SEPARATE keys changed.");
        }
      } else { // Combined mode
        if NotEquals(oldKeyCombinedCar, this.currentActivationKey) ||
           NotEquals(oldKeyCombinedBike, this.currentActivationKey_Bike) {
          keysChanged = true;
          // FTLog("VehicleNitroSystem: One or more COMBINED keys changed.");
        }
      }
    }
    let gameplayMultipliersChanged = false;
    if NotEquals(oldRegenPercentIncrease, this.nitroRegenPercentIncrease) ||
       NotEquals(oldBoostPercentIncrease, this.nitroBoostPercentIncrease) {
      // NotEquals(oldRegenPausePercentAdjust, this.nitroRegenPausePercentAdjust) { // If you bring this back
        gameplayMultipliersChanged = true;
        // FTLog("VehicleNitroSystem: Gameplay multipliers changed.");
    } else {
      // FTLog("VehicleNitroSystem: Gameplay multipliers did not change.");
    }

    let hudLayoutPresetChanged = false;
    if NotEquals(oldHUDLayoutPreset, this.hudLayoutPreset) {
      hudLayoutPresetChanged = true;
      // FTLog("VehicleNitroSystem: HUD layout preset changed.");
    } else {
      // FTLog("VehicleNitroSystem: HUD layout preset did not change.");
    }

    // --- Re-register listeners OR Show Popup ---
    if keysChanged || gameplayMultipliersChanged {
        // FTLog("VehicleNitroSystem: Activation key(s) changed. Triggering listener update AND showing popup.");
        // Note: Actual listener update happens implicitly when player re-mounts the vehicle
        // because OnMountingEvent calls SetThrottleKeyListeners using the new system state.
        // this.UnregisterKeyListener(); // We don't need direct unregister/register here anymore
        // this.RegisterKeyListener();

        // <<< SHOW THE POPUP >>>
        this.ShowKeybindChangePopup(false);

    } else if hudLayoutPresetChanged {
      // FTLog("VehicleNitroSystem: HUD layout preset changed. Triggering listener update AND showing popup.");
      this.ShowKeybindChangePopup(true);
    }
    this.m_cachedRegenPercentIncrease = this.nitroRegenPercentIncrease;
    this.m_cachedBoostPercentIncrease = this.nitroBoostPercentIncrease;
    // FTLog(s"OnModSettingsChange: Updated cache. Regen=\(this.m_cachedRegenPercentIncrease), Boost=\(this.m_cachedBoostPercentIncrease)"); // Debug

    // --- Logging ---
    // FTLog("====== VehicleNitroSystem: OnModSettingsChange END ======");
  }

  private func RegisterKeyListener() -> Void {
      if !this.enableNitro {
          // FTLog("VehicleNitroSystem: Nitro disabled, not registering key listener.");
          return;
      }

      let keysToRegister: array<EInputKey>;

      // +++ Collect active keys based on mode +++
      if this.useSeparateKBMControllerBinds {
          ArrayPush(keysToRegister, this.currentActivationKey_Keyboard_Car);
          ArrayPush(keysToRegister, this.currentActivationKey_Controller_Car);
          ArrayPush(keysToRegister, this.currentActivationKey_Keyboard_Bike);
          ArrayPush(keysToRegister, this.currentActivationKey_Controller_Bike);
           // FTLog("VehicleNitroSystem: Registering keys in SEPARATE mode.");
      } else {
          ArrayPush(keysToRegister, this.currentActivationKey);
          ArrayPush(keysToRegister, this.currentActivationKey_Bike);
           // FTLog("VehicleNitroSystem: Registering keys in COMBINED mode.");
      }

      let registeredKeys: array<EInputKey>; // Track keys we've actually registered to avoid duplicates

      for key in keysToRegister {
          if NotEquals(key, EInputKey.IK_None) {
              // Check if this key has already been registered in this pass
              let alreadyRegistered = false;
              for registeredKey in registeredKeys {
                  if Equals(key, registeredKey) {
                      alreadyRegistered = true;
                      break;
                  }
              }

              if !alreadyRegistered {
                  // FTLog(s"VehicleNitroSystem: Registering key listener for: \(key)");
                  GameInstance.GetCallbackSystem().RegisterCallback(n"Input/Key", this, n"OnKeyInput")
                        .AddTarget(InputTarget.Key(key));
                  ArrayPush(registeredKeys, key); // Add to our tracked list
              } else {
                  // FTLog(s"VehicleNitroSystem: Key \(key) is already registered (duplicate), skipping.");
              }
          } else {
               // FTLog("VehicleNitroSystem: Encountered IK_None, skipping registration for this slot.");
          }
      }
       // FTLog(s"VehicleNitroSystem: Finished registering \(ArraySize(registeredKeys)) unique key listener(s).");
  }

  private func GetSelectedActivationKey(presetValue: NitroActivationKeyPreset) -> EInputKey {
    switch presetValue {
        case NitroActivationKeyPreset.LeftShift: return EInputKey.IK_LShift;
        case NitroActivationKeyPreset.CapsLock: return EInputKey.IK_CapsLock;
        case NitroActivationKeyPreset.Alt: return EInputKey.IK_Alt;
        case NitroActivationKeyPreset.MouseButton4: return EInputKey.IK_Mouse4;
        case NitroActivationKeyPreset.MouseButton5: return EInputKey.IK_Mouse5;
        case NitroActivationKeyPreset.Pad_A_Cross: return EInputKey.IK_Pad_A_CROSS;
        case NitroActivationKeyPreset.Pad_B_Circle: return EInputKey.IK_Pad_B_CIRCLE;
        case NitroActivationKeyPreset.Pad_RightThumb: return EInputKey.IK_Pad_RightThumb;
        case NitroActivationKeyPreset.RightShift: return EInputKey.IK_RShift;
        case NitroActivationKeyPreset.LeftControl: return EInputKey.IK_LControl;
        case NitroActivationKeyPreset.RightControl: return EInputKey.IK_RControl;
        case NitroActivationKeyPreset.Spacebar: return EInputKey.IK_Space;
        case NitroActivationKeyPreset.Pad_LeftShoulder: return EInputKey.IK_Pad_LeftShoulder;
        case NitroActivationKeyPreset.Pad_RightShoulder: return EInputKey.IK_Pad_RightShoulder;
        case NitroActivationKeyPreset.Pad_LeftTrigger: return EInputKey.IK_Pad_LeftTrigger;
        case NitroActivationKeyPreset.Pad_RightTrigger: return EInputKey.IK_Pad_RightTrigger;
        case NitroActivationKeyPreset.Pad_LeftThumb: return EInputKey.IK_Pad_LeftThumb;
        case NitroActivationKeyPreset.Pad_RightThumb: return EInputKey.IK_Pad_RightThumb;
        case NitroActivationKeyPreset.Pad_X_Square: return EInputKey.IK_Pad_X_SQUARE;
        case NitroActivationKeyPreset.Pad_Y_Triangle: return EInputKey.IK_Pad_Y_TRIANGLE;
        default: return EInputKey.IK_LShift; // Default fallback
    }

  }

  private func IsPlayerInAnyMenu() -> Bool {
    let blackboard: ref<IBlackboard> = GameInstance.GetBlackboardSystem(this.GetGameInstance()).Get(GetAllBlackboardDefs().UI_System);
    let uiSystemBB: ref<UI_SystemDef> = GetAllBlackboardDefs().UI_System;
    return blackboard.GetBool(uiSystemBB.IsInMenu);
  }

  private func IsInPhotomode() -> Bool {
    let photoModeSys: ref<PhotoModeSystem> = GameInstance.GetPhotoModeSystem(this.GetGameInstance());
    return photoModeSys.IsPhotoModeActive();
  }
}


// --- Vehicle Component Modifications ---

@addMethod(VehicleComponent)
private func IsPadKey(key: EInputKey) -> Bool {
    // Simple check based on enum naming convention
    let keyName = EnumValueToString("EInputKey", Cast<Int64>(EnumInt(key)));
    return StrBeginsWith(keyName, "IK_Pad_");
}

@addMethod(VehicleComponent)
public final func IsRaceClockActive() -> Bool {
  // GetInvalidDelayID() returns the value representing an invalid or cancelled DelayID.
  // If m_raceClockTickID is NOT invalid, it means the timer tick was started and hasn't been cancelled yet.
  // Which means we are in a race quest.

  return this.m_raceClockTickID != GetInvalidDelayID();
}

@addField(DriveEvents) // Add to each relevant class or a common base if possible
private let mc_prevAccelState: Bool = false; // Initialize to false

@addField(DriverCombatEvents) // Example for another class
private let mc_prevAccelState: Bool = false;

// --- Wrapper for DriveEvents.OnUpdate ---
@wrapMethod(DriveEvents)
public func OnUpdate(timeDelta: Float, stateContext: ref<StateContext>, scriptInterface: ref<StateGameScriptInterface>) -> Void {
    // Check and dispatch acceleration event BEFORE calling wrapped method
    let currentAccelValue = scriptInterface.GetActionValue(n"Accelerate");
    // FTLog(s"DriveEvents: OnUpdate - Accelerate Value: \(currentAccelValue)");
    // Use a small threshold to determine if pressed
    let threshold: Float = 0.05;
    let currentlyPressed = currentAccelValue > threshold;

    // Compare with the member field state
    if NotEquals(currentlyPressed, this.mc_prevAccelState) {
        // FTLog(s"DriveEvents: Acceleration state changed! Value: \(currentAccelValue), Pressed: \(currentlyPressed). Dispatching event.");
        // Create and dispatch the custom event
        GameInstance.GetCallbackSystem().DispatchEvent(NitroAccelerationStateEvent.Create(scriptInterface.owner as VehicleObject, currentlyPressed));

        // Update the stored state
        this.mc_prevAccelState = currentlyPressed;
    }

    // Call the original OnUpdate logic
    wrappedMethod(timeDelta, stateContext, scriptInterface);
}

// --- Wrapper for DriverCombatEvents.OnUpdate ---
@wrapMethod(DriverCombatEvents)
public func OnUpdate(timeDelta: Float, stateContext: ref<StateContext>, scriptInterface: ref<StateGameScriptInterface>) -> Void {
    // Check and dispatch acceleration event BEFORE calling wrapped method
    let currentAccelValue = scriptInterface.GetActionValue(n"Accelerate");
    // FTLog(s"DriverCombatEvents: OnUpdate - Accelerate Value: \(currentAccelValue)");
    // Use the same threshold
    let threshold: Float = 0.05;
    let currentlyPressed = currentAccelValue > threshold;

    // Compare with the member field state
    if NotEquals(currentlyPressed, this.mc_prevAccelState) {
        // FTLog(s"DriverCombatEvents: Acceleration state changed! Value: \(currentAccelValue), Pressed: \(currentlyPressed). Dispatching event.");
        // Create and dispatch the custom event
        GameInstance.GetCallbackSystem().DispatchEvent(NitroAccelerationStateEvent.Create(scriptInterface.owner as VehicleObject, currentlyPressed));

        // Update the stored state
        this.mc_prevAccelState = currentlyPressed;
    }

    // Call the original OnUpdate logic
    wrappedMethod(timeDelta, stateContext, scriptInterface);
}

@wrapMethod(VehicleComponent)
  protected cb func OnVehicleRaceQuestEvent(evt: ref<VehicleRaceQuestEvent>) -> Bool {
    let nitroSystem: ref<VehicleNitroSystem> = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
    if nitroSystem.enableNitro {
      if !nitroSystem.enableNitroForClaireRaceQuests {
        switch evt.mode {
          case vehicleRaceUI.RaceStart:
            nitroSystem.isTemporarilyDisabled = true;
            this.m_isTemporarilyDisabled = true;
            let progressBarSystem = GetProgressBarInputSystem(GetGameInstance());
            if IsDefined(progressBarSystem) {
                progressBarSystem.HideProgressBar();
            }
            FTLog(s"NitroBoost: Temporarily disabled for Claire race quest.");
            break;
          case vehicleRaceUI.RaceEnd:
            nitroSystem.isTemporarilyDisabled = false;
            this.m_isTemporarilyDisabled = false;
            FTLog(s"NitroBoost: Temporarily enabled for Claire race quest.");
            break;
        };
      }
    }
    return wrappedMethod(evt);
  }


@addMethod(VehicleComponent)
private func SetVehicleMetadata() -> Void {
    let vehicleRecord: ref<Vehicle_Record>;
    VehicleComponent.GetVehicleRecord(this.GetVehicle(), vehicleRecord);

    this.m_isBike = this.GetVehicle() == (this.GetVehicle() as BikeObject);
    let tweakRecord = this.GetVehicle().GetRecordID();

    // Default friction
    let defaultFriction = 0.95; // Keep initial default
    this.m_longitudinalFrictionMultiplier = defaultFriction; // Initialize with default
    this.m_driveLayout = EDriveLayout.Unknown; // Initialize drive layout

    // Maimai special case
    if tweakRecord == t"Vehicle.v_standard2_makigai_maimai_player" {
        this.m_driveLayout = EDriveLayout.AllWheelDrive;
        // FTLog("VehicleNitroSystem: Makigai Maimai detected. Forcing Drive Layout to AWD.");
    }

    let drivingSetupRecord: ref<VehicleWheelDrivingSetup_Record>;
    let drivingSetup4Record: ref<VehicleWheelDrivingSetup_4_Record>; // For wheel roles
    
    if IsDefined(vehicleRecord) && IsDefined(vehicleRecord.VehDriveModelData()) {
         drivingSetupRecord = vehicleRecord.VehDriveModelData().WheelSetup(); // Get the base setup record
         drivingSetup4Record = drivingSetupRecord as VehicleWheelDrivingSetup_4_Record; // Attempt cast for roles
    }

    if !IsDefined(drivingSetupRecord) {
        // FTLog("VehicleNitroSystem: Critical - Could not get VehicleWheelDrivingSetup_Record. Using defaults.");
         if this.m_isBike {
             this.m_driveLayout = EDriveLayout.RearWheelDrive; 
             // FTLog("VehicleNitroSystem: Bike detected. Drive Layout set to RWD (Default). Friction set to default.");
         } else {
             // FTLog("VehicleNitroSystem: Car detected. Drive Layout set to Unknown (Default). Friction set to default.");
         }
         return; 
    }

    // --- Determine Drive Layout (if not Maimai) ---
    let frontDrive = false;
    let rearDrive = false;
    if IsDefined(drivingSetup4Record) && NotEquals(this.m_driveLayout, EDriveLayout.AllWheelDrive) {
        // Get drive roles only if we have the 4-wheel setup record and haven't forced AWD
        frontDrive = drivingSetup4Record.LFHandle().IsDrive() || drivingSetup4Record.RFHandle().IsDrive();
        rearDrive = drivingSetup4Record.LBHandle().IsDrive() || drivingSetup4Record.RBHandle().IsDrive();

        if frontDrive && rearDrive {
            this.m_driveLayout = EDriveLayout.AllWheelDrive;
            // FTLog("VehicleNitroSystem: Drive Layout detected as AWD");
        } else if frontDrive {
            this.m_driveLayout = EDriveLayout.FrontWheelDrive;
            // FTLog("VehicleNitroSystem: Drive Layout detected as FWD");
        } else if rearDrive {
            this.m_driveLayout = EDriveLayout.RearWheelDrive;
            // FTLog("VehicleNitroSystem: Drive Layout detected as RWD");
        } else {
            // FTLog("VehicleNitroSystem: Drive Layout detected as Unknown (No drive wheels found?)");
        }
    } else if NotEquals(this.m_driveLayout, EDriveLayout.AllWheelDrive) { 
        if this.m_isBike {
            this.m_driveLayout = EDriveLayout.RearWheelDrive; 
             // FTLog("VehicleNitroSystem: Bike - Assuming RWD (Could not get 4-wheel roles)");
        } else if NotEquals(this.m_driveLayout, EDriveLayout.AllWheelDrive) { 
             // FTLog("VehicleNitroSystem: Could not get 4-wheel roles, Drive Layout remains Unknown or forced AWD.");
        }
    }

    // --- Calculate Friction Multiplier using Presets ---
    let frontFrictionPreset: ref<VehicleWheelDrivingPreset_Record> = drivingSetupRecord.FrontPresetHandle();
    let rearFrictionPreset: ref<VehicleWheelDrivingPreset_Record> = drivingSetupRecord.BackPresetHandle();
    let frontFriction = -1.0;
    let rearFriction = -1.0;

    if IsDefined(frontFrictionPreset) {
        frontFriction = frontFrictionPreset.FrictionMulLongitudinal();
        // +++ Log Preset Name +++
        // FTLog(s"VehicleNitroSystem: Reading Front Friction Preset: , Value: \(frontFriction)");
    } else {
        // FTLog("VehicleNitroSystem: Front Friction Preset Handle not found.");
    }
    if IsDefined(rearFrictionPreset) {
        rearFriction = rearFrictionPreset.FrictionMulLongitudinal();
         // +++ Log Preset Name +++
        // FTLog(s"VehicleNitroSystem: Reading Rear Friction Preset:, Value: \(rearFriction)");
    } else {
        // FTLog("VehicleNitroSystem: Rear Friction Preset Handle not found.");
    }

    // Use the determined drive layout to select the correct friction value(s)
    switch this.m_driveLayout {
        case EDriveLayout.AllWheelDrive:
            if frontFriction > 0.0 && rearFriction > 0.0 {
                this.m_longitudinalFrictionMultiplier = (frontFriction + rearFriction) / 2.0;
                 // FTLog("VehicleNitroSystem: AWD - Using average friction.");
            } else if frontFriction > 0.0 {
                this.m_longitudinalFrictionMultiplier = frontFriction;
                 // FTLog("VehicleNitroSystem: AWD - Using front friction only (rear invalid).");
            } else if rearFriction > 0.0 {
                this.m_longitudinalFrictionMultiplier = rearFriction;
                 // FTLog("VehicleNitroSystem: AWD - Using rear friction only (front invalid).");
            } else {
                 // FTLog("VehicleNitroSystem: AWD - Both friction values invalid, using default.");
            }
            break;
        case EDriveLayout.RearWheelDrive: // Includes Bikes
            if rearFriction > 0.0 {
                 this.m_longitudinalFrictionMultiplier = rearFriction;
                 // FTLog("VehicleNitroSystem: RWD/Bike - Using rear friction.");
            } else {
                 // FTLog("VehicleNitroSystem: RWD/Bike - Rear friction invalid, using default.");
            }
            break;
         case EDriveLayout.FrontWheelDrive:
            if frontFriction > 0.0 {
                 this.m_longitudinalFrictionMultiplier = frontFriction;
                 // FTLog("VehicleNitroSystem: FWD - Using front friction.");
            } else {
                 // FTLog("VehicleNitroSystem: FWD - Front friction invalid, using default.");
            }
            break;
        default: // Unknown
             // FTLog("VehicleNitroSystem: Unknown Drive Layout - Using default friction.");
            break;
    }

    // FTLog(s"VehicleNitroSystem: Final Longitudinal Friction Multiplier set to: \(this.m_longitudinalFrictionMultiplier)");
}

/* VFX and SFX setters */

@addMethod(VehicleComponent)
private func SetNitrousSFX() -> Void {
  let vehicleRecord: ref<Vehicle_Record>;
  VehicleComponent.GetVehicleRecord(this.GetVehicle(), vehicleRecord);

  // Tags dont work because they dont have what we need. appearance_name isnt always populated. but destroyed_appearance always is.
  let app_name: String = NameToString(vehicleRecord.DestroyedAppearance());
  // FTLog(s"VehicleNitroSystem: Setting nitrous sfx for: \(app_name)");

  if StrContains(app_name, "nomad") {
    // FTLog("VehicleNitroSystem: Setting nitrous sfx for: muscle");
    this.m_nitroSFX = n"misterchedda_nitroboost_muscle";
  } else if StrContains(app_name, "rayfield") || StrContains(app_name, "outlaw") {
    // FTLog("VehicleNitroSystem: Setting nitrous sfx for: luxury");
    this.m_nitroSFX = n"misterchedda_nitroboost_luxury";
  } else {
    // FTLog("VehicleNitroSystem: Setting nitrous sfx for: default");
    this.m_nitroSFX = n"misterchedda_nitroboost_default";
  }
  // FTLog(s"VehicleNitroSystem: veh friendly name ========== \(vehicleRecord.DestroyedAppearance()) and visual tags: \(vehicleRecord.VisualTags())");

}

@addField(VehicleComponent)
private let m_exhaustColor: ExhaustColor;

@addMethod(VehicleComponent)
private func SetExhaustColor() -> Void {
  let nitroSystem = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
  if IsDefined(nitroSystem) {
    this.m_exhaustColor = nitroSystem.GetExhaustColor();
    // FTLog(s"VehicleNitroSystem: Exhaust color set to: \(this.m_exhaustColor)");
  } else {
    // FTLog("VehicleNitroSystem: ERROR - Could not get nitro system.");
  }
}


@addMethod(VehicleComponent)
private func AddNitrousExhaustEffect() -> Void {
  let vehicle = this.GetVehicle();
  let components = vehicle.GetComponents();
  let i = 0;

  let resourcePath: ResRef;
  let colorName: String;

  this.SetExhaustColor();

  if Equals(this.m_nitroSFX, n"misterchedda_nitroboost_muscle") {
    switch this.m_exhaustColor {
      case ExhaustColor.Red: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\red\\veh_exhaust_backfire_nos_02.effect"; break;
      case ExhaustColor.Green: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\green\\veh_exhaust_backfire_nos_02.effect"; break;
      case ExhaustColor.Yellow: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\yellow\\veh_exhaust_backfire_nos_02.effect"; break;
      case ExhaustColor.Pink: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\pink\\veh_exhaust_backfire_nos_02.effect"; break;
      case ExhaustColor.Purple: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\purple\\veh_exhaust_backfire_nos_02.effect"; break;
      default: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_nomad\\default\\veh_exhaust_backfire_nos_02.effect"; break;
    }
  } else if Equals(this.m_nitroSFX, n"misterchedda_nitroboost_luxury") {
    switch this.m_exhaustColor {
      case ExhaustColor.Red: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\red\\veh_exhaust_backfire_nos_04.effect"; break;
      case ExhaustColor.Green: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\green\\veh_exhaust_backfire_nos_04.effect"; break;
      case ExhaustColor.Yellow: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\yellow\\veh_exhaust_backfire_nos_04.effect"; break;
      case ExhaustColor.Pink: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\pink\\veh_exhaust_backfire_nos_04.effect"; break;
      case ExhaustColor.Purple: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\purple\\veh_exhaust_backfire_nos_04.effect"; break;
      default: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust_luxury\\default\\veh_exhaust_backfire_nos_04.effect"; break;
    }
  } else {
    switch this.m_exhaustColor {
      case ExhaustColor.Red: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\red\\veh_exhaust_backfire_nos_03.effect"; break;
      case ExhaustColor.Green: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\green\\veh_exhaust_backfire_nos_03.effect"; break;
      case ExhaustColor.Yellow: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\yellow\\veh_exhaust_backfire_nos_03.effect"; break;
      case ExhaustColor.Pink: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\pink\\veh_exhaust_backfire_nos_03.effect"; break;
      case ExhaustColor.Purple: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\purple\\veh_exhaust_backfire_nos_03.effect"; break;
      default: resourcePath = r"misterchedda\\NitroBoost\\vfx\\exhaust\\default\\veh_exhaust_backfire_nos_03.effect"; break;
    }
  }
  // FTLog(s"VehicleNitroSystem: Adding nitrous exhaust effect for color: \(ResRef.ToString(resourcePath))");

  while i < ArraySize(components) {
    let component = components[i] as entEffectSpawnerComponent;
    if IsDefined(component) {
      // // FTLog("VehicleNitroSystem: Found effect spawner component");
      let effDescs = component.effectDescs;
      let j = 0;
      for effDesc in effDescs {
        if StrContains(ResRef.ToString(ResourceAsyncRef.GetPath(effDesc.effect)), "veh_exhaust_backfire") || StrContains(NameToString(effDesc.effectName), "exhaust_gear") {
          // FTLog(s"VehicleNitroSystem: Found exhaust gear effect: \(effDesc.effectName)");
          component.effectDescs[j].effect *= resourcePath;
          ArrayPush(this.m_nitroEffectNames, effDesc.effectName);
        }
        j += 1;
      }
    }
    i += 1;
  }

}

@addMethod(VehicleComponent)
private func RemoveNitrousExhaustEffect() -> Void {
  let vehicle = this.GetVehicle();
  let components = vehicle.GetComponents();
  let i = 0;
  while i < ArraySize(components) {
    let component = components[i] as entEffectSpawnerComponent;
    if IsDefined(component) {
      // // FTLog("VehicleNitroSystem: Found effect spawner component");
      let effDescs = component.effectDescs;
      let j = 0;
      for effDesc in effDescs {
        if StrContains(NameToString(effDesc.effectName), "exhaust_gear") {
          // FTLog(s"VehicleNitroSystem: Found exhaust gear effect: \(effDesc.effectName)");
          if Equals(this.m_nitroSFX, n"misterchedda_nitroboost_muscle") {
            component.effectDescs[j].effect *= r"base\\fx\\vehicles\\_exhaust\\veh_exhaust_backfire_nomad.effect";
          } else if Equals(this.m_nitroSFX, n"misterchedda_nitroboost_luxury") {
            component.effectDescs[j].effect *= r"base\\fx\\vehicles\\_exhaust\\veh_exhaust_backfire.effect"; // todo
          } else {
            component.effectDescs[j].effect *= r"base\\fx\\vehicles\\_exhaust\\veh_exhaust_backfire.effect"; // todo
          }
        }
        j += 1;
      }
    }
    i += 1;
  }
  this.m_nitroEffectNames = [];
}

/* TPP/FPP FOV Camera Pullback */

@addField(VehicleComponent)
private let m_originalFOV: Float;

@addField(VehicleComponent)
private let m_originalMotionBlurScale: Float;

@addField(VehicleComponent)
private let m_currentFOV: Float;

@addField(VehicleComponent)
private let m_currentBlur: Float;

@addField(VehicleComponent)
private let m_isTransitioning: Bool;

@addField(VehicleComponent)
private let m_transitionUpdateCallbackID: DelayID;

@addField(VehicleComponent)
private let m_transitionStartTime: Float;

@addField(VehicleComponent)
private let m_transitionDuration: Float;

@addField(VehicleComponent)
private let m_transitionStartFOV: Float;

@addField(VehicleComponent)
private let m_transitionStartBlur: Float;

@addField(VehicleComponent)
private let m_transitionTargetFOV: Float;

@addField(VehicleComponent)
private let m_transitionTargetBlur: Float;

@addField(VehicleComponent)
private let m_originalFppFOV: Float;

@addField(VehicleComponent)
private let m_originalFppMotionBlurScale: Float;

@addField(VehicleComponent)
private let m_currentFppFOV: Float;

@addField(VehicleComponent)
private let m_currentFppMotionBlurScale: Float;

@addField(VehicleComponent)
private let m_transitionStartFppFOV: Float;

@addField(VehicleComponent)
private let m_transitionStartFppMotionBlurScale: Float;

@addField(VehicleComponent)
private let m_transitionTargetFppFOV: Float;

@addField(VehicleComponent)
private let m_transitionTargetFppMotionBlurScale: Float;

@addField(VehicleComponent)
private let m_cachedVehTPPCamera: wref<vehicleTPPCameraComponent>;

// --- Helper to find and cache the camera ---
@addMethod(VehicleComponent)
private func CachePlayerCameraComponent() -> Bool {
  if IsDefined(this.m_cachedVehTPPCamera) { return true; } // Already cached

  let playerComponents = GetPlayer(GetGameInstance()).GetComponents();
  let j = 0;
  while j < ArraySize(playerComponents) {
    let vehTPPCamera = playerComponents[j] as vehicleTPPCameraComponent;
    if IsDefined(vehTPPCamera) {
      this.m_cachedVehTPPCamera = vehTPPCamera;
      // FTLog("VehicleNitroSystem: Found and cached vehTPPCamera component");
      return true;
    }
    j += 1;
  }

  this.ClearPlayerCameraCache();
  FTLog("VehicleNitroSystem: ERROR - Could not find vehTPPCamera component to cache.");
  return false;
}

@addMethod(VehicleComponent)
private func ClearPlayerCameraCache() -> Void {
    // Only clear and log if it was actually cached
    if IsDefined(this.m_cachedVehTPPCamera) {
        // FTLog("VehicleNitroSystem: Clearing cached vehTPPCamera component.");
        this.m_cachedVehTPPCamera = null;
    }
}

// --- Start the "Increase" Transition ---
@addMethod(VehicleComponent)
private func AddCameraBoom() -> Void {
  // FTLog("VehicleNitroSystem: Requesting AddCameraBoom");

  // --- Get FPP Camera ---
  let player = GetPlayer(this.GetVehicle().GetGame());
  if !IsDefined(player) { return; } // Need player for FPP camera
  let fppCamera = player.GetFPPCameraComponent();
  // --- End Get FPP Camera ---

  // Ensure TPP camera is cached
  let hasTppCamera = this.CachePlayerCameraComponent();

  let delaySystem = GameInstance.GetDelaySystem(this.GetVehicle().GetGame());
  let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));

  // Cancel any ongoing transition first
  if this.m_transitionUpdateCallbackID != GetInvalidDelayID() {
    delaySystem.CancelCallback(this.m_transitionUpdateCallbackID);
    this.m_transitionUpdateCallbackID = GetInvalidDelayID();
    // FTLog("VehicleNitroSystem: Cancelled existing transition callback.");
  }

  // Store original values ONLY if we aren't already transitioning
  if !this.m_isTransitioning {
    // --- TPP Originals (if component exists) ---
    if hasTppCamera && IsDefined(this.m_cachedVehTPPCamera) {
      this.m_originalFOV = this.m_cachedVehTPPCamera.fov;
      this.m_originalMotionBlurScale = this.m_cachedVehTPPCamera.motionBlurScale;
      this.m_currentFOV = this.m_originalFOV;
      this.m_currentBlur = this.m_originalMotionBlurScale;
      // FTLog(s"VehicleNitroSystem: Storing Original TPP Values - FOV: \(this.m_originalFOV), Blur: \(this.m_originalMotionBlurScale)");
    } else {
       // Handle case where TPP camera might not be active/found but FPP is
       this.m_originalFOV = 50.0; // Or some other default/indicator
       this.m_originalMotionBlurScale = 1.0;
       this.m_currentFOV = 55.0;
       this.m_currentBlur = 1.0;
    }

    // --- FPP Originals (if component exists) ---
    if IsDefined(fppCamera) {
      this.m_originalFppFOV = fppCamera.GetFOV();
      this.m_originalFppMotionBlurScale = fppCamera.motionBlurScale;
      this.m_currentFppFOV = this.m_originalFppFOV;
      this.m_currentFppMotionBlurScale = this.m_originalFppMotionBlurScale;
      // FTLog(s"VehicleNitroSystem: Storing Original FPP Values - FOV: \(this.m_originalFppFOV), Blur: \(this.m_originalFppMotionBlurScale)");
    } else {
       this.m_originalFppFOV = 50.0; // Or some other default/indicator
       this.m_originalFppMotionBlurScale = 1.0;
       this.m_currentFppFOV = 55.0;
       this.m_currentFppMotionBlurScale = 1.0;
       // FTLog("VehicleNitroSystem: WARNING - FPP Camera component not found when storing originals.");
    }
    // --- End FPP Originals ---
  }

  // --- Setup NEW transition parameters ---
  this.m_transitionStartTime = currentTime;
  this.m_transitionDuration = 0.6; // Activation duration (adjust as needed)

  let nitroSystem = GameInstance.GetScriptableSystemsContainer(this.GetVehicle().GetGame()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;

  // TPP Targets
  this.m_transitionStartFOV = this.m_currentFOV;
  this.m_transitionStartBlur = this.m_currentBlur;
  this.m_transitionTargetFOV = this.m_originalFOV + nitroSystem.tppFOVIntensity; // TPP Increase
  this.m_transitionTargetBlur = this.m_originalMotionBlurScale + VehicleNitroSystem.GetMotionBlurValue(this.m_motionBlurLevel); // TPP Blur Increase

  // FPP Targets
  this.m_transitionStartFppFOV = this.m_currentFppFOV;
  this.m_transitionStartFppMotionBlurScale = this.m_currentFppMotionBlurScale;
  this.m_transitionTargetFppFOV = this.m_originalFppFOV + nitroSystem.fppFOVIntensity; // Smaller FPP FOV Increase
  this.m_transitionTargetFppMotionBlurScale = this.m_originalFppMotionBlurScale + VehicleNitroSystem.GetMotionBlurValue(this.m_motionBlurLevel); // Smaller FPP Blur Increase (adjust)

  this.m_isTransitioning = true;

  // FTLog(s"VehicleNitroSystem: Starting INCREASE transition. TPP StartFOV: \(this.m_transitionStartFOV) -> TargetFOV: \(this.m_transitionTargetFOV)");
  // FTLog(s"VehicleNitroSystem: Starting INCREASE transition. FPP StartFOV: \(this.m_transitionStartFppFOV) -> TargetFOV: \(this.m_transitionTargetFppFOV)");

  // --- Schedule the FIRST update callback ---
  let updateCallback = Callback.Create(this, n"UpdateCameraTransitionCallback");
  this.m_transitionUpdateCallbackID = delaySystem.DelayCallback(updateCallback, 0.0);

  if this.m_transitionUpdateCallbackID == GetInvalidDelayID() {
    // FTLog("VehicleNitroSystem: ERROR - Failed to schedule initial transition update callback!");
    this.m_isTransitioning = false; // Failed to start
  } else {
     // FTLog("VehicleNitroSystem: Scheduled initial transition update.");
  }
}

// --- Start the "Decrease" Transition ---
@addMethod(VehicleComponent)
private func RemoveCameraBoom() -> Void {
  // FTLog("VehicleNitroSystem: Requesting RemoveCameraBoom");

  // --- Get FPP Camera ---
  let player = GetPlayer(this.GetVehicle().GetGame());
   if !IsDefined(player) { return; } // Need player for FPP camera
   // No need to get fppCamera here, will get it in Update if needed

  // Ensure TPP camera is cached
  let hasTppCamera = this.CachePlayerCameraComponent();

  let delaySystem = GameInstance.GetDelaySystem(this.GetVehicle().GetGame());
  let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));

  // Cancel any ongoing transition first
  if this.m_transitionUpdateCallbackID != GetInvalidDelayID() {
    delaySystem.CancelCallback(this.m_transitionUpdateCallbackID);
    this.m_transitionUpdateCallbackID = GetInvalidDelayID();
    // FTLog("VehicleNitroSystem: Cancelled existing transition callback.");
  }

  // Ensure original values are set (attempt fallback if necessary)
  if hasTppCamera && IsDefined(this.m_cachedVehTPPCamera) && this.m_originalFOV == 0.0 {
     this.m_originalFOV = this.m_cachedVehTPPCamera.fov - 20.0; // Estimate original if lost
     this.m_originalMotionBlurScale = this.m_cachedVehTPPCamera.motionBlurScale - 25.0; // Estimate original
     // FTLog("VehicleNitroSystem: WARNING - Original TPP FOV/Blur was 0. Estimated fallback values.");
  }
  // Add fallback for FPP too? Might be less reliable as player could change FOV slider
  // For now, assume original FPP values were stored correctly earlier.


  // --- Setup NEW transition parameters ---
  this.m_transitionStartTime = currentTime;
  this.m_transitionDuration = 1.2; // Deactivation duration (adjust as needed)

  // TPP Targets
  this.m_transitionStartFOV = this.m_currentFOV;
  this.m_transitionStartBlur = this.m_currentBlur;
  this.m_transitionTargetFOV = this.m_originalFOV; // Target is the original TPP FOV
  this.m_transitionTargetBlur = this.m_originalMotionBlurScale; // Target is the original TPP Blur

  // FPP Targets
  this.m_transitionStartFppFOV = this.m_currentFppFOV;
  this.m_transitionStartFppMotionBlurScale = this.m_currentFppMotionBlurScale;
  this.m_transitionTargetFppFOV = this.m_originalFppFOV; // Target is the original FPP FOV
  this.m_transitionTargetFppMotionBlurScale = this.m_originalFppMotionBlurScale; // Target is the original FPP Blur

  this.m_isTransitioning = true;

  // FTLog(s"VehicleNitroSystem: Starting DECREASE transition. TPP StartFOV: \(this.m_transitionStartFOV) -> TargetFOV: \(this.m_transitionTargetFOV)");
  // FTLog(s"VehicleNitroSystem: Starting DECREASE transition. FPP StartFOV: \(this.m_transitionStartFppFOV) -> TargetFOV: \(this.m_transitionTargetFppFOV)");

  // --- Schedule the FIRST update callback ---
  let updateCallback = Callback.Create(this, n"UpdateCameraTransitionCallback");
  // Schedule with a small delay to ensure it runs after state is set
  this.m_transitionUpdateCallbackID = delaySystem.DelayCallback(updateCallback, 0.0);

  if this.m_transitionUpdateCallbackID == GetInvalidDelayID() {
    // FTLog("VehicleNitroSystem: ERROR - Failed to schedule initial transition update callback!");
    this.m_isTransitioning = false; // Failed to start
  } else {
     // FTLog("VehicleNitroSystem: Scheduled initial transition update.");
  }
}


// --- The Recurring Update Callback ---
@addMethod(VehicleComponent)
private cb func UpdateCameraTransitionCallback() -> Void {
  // Mark callback as consumed immediately
  this.m_transitionUpdateCallbackID = GetInvalidDelayID();

  // --- Get FPP Camera ---
  let player = GetPlayer(this.GetVehicle().GetGame());
   // Bail if no player (needed for FPP) or if not transitioning
  if !IsDefined(player) || !this.m_isTransitioning {
      this.m_isTransitioning = false;
      return;
  }
  let fppCamera = player.GetFPPCameraComponent();
  // --- End Get FPP Camera ---

  // Check TPP Cache validity (only if we intend to modify TPP)
  let tppCamValid = IsDefined(this.m_cachedVehTPPCamera);
  // Check FPP validity
  let fppCamValid = IsDefined(fppCamera);

  // Bail if NO cameras are valid to modify
  if !tppCamValid && !fppCamValid {
      FTLog("UpdateCameraTransitionCallback: Bailing - No valid TPP or FPP camera found.");
      this.m_isTransitioning = false;
      return;
  }

  let delaySystem = GameInstance.GetDelaySystem(this.GetVehicle().GetGame());
  let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));

  // Calculate progress
  let elapsedTime = currentTime - this.m_transitionStartTime;
  let rawProgress = ClampF(elapsedTime / this.m_transitionDuration, 0.0, 1.0);

  // Determine easing mode
  let easedProgress: Float;
  let isDecreasing = this.m_transitionTargetFOV < this.m_transitionStartFOV || this.m_transitionTargetFppFOV < this.m_transitionStartFppFOV;

  if isDecreasing {
      easedProgress = rawProgress; // Linear for outro
      // FTLog(s"  Easing Mode: Linear (Remove)");
  } else {
      // EaseInOutQuad for intro
      if rawProgress < 0.5 {
          easedProgress = 2.0 * rawProgress * rawProgress;
      } else {
          easedProgress = 1.0 - PowF(-2.0 * rawProgress + 2.0, 2.0) / 2.0;
      }
      // FTLog(s"  Easing Mode: EaseInOutQuad (Add)");
  }

  // --- Interpolate and Apply TPP (if valid) ---
  if tppCamValid {
    this.m_currentFOV = LerpF(easedProgress, this.m_transitionStartFOV, this.m_transitionTargetFOV);
    this.m_currentBlur = LerpF(easedProgress, this.m_transitionStartBlur, this.m_transitionTargetBlur);
    this.m_cachedVehTPPCamera.fov = this.m_currentFOV;
    this.m_cachedVehTPPCamera.motionBlurScale = this.m_currentBlur;
    // FTLog(s"  Applied TPP FOV: \(this.m_currentFOV), Blur: \(this.m_currentBlur)");
  }
  // --- End TPP ---

  // --- Interpolate and Apply FPP (if valid) ---
  if fppCamValid {
    this.m_currentFppFOV = LerpF(easedProgress, this.m_transitionStartFppFOV, this.m_transitionTargetFppFOV);
    this.m_currentFppMotionBlurScale = LerpF(easedProgress, this.m_transitionStartFppMotionBlurScale, this.m_transitionTargetFppMotionBlurScale);
    fppCamera.SetFOV(this.m_currentFppFOV);
    fppCamera.motionBlurScale = this.m_currentFppMotionBlurScale;
    // FTLog(s"  Applied FPP FOV: \(this.m_currentFppFOV), Blur: \(this.m_currentFppMotionBlurScale)");
  }
  // --- End FPP ---


  // Check if transition finished
  if rawProgress >= 1.0 {
    // FTLog("VehicleNitroSystem: Transition complete.");
    // Snap TPP
    if tppCamValid {
        this.m_currentFOV = this.m_transitionTargetFOV;
        this.m_currentBlur = this.m_transitionTargetBlur;
        this.m_cachedVehTPPCamera.fov = this.m_currentFOV;
        this.m_cachedVehTPPCamera.motionBlurScale = this.m_currentBlur;
    }
    // Snap FPP
    if fppCamValid {
        this.m_currentFppFOV = this.m_transitionTargetFppFOV;
        this.m_currentFppMotionBlurScale = this.m_transitionTargetFppMotionBlurScale;
        fppCamera.SetFOV(this.m_currentFppFOV);
        (fppCamera as entCameraComponent).motionBlurScale = this.m_currentFppMotionBlurScale;
    }

    this.m_isTransitioning = false;
  } else {
    // Transition not finished, schedule the next update
    let updateCallback = Callback.Create(this, n"UpdateCameraTransitionCallback");
    this.m_transitionUpdateCallbackID = delaySystem.DelayCallback(updateCallback, 0.0);

    if this.m_transitionUpdateCallbackID == GetInvalidDelayID() {
      // FTLog("VehicleNitroSystem: ERROR - Failed to schedule NEXT transition update callback! Transition halted.");
      this.m_isTransitioning = false;
    }
  }
}

/* HUD Progress Bar Stuff */

@addField(VehicleComponent)
private let m_enterDelay: Float;

@addField(VehicleComponent)
private let m_exitDelay: Float;

@addField(VehicleComponent)
private let m_showProgressBarCallbackID: DelayID;

@addField(VehicleComponent)
private let m_hideProgressBarCallbackID: DelayID;

@addMethod(VehicleComponent)
private func SetEnterExitDelays() -> Void {
  let vehicleRecord: ref<Vehicle_Record>;
  VehicleComponent.GetVehicleRecord(this.GetVehicle(), vehicleRecord);
  let vehDatapackage = vehicleRecord.VehDataPackage();
  this.m_enterDelay = vehDatapackage.Entering();
  this.m_exitDelay = vehDatapackage.ExitDelay();
}

@addMethod(VehicleComponent)
private func ScheduleShowProgressBarCallback() -> Void {
  if this.m_showProgressBarCallbackID != GetInvalidDelayID() { return; }
  
  let gameInstance = this.GetVehicle().GetGame();
  let delaySystem = GameInstance.GetDelaySystem(gameInstance);
  let callback = Callback.Create(this, n"ShowProgressBarCallback");
  
  // Use the vehicle's enter animation delay
  this.m_showProgressBarCallbackID = delaySystem.DelayCallback(callback, this.m_enterDelay + 0.3);
  
  if this.m_showProgressBarCallbackID == GetInvalidDelayID() {
    FTLog("VehicleNitroSystem: ERROR - Failed to schedule show progress bar callback!");
  }
}

@addMethod(VehicleComponent)
private func CancelShowProgressBarCallback() -> Void {
  if this.m_showProgressBarCallbackID != GetInvalidDelayID() {
    let gameInstance = this.GetVehicle().GetGame();
    let delaySystem = GameInstance.GetDelaySystem(gameInstance);
    delaySystem.CancelCallback(this.m_showProgressBarCallbackID);
    this.m_showProgressBarCallbackID = GetInvalidDelayID();
  }
}

@addMethod(VehicleComponent)
private cb func ShowProgressBarCallback() -> Void {
  this.m_showProgressBarCallbackID = GetInvalidDelayID();
  
  let gameInstance = this.GetVehicle().GetGame();
  let progressBarSystem = GetProgressBarInputSystem(gameInstance);
  
  if IsDefined(progressBarSystem) {
    // Show the progress bar with vehicle icon after the enter delay
    progressBarSystem.ShowProgressBar(this.m_currentVehicleIconPart);
    this.UpdateCustomNitroUI();
  }
}

@addMethod(VehicleComponent)
private func ScheduleHideProgressBarCallback() -> Void {
  if this.m_hideProgressBarCallbackID != GetInvalidDelayID() { return; }
  
  let gameInstance = this.GetVehicle().GetGame();
  let delaySystem = GameInstance.GetDelaySystem(gameInstance);
  let callback = Callback.Create(this, n"HideProgressBarCallback");
  
  // Use the vehicle's exit animation delay
  this.m_hideProgressBarCallbackID = delaySystem.DelayCallback(callback, this.m_exitDelay);
  
  if this.m_hideProgressBarCallbackID == GetInvalidDelayID() {
    FTLog("VehicleNitroSystem: ERROR - Failed to schedule hide progress bar callback!");
  }
}

@addMethod(VehicleComponent)
private func CancelHideProgressBarCallback() -> Void {
  if this.m_hideProgressBarCallbackID != GetInvalidDelayID() {
    let gameInstance = this.GetVehicle().GetGame();
    let delaySystem = GameInstance.GetDelaySystem(gameInstance);
    delaySystem.CancelCallback(this.m_hideProgressBarCallbackID);
    this.m_hideProgressBarCallbackID = GetInvalidDelayID();
  }
}

@addMethod(VehicleComponent)
private cb func HideProgressBarCallback() -> Void {
  this.m_hideProgressBarCallbackID = GetInvalidDelayID();
  
  let gameInstance = this.GetVehicle().GetGame();
  let progressBarSystem = GetProgressBarInputSystem(gameInstance);
  
  if IsDefined(progressBarSystem) {
    // Hide the progress bar after the exit delay
    progressBarSystem.HideProgressBar();
  }
}

/* Key Listeners */

@addMethod(VehicleComponent)
private func SetThrottleKeyListeners() -> Void {
  let nitroSystem = GameInstance.GetScriptableSystemsContainer(this.GetVehicle().GetGame()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
  if IsDefined(nitroSystem) {
    
    let callbackSystem = GameInstance.GetCallbackSystem();
    // Always unregister previous first to handle settings changes
    callbackSystem.UnregisterCallback(n"Input/Key", this, n"OnNitroKeyInput");
    let callbackHandle = callbackSystem.RegisterCallback(n"Input/Key", this, n"OnNitroKeyInput");
    
    let keysRegisteredCount = 0;

    if nitroSystem.useSeparateKBMControllerBinds {
        // --- Separate Bindings Mode ---
        let keyKBM = nitroSystem.GetNitroActivationKeyForVehicle(this.m_isBike, false); // Get KBM key
        let keyController = nitroSystem.GetNitroActivationKeyForVehicle(this.m_isBike, true); // Get Controller key
        
        FTLog(s"SetThrottleKeyListeners (Separate): Registering KBM=\(keyKBM), Controller=\(keyController)");

        if this.IsValidKey(keyKBM) {
            callbackHandle.AddTarget(InputTarget.Key(keyKBM));
            keysRegisteredCount += 1;
        }
        // Add controller key only if it's valid AND different from the KBM key
        if this.IsValidKey(keyController) && NotEquals(keyController, keyKBM) {
             callbackHandle.AddTarget(InputTarget.Key(keyController));
             keysRegisteredCount += 1;
        }
        // Clear the single key variable as it's not used in this mode
        this.m_nitroKeyToListen = EInputKey.IK_None;

    } else {
        // --- Combined Bindings Mode ---
        this.m_nitroKeyToListen = nitroSystem.GetNitroActivationKeyForVehicle(this.m_isBike, false); // Get the combined key (isGamepad flag doesn't matter here)
        FTLog(s"SetThrottleKeyListeners (Combined): Registering Key=\(this.m_nitroKeyToListen)");
        
        if this.IsValidKey(this.m_nitroKeyToListen) {
             callbackHandle.AddTarget(InputTarget.Key(this.m_nitroKeyToListen));
             keysRegisteredCount += 1;
        }
    }

    FTLog(s"SetThrottleKeyListeners: Registered \(keysRegisteredCount) listeners.");

  } else {
      FTLog("SetThrottleKeyListeners: ERROR - NitroSystem not found!");
  }
}


@addMethod(VehicleComponent)
protected cb func OnNitroKeyInput(evt: ref<KeyInputEvent>) -> Void {
    // --- Initial Checks ---
    let nitroSystem = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
    if !IsDefined(nitroSystem) || !nitroSystem.enableNitro || this.m_isTemporarilyDisabled || this.m_isMountedOnQuestVehicle {
        return;
    }
    if nitroSystem.IsPlayerInAnyMenu() || nitroSystem.IsInPhotomode() {
        if this.m_isNitroActive { this.DeactivateNitro(); }
        return;
    }

    // --- Get Event Details ---
    let action: EInputAction = evt.GetAction();
    let pressedKey: EInputKey = evt.GetKey(); // Renamed 'key' to 'pressedKey' for clarity

    let pressed = Equals(action, EInputAction.IACT_Press);
    let released = Equals(action, EInputAction.IACT_Release);

    // Only process Press or Release actions
    if !pressed && !released { return; }

    // --- Determine which key *should* have been pressed based on settings and input type ---
    let requiredKey = EInputKey.IK_None;
    let isActualGamepadInput = this.IsPadKey(pressedKey); // Check if the event key is a controller key

    if nitroSystem.useSeparateKBMControllerBinds {
         // Separate mode: Get the specific key based on actual input type
         requiredKey = nitroSystem.GetNitroActivationKeyForVehicle(this.m_isBike, isActualGamepadInput);
        //  FTLog(s"OnNitroKeyInput (Separate): ActualInputGamepad=\(isActualGamepadInput), RequiredKey=\(requiredKey), PressedKey=\(pressedKey)");
    } else {
         // Combined mode: Use the single stored key
         requiredKey = this.m_nitroKeyToListen;
        //  FTLog(s"OnNitroKeyInput (Combined): RequiredKey=\(requiredKey), PressedKey=\(pressedKey)");
    }

    // --- Check if the pressed key matches the required key for this context ---
    if Equals(pressedKey, requiredKey) && this.IsValidKey(requiredKey) {
        // FTLog(s"OnNitroKeyInput: Key Match! Setting m_isNitroKeyPressed to \(pressed)"); // Log moved for clarity
        if pressed {
            // FTLog("VehicleComponent: Nitro key PRESSED"); // Redundant log
            if !this.m_isNitroKeyPressed { // Only trigger on the initial press edge
                // FTLog(s"OnNitroKeyInput: Key Match! Setting m_isNitroKeyPressed to true");
                this.m_isNitroKeyPressed = true;
                this.TryActivateNitroConditional(); // Check if conditions are met to activate
                // FTLog("VehicleComponent: Nitro key PRESSED - TryActivateNitroConditional called"); // Redundant log
            }
        } else if released {
            // FTLog("VehicleComponent: Nitro key RELEASED"); // Redundant log
            if this.m_isNitroKeyPressed { // Only trigger on the release edge
                //  FTLog(s"OnNitroKeyInput: Key Match! Setting m_isNitroKeyPressed to false");
                this.m_isNitroKeyPressed = false;
                if this.m_isNitroActive { // If nitro was active when key was released
                    // FTLog("VehicleComponent: Nitro key released while active. Deactivating.");
                    this.DeactivateNitro();
                }
            }
        }
    } else {
         // Log mismatch if required key was valid but didn't match pressed key
         if this.IsValidKey(requiredKey) {
            FTLog(s"OnNitroKeyInput: Key Mismatch. Pressed=\(pressedKey), Required=\(requiredKey)");
         }
         // Otherwise, the key press wasn't relevant (e.g., a different key entirely), so no log needed.
    }
}


@addMethod(VehicleComponent)
private func IsValidKey(key: EInputKey) -> Bool {
    return NotEquals(key, EInputKey.IK_None);
}

@addMethod(VehicleComponent)
protected cb func OnNitroAccelerationStateUpdate(evt: ref<NitroAccelerationStateEvent>) -> Void {
    // Check if the event is for THIS specific vehicle instance
    if evt.vehicleID != this.GetVehicle().GetEntityID() {
        return; // Ignore event meant for another vehicle
    }
    // FTLog(s"OnNitroAccelerationStateUpdate: \(evt.isPressed)");
    // FTLog(s"VehicleComponent [\(this.GetVehicle().GetEntityID())]: Received NitroAccelerationStateEvent - Pressed: \(evt.isPressed)");

    let wasPressed = this.m_isAccelerateActionPressed;
    this.m_isAccelerateActionPressed = evt.isPressed;

    // If acceleration stopped while nitro was active, deactivate nitro
    // (Do this *before* trying to activate on press)
    if !this.m_isAccelerateActionPressed && this.m_isNitroActive {
        // FTLog(s"VehicleComponent [\(this.GetVehicle().GetEntityID())]: Acceleration released via event while nitro active. Deactivating.");
        this.DeactivateNitro();
    }

    // If acceleration was just pressed and the nitro key is already held, try activating
    if this.m_isAccelerateActionPressed && !wasPressed && this.m_isNitroKeyPressed {
        // FTLog(s"VehicleComponent [\(this.GetVehicle().GetEntityID())]: Accel event pressed while nitro key held. Trying activation.");
        this.TryActivateNitroConditional();
    }
}

/* Mounting Event: Initialize Nitro State. Some settings are only set on mounting. TODO: Revist this */

@wrapMethod(VehicleComponent)
protected cb func OnMountingEvent(evt: ref<MountingEvent>) -> Bool {

  let result: Bool = wrappedMethod(evt);

  let questSystem: ref<QuestsSystem> = GameInstance.GetQuestsSystem(this.GetVehicle().GetGame());

  let gameInstance: GameInstance = this.GetVehicle().GetGame();
  let mountChild: ref<GameObject> = GameInstance.FindEntityByID(gameInstance, evt.request.lowLevelMountingInfo.childId) as GameObject;
  let vehicle: wref<VehicleObject> = this.GetVehicle() as VehicleObject;

  if mountChild.IsPlayer() {

    let isDriverSlot: Bool = VehicleComponent.IsDriverSlot(evt.request.lowLevelMountingInfo.slotId.id);
    let vehicleRecord: wref<Vehicle_Record> = TweakDBInterface.GetVehicleRecord(this.GetVehicle().GetRecordID());
    let vehTDBRecordString = TDBID.ToStringDEBUG(this.GetVehicle().GetRecordID());
    let nitroSystem = GameInstance.GetScriptableSystemsContainer(gameInstance).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;

    let isQuestVehicle = false;
    if vehicle == (vehicle as AVObject) {
        isQuestVehicle = true;
        // FTLog(s"NitroBoost: OnMountingEvent: Detected AVObject.");
    } else {
        let vehTDBRecordString = TDBID.ToStringDEBUG(this.GetVehicle().GetRecordID());
        // FTLog(s"NitroBoost: OnMountingEvent: Checking Vehicle Record ID: \(vehTDBRecordString)");
        if StrContains(vehTDBRecordString, "q306") // killing moon
            || StrContains(vehTDBRecordString, "basilisk")
            || StrContains(vehTDBRecordString, "q001")
            || StrContains(vehTDBRecordString, "sq025") 
            || StrContains(vehTDBRecordString, "sq028")
            || StrContains(vehTDBRecordString, "sq012")
            || StrContains(vehTDBRecordString, "sq004") 
            || StrContains(vehTDBRecordString, "sq011") 
            || StrContains(vehTDBRecordString, "q101") // The Pickup
            || StrContains(vehTDBRecordString, "reed_car")
            || StrContains(vehTDBRecordString, "Vehicle.sts_") // gig, street story vehicles
            || StrContains(vehTDBRecordString, "Vehicle.ma_") // side stuff
        {
            isQuestVehicle = true;
            FTLog(s"NitroBoost: OnMountingEvent: Detected Quest Vehicle. Disabling Nitro.");
        }
    }
    nitroSystem.SetMountedOnQuestVehicle(isQuestVehicle); // Set the combined result

    if isDriverSlot {
      this.SetVehicleMetadata();
      this.SetNitrousSFX(); 
      this.SetExhaustColor();
      this.SetThrottleKeyListeners();
      GameInstance.GetCallbackSystem().RegisterCallback(NitroAccelerationStateEvent.GetEventName(), this, n"OnNitroAccelerationStateUpdate");
      this.CachePlayerCameraComponent();
      // FTLog(s"VehicleNitroSystem: Player mounted in driver seat. Initializing Nitro state.");

      this.m_nitroParams = NitroPresetHelper.LoadVehicleSpecificParams(this.GetVehicle());
      // FTLog(s"OnMountingEvent: Final params loaded by Helper - FuelCap=\(this.m_nitroParams.NITRO_FUEL_CAPACITY), BaseForce=\(this.m_nitroParams.NITRO_BASE_FORCE), Mult=\(this.m_nitroParams.NITRO_GLOBAL_MULTIPLIER)");

      this.CancelShowProgressBarCallback();
      this.SetEnterExitDelays();

      // +++ Get vehicle icon part name directly from TweakDB +++
      if IsDefined(vehicleRecord) {
          let iconRecord = vehicleRecord.Icon(); // Get UIIcon TweakDBID
        //   let iconRecord: wref<UIIcon_Record> = TweakDBInterface.GetUIIconRecord(iconID);
          if IsDefined(iconRecord) {
              this.m_currentVehicleIconPart = iconRecord.AtlasPartName();
              // FTLog(s"OnMountingEvent: Vehicle Icon Part Name from TweakDB: \(this.m_currentVehicleIconPart)");
          } else {
              // FTLog(s"OnMountingEvent: ERROR - Could not get UIIcon_Record for ID");
              this.m_currentVehicleIconPart = n"menu_icon_car"; // Fallback
          }
      } else {
          // FTLog(s"OnMountingEvent: ERROR - Could not get Vehicle_Record for ID: \(this.GetVehicle().GetRecordID())");
          this.m_currentVehicleIconPart = n"menu_icon_car"; // Fallback
      }

      if IsDefined(nitroSystem) {
        this.m_motionBlurLevel = nitroSystem.GetCurrentMotionBlurLevel();
        this.m_exhaustColor = nitroSystem.GetExhaustColor();
        this.m_enableNitroSound = nitroSystem.IsNitroSoundEnabled();
        this.m_nitroSoundVolume = nitroSystem.GetCurrentNitroSoundVolume();
        this.m_nitroRegenMultiplier = nitroSystem.GetNitroRegenMultiplier();
        this.m_nitroBoostMultiplier = nitroSystem.GetNitroBoostMultiplier();
        this.m_isTemporarilyDisabled = nitroSystem.IsTemporarilyDisabled();
        this.m_isMountedOnQuestVehicle = nitroSystem.IsMountedOnQuestVehicle();
        // // FTLog(s"OnMountingEvent: Read Gameplay Settings - Regen Mult: \(this.m_nitroRegenMultiplier), Boost Mult: \(this.m_nitroBoostMultiplier), Pause Override: \(this.m_nitroRegenPauseDurationOverride)s");
        // FTLog(s"OnMountingEvent: Read Gameplay Settings - Regen Mult: \(this.m_nitroRegenMultiplier), Boost Mult: \(this.m_nitroBoostMultiplier), Pause Mult: \(this.m_nitroRegenPauseMultiplier)");
      } else {
         // FTLog(s"OnMountingEvent: Nitro system not found. Using default motion blur/sound settings.");
         this.m_motionBlurLevel = MotionBlurLevel.Low;
         this.m_enableNitroSound = true;
         // +++ Use the default volume if system not found +++
         this.m_nitroSoundVolume = 0.6; // Default volume
         // +++ Use default gameplay multipliers if system not found +++
         this.m_nitroRegenMultiplier = 1.0;
         this.m_nitroBoostMultiplier = 1.0;
        //  this.m_nitroRegenPauseMultiplier = 1.0; // Restore multiplier default
         // +++ Use default pause override value +++
         // this.m_nitroRegenPauseDurationOverride = 0.0; // Default to use vehicle base
      }

      let isNitroGloballyEnabled = IsDefined(nitroSystem) && nitroSystem.enableNitro;

      // Initialize state vars
      this.m_nitroFuelRemaining = isNitroGloballyEnabled ? this.m_nitroParams.NITRO_FUEL_CAPACITY : 0.0;
      this.m_nitroCooldownEndTime = 0.0;
      this.m_nitroRegenPauseEndTime = 0.0;
      this.m_lastCombatRegenTime = 0.0;
      this.m_isNitroActive = false;
      this.m_nitroCallbackID = GetInvalidDelayID();
      this.m_nitroRegenCallbackID = GetInvalidDelayID();
      this.m_nitroFuelAtActivation = 0.0;
      this.m_burnoutRegenCooldownEndTime = 0.0;
      this.m_consecutiveBurnoutCount = 0;
      // Ensure burnout disabled if nitro system disabled
      if (!isNitroGloballyEnabled) { this.m_nitroParams.NITRO_BURNOUT_ENABLED = false; }

      if (isNitroGloballyEnabled && !this.m_isTemporarilyDisabled && !this.m_isMountedOnQuestVehicle) {
        // FTLog(s"VehicleNitroSystem: Nitro enabled. Params loaded - Fuel: \(this.m_nitroFuelRemaining), Passive Regen: \(this.m_nitroParams.NITRO_FUEL_REGENERATION_RATE)");
         // <<< Show and Update the Custom UI Bar >>>
         let progressBarSystem = GetProgressBarInputSystem(gameInstance);
         if IsDefined(progressBarSystem) {
             this.UpdateCustomNitroUI();         // Send initial state
             this.ScheduleShowProgressBarCallback();

         } else {
             // FTLog(s"OnMountingEvent: AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH ProgressBarInputSystem not found!");
         }
         this.ScheduleNextNitroRegenCallback();
         GameInstance.GetCallbackSystem().RegisterCallback(NitroRefuelEvent.GetEventName(), this, n"OnNitroRefuelRequest");
      } else {
           // FTLog(s"OnMountingEvent: Nitro system disabled. Nitro unavailable.");
            // <<< Hide the Custom UI Bar if disabled >>>
            let progressBarSystem = GetProgressBarInputSystem(gameInstance);
            if IsDefined(progressBarSystem) {
                progressBarSystem.HideProgressBar();
            }
      }
    }
  }
  return result;
}


@wrapMethod(VehicleComponent)
protected cb func OnUnmountingEvent(evt: ref<UnmountingEvent>) -> Bool {
  let gameInstance: GameInstance = this.GetVehicle().GetGame();
  let mountChild: ref<GameObject> = GameInstance.FindEntityByID(gameInstance, evt.request.lowLevelMountingInfo.childId) as GameObject;
  let playerUnmountedFromDriverSeat = false;

  if IsDefined(mountChild) && mountChild.IsPlayer() {
    let isDriverSlot: Bool = VehicleComponent.IsDriverSlot(evt.request.lowLevelMountingInfo.slotId.id);
    if isDriverSlot {
      // FTLog(s"VehicleNitroSystem: Player unmounting from driver seat. Cleaning up Nitro state.");
      playerUnmountedFromDriverSeat = true; // Set flag before deactivating
      GameInstance.GetCallbackSystem().UnregisterCallback(NitroAccelerationStateEvent.GetEventName(), this, n"OnNitroAccelerationStateUpdate");

      this.DeactivateNitro(); // Stops effects, sounds, callbacks

      if this.m_enableNitroSound {
          // // FTLog("OnUnmountingEvent: Performing extra safety Stop() on unmount.");
          GameInstance.GetAudioSystemExt(gameInstance).Stop(this.m_nitroSFX, GetPlayer(gameInstance).GetEntityID(), n"V", LinearTween.Immediate(0.1));
      }

      this.ClearPlayerCameraCache();
      this.CancelNitroRegenCallback(); // Stop passive regen loop

      // Reset state variables
      this.m_nitroEffectNames = [];
      this.m_nitroSFX = n"empty_mchedda";
      this.m_isNitroActive = false;
      this.m_nitroFuelRemaining = 0.0;
      this.m_nitroCooldownEndTime = 0.0;
      this.m_nitroRegenPauseEndTime = 0.0;
      this.m_lastCombatRegenTime = 0.0;
      this.m_nitroRegenMultiplier = 1.0; // Reset cached value
      this.m_nitroBoostMultiplier = 1.0; // Reset cached value
      //   this.m_nitroRegenPauseMultiplier = 1.0; // Restore multiplier reset
      // +++ Reset cached pause override +++
      // this.m_nitroRegenPauseDurationOverride = 0.0;

      // Unregister refuel listener
      GameInstance.GetCallbackSystem().UnregisterCallback(NitroRefuelEvent.GetEventName(), this, n"OnNitroRefuelRequest");
      
      GameInstance.GetCallbackSystem().UnregisterCallback(n"Input/Key", this, n"OnNitroKeyInput");

      this.CancelHideProgressBarCallback();
      
      // eh no explicit delay needed. It happens with a delay anyway
      let progressBarSystem = GetProgressBarInputSystem(gameInstance);
      if IsDefined(progressBarSystem) {
          progressBarSystem.HideProgressBar();
      }
    }
  }

  return wrappedMethod(evt);
}

@addMethod(VehicleComponent)
private func TryActivateNitroConditional() -> Void {
    // FTLog(s"VehicleComponent: TryActivateNitroConditional called. NitroKey: \(this.m_isNitroKeyPressed), AccelKey: \(this.m_isAccelerateKeyPressed), Active: \(this.m_isNitroActive)");
    let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));
    let cond_nitroKeyPressed = this.m_isNitroKeyPressed;
    let cond_accelActionPressed = this.m_isAccelerateActionPressed;
    let cond_notActive = !this.m_isNitroActive;
    let cond_cooldown = currentTime >= this.m_nitroCooldownEndTime;
    let cond_fuel = this.m_nitroFuelRemaining > 0.0;
    // FTLog(s"TryActivateNitroConditional Check: NitroKeyDown=\(cond_nitroKeyPressed), AccelActive=\(cond_accelActionPressed), NotRunning=\(cond_notActive), CooldownOK=\(cond_cooldown), HasFuel=\(cond_fuel)");
    // Check all conditions *now* that we know both keys might be pressed
    if this.m_isNitroKeyPressed &&          // Nitro key is held
       !this.m_isNitroActive &&              // Nitro isn't already active
       this.m_isAccelerateActionPressed &&   // Accelerate action is pressed
       currentTime >= this.m_nitroCooldownEndTime && // Not on cooldown
       this.m_nitroFuelRemaining > 0.0 {   // Has fuel

        // FTLog("VehicleComponent: All conditions met. Activating Nitro!");
        this.ActivateNitroInternalLogic(); // Call the actual activation steps
    } else {
        // FTLog("VehicleComponent: Activation conditions NOT met.");
    }
}



@addMethod(VehicleComponent)
private func UpdateCustomNitroUI() -> Void {
  // No need to check player driving here, this is called contextually

  let nitroState: NitroState = this.GetNitroState(); // Use existing state getter
  let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));

  // +++ Determine Cooldown/Pause State +++
  let isOnCooldown = nitroState.cooldownRemaining > 0.01; // Check if on activation cooldown
  // Regen pause is only active if NOT on activation cooldown
  let isRegenPaused = !isOnCooldown && (currentTime < this.m_nitroRegenPauseEndTime);
  // +++ END State Determination +++

  // +++ DEBUG LOG +++
  // FTLog(s"[NitroUpdateUI] Sending State - Fuel: \(nitroState.fuelPercent), Cooldown: \(isOnCooldown), Paused: \(isRegenPaused)");
  // +++ END DEBUG +++

  // Get the progress bar system
  let progressBarSystem = GetProgressBarInputSystem(this.GetVehicle().GetGame());


  if IsDefined(progressBarSystem) {
      // Call the system's method to update the progress
      // Pass fuelPercent directly, let the UI system handle colors/text
      // +++ Pass the cooldown/pause state booleans +++
      progressBarSystem.SetProgressValue(nitroState.fuelPercent, isOnCooldown, isRegenPaused, true);

  } else {
      // Only log if the system isn't found, reduce spam otherwise
      // FTLog(s"UpdateCustomNitroUI: AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH ProgressBarInputSystem not found!");
  }
}

@addMethod(VehicleComponent)
public func ActivateNitroInternalLogic() -> Void {
  // FTLog("ActivateNitroInternalLogic: --- Entered function ---"); // <<< ADD THIS LOG

  // +++ Extra Safety Stop +++
  // Ensure any lingering sound is stopped before trying to activate again.
  if this.m_enableNitroSound {
      // // FTLog("TryActivateNitro: Performing extra safety Stop() before activation.");
      GameInstance.GetAudioSystemExt(GetGameInstance()).Stop(this.m_nitroSFX, GetPlayer(GetGameInstance()).GetEntityID(), n"V", LinearTween.Immediate(0.1)); // Use a very short fade just in case
  }
  // +++ End Extra Safety Stop +++

  // let canActivate = false;
  // let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));
  // if !this.m_isNitroActive &&
  //     currentTime >= this.m_nitroCooldownEndTime &&
  //     this.m_nitroFuelRemaining > 0.0 {
  //     canActivate = true;
  // }
  // if !canActivate { return; }

  this.TriggerCrimeCheck();
  this.TriggerExplosiveCheck();

  // FTLog("VehicleNitroSystem: Activating Nitro!");
  this.m_isNitroActive = true;
  let gameInstance: GameInstance = this.GetVehicle().GetGame();
  let vehicle = this.GetVehicle(); // Get vehicle reference early

  // +++ Setup Effect Paths and Start Motion Blur ONCE at Activation +++
  if IsDefined(vehicle) {
      // --- Modify Effect Paths ---
      this.AddNitrousExhaustEffect(); // Populates m_nitroEffectNames and sets exhaust effect path
      this.AddCameraBoom();
      // GameObjectEffectHelper.StartEffectEvent(vehicle, n"exhaust_start", true);
  } else {
       // FTLog("VehicleNitroSystem: ERROR - Cannot get vehicle to setup effects!");
  }
  // +++ END Effect Path/Motion Blur Setup +++

  // Store fuel level at activation for burnout check
  this.m_nitroFuelAtActivation = this.m_nitroFuelRemaining;

  // Reset burnout counter if starting from nearly empty
  if this.m_nitroFuelAtActivation < (0.01 * this.m_nitroParams.NITRO_FUEL_CAPACITY) {
      this.m_consecutiveBurnoutCount = 0;
  }

  // +++ Check Sound Setting +++
  if this.m_enableNitroSound {
      let ext = new AudioSettingsExt();
      ext.volume = this.m_nitroSoundVolume;
      GameInstance.GetAudioSystemExt(gameInstance).Play(this.m_nitroSFX, GetPlayer(GetGameInstance()).GetEntityID(), n"V", scnDialogLineType.None, ext);
  }
  // +++ END Sound Check +++

  this.ScheduleNextNitroCallback(); // Schedule the first impulse
  // FTLog(s"ActivateNitroInternalLogic: Scheduled first impulse callback. ID: \(this.m_nitroCallbackID)"); // <<< ADD THIS LOG

  this.UpdateCustomNitroUI();
}

@addMethod(VehicleComponent)
public func DeactivateNitro() -> Void {
  if !this.m_isNitroActive { return; }

  // FTLog("VehicleNitroSystem: Deactivating Nitro.");
  let wasFuelRemaining = this.m_nitroFuelRemaining > 0.0;

  this.m_isNitroActive = false;
  this.CancelNitroCallback(); // Stop the impulse loop
  // this.RevertCameraPresetHelper();


  // Reset burnout counter if deactivated manually before empty
  if wasFuelRemaining {
    this.m_consecutiveBurnoutCount = 0;
  }

  // *** Stop VFX / SFX and Reset Paths ***
  let vehicle = this.GetVehicle();
  if IsDefined(vehicle) {
        // --- Stop Exhaust Effects (Implicitly by not calling StartEffectEvent anymore) ---

        // --- Reset Effect Paths ONCE on Deactivation ---
        this.RemoveNitrousExhaustEffect(); // Clears m_nitroEffectNames and resets exhaust effect path
        this.RemoveCameraBoom();

        // +++ Check Sound Setting +++
        if this.m_enableNitroSound {
            let ext = new AudioSettingsExt();
            GameInstance.GetAudioSystemExt(GetGameInstance()).Stop(this.m_nitroSFX, GetPlayer(GetGameInstance()).GetEntityID(), n"V", LinearTween.Immediate(0.3));
        }
  } else {
      // FTLog("VehicleNitroSystem: ERROR - Cannot get vehicle to stop/reset effects!");
  }

  if wasFuelRemaining {
      let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));
      this.m_nitroRegenPauseEndTime = currentTime + this.m_nitroParams.NITRO_REGEN_PAUSE_DURATION;
  }
  this.UpdateCustomNitroUI();
}


@addMethod(VehicleComponent)
private func ScheduleNextNitroCallback() -> Void {
  if this.m_nitroCallbackID != GetInvalidDelayID() { return; }
  let gameInstance = this.GetVehicle().GetGame();
  let delaySystem = GameInstance.GetDelaySystem(gameInstance);
  let callback = Callback.Create(this, n"ApplyNitroImpulseCallback");
  let interval: Float = 0.05;
  this.m_nitroCallbackID = delaySystem.DelayCallback(callback, interval);
  if this.m_nitroCallbackID == GetInvalidDelayID() {
      // FTLog("VehicleNitroSystem: ERROR - Failed to schedule next nitro callback!");
  }
}

@addMethod(VehicleComponent)
private func CancelNitroCallback() -> Void {
  if this.m_nitroCallbackID != GetInvalidDelayID() {
      let gameInstance = this.GetVehicle().GetGame();
      let delaySystem = GameInstance.GetDelaySystem(gameInstance);
      delaySystem.CancelCallback(this.m_nitroCallbackID);
      this.m_nitroCallbackID = GetInvalidDelayID(); // Invalidate the ID
  }
}

@addMethod(VehicleComponent)
private func ScheduleNextNitroRegenCallback() -> Void {
  if this.m_nitroRegenCallbackID != GetInvalidDelayID() { return; } // Don't reschedule if pending
  let gameInstance = this.GetVehicle().GetGame();
  let delaySystem = GameInstance.GetDelaySystem(gameInstance);
  let callback = Callback.Create(this, n"NitroRegenAndCooldownCallback");
  // Regen can happen slightly less frequently than impulse
  let interval: Float = 0.1; // e.g., 10 Hz, maybe make this configurable?

  this.m_nitroRegenCallbackID = delaySystem.DelayCallback(callback, interval);

  if this.m_nitroRegenCallbackID == GetInvalidDelayID() {
      // FTLog("VehicleNitroSystem: ERROR - Failed to schedule next nitro REGEN callback!");
  }
}

@addMethod(VehicleComponent)
private func CancelNitroRegenCallback() -> Void {
  if this.m_nitroRegenCallbackID != GetInvalidDelayID() {
      let gameInstance = this.GetVehicle().GetGame();
      let delaySystem = GameInstance.GetDelaySystem(gameInstance);
      delaySystem.CancelCallback(this.m_nitroRegenCallbackID);
      this.m_nitroRegenCallbackID = GetInvalidDelayID();
      // // FTLog("VehicleNitroSystem: Cancelled nitro REGEN callback.");
  }
}

@addMethod(VehicleComponent)
private cb func NitroRegenAndCooldownCallback() -> Void {
    this.m_nitroRegenCallbackID = GetInvalidDelayID();

    // TODO maybe add check for temp disabled and quest vehicle

    let vehicle: wref<VehicleObject> = this.GetVehicle();
    if !IsDefined(vehicle) { return; }
    let gameInstance = vehicle.GetGame(); // <<< Get game instance

    let player = GetPlayer(gameInstance);
    if !IsDefined(player) { return; }
    let mountInfo: MountingInfo = GameInstance.GetMountingFacility(gameInstance).GetMountingInfoSingleWithObjects(player);
    let isPlayerDrivingThisVehicle = mountInfo.parentId == vehicle.GetEntityID() && VehicleComponent.IsDriverSlot(mountInfo.slotId.id);

    if !isPlayerDrivingThisVehicle { return; }
    if (this.m_nitroParams.NITRO_FUEL_CAPACITY <= 0.0) { this.ScheduleNextNitroRegenCallback(); return; } // Safety

    let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(gameInstance));
    let deltaTime: Float = 0.1;
    let needsUIUpdate = false;

    // --- Determine Regeneration Conditions ---
    let isOnActivationCooldown = currentTime < this.m_nitroCooldownEndTime;
    let isOnRegenPause = currentTime < this.m_nitroRegenPauseEndTime;

    // --- Handle PASSIVE Regeneration ---
    // Conditions: Not boosting AND not on activation cooldown AND not on regen pause
    if (!this.m_isNitroActive && !isOnActivationCooldown && !isOnRegenPause) {
        if (this.m_nitroFuelRemaining < this.m_nitroParams.NITRO_FUEL_CAPACITY) {

            // <<< Apply Regen Multiplier >>>
            let baseRegenRate: Float = this.m_nitroParams.NITRO_FUEL_REGENERATION_RATE;
            let currentRegenRate: Float = baseRegenRate * this.m_nitroRegenMultiplier; // <<< Use cached value
            this.m_nitroFuelRemaining += currentRegenRate * deltaTime;
            this.m_nitroFuelRemaining = MinF(this.m_nitroFuelRemaining, this.m_nitroParams.NITRO_FUEL_CAPACITY); // Clamp
            needsUIUpdate = true;
            // // FTLog(s"NitroRegen: Applying PASSIVE regen (\(currentRegenRate) fuel/sec). Fuel: \(this.m_nitroFuelRemaining)");
        }
    } else {
        // Log why regen was skipped
        // if (this.m_isNitroActive) { // FTLog("NitroRegen: Skipped passive regen (Active Boost)."); }
        // else if (isOnActivationCooldown) { // FTLog("NitroRegen: Skipped passive regen (Activation Cooldown)."); }
        // else if (isOnRegenPause) { // FTLog("NitroRegen: Skipped passive regen (Regen Pause)."); }
    }

    // --- Handle Cooldown/Pause Updates for Blackboard ---
    // Check if Activation Cooldown just ended
    let previousActivationCooldownRemaining = MaxF(0.0, this.m_nitroCooldownEndTime - (currentTime - deltaTime));
    let currentActivationCooldownRemaining = MaxF(0.0, this.m_nitroCooldownEndTime - currentTime);
    if (previousActivationCooldownRemaining > 0.0 && currentActivationCooldownRemaining <= 0.0) {
        needsUIUpdate = true;
         // // FTLog("NitroRegen: Activation Cooldown just ended.");
    }

    // Check if Regen Pause just ended (and we weren't on activation cooldown)
    let previousRegenPauseRemaining = MaxF(0.0, this.m_nitroRegenPauseEndTime - (currentTime - deltaTime));
    let currentRegenPauseRemaining = MaxF(0.0, this.m_nitroRegenPauseEndTime - currentTime);
    if (!isOnActivationCooldown && previousRegenPauseRemaining > 0.0 && currentRegenPauseRemaining <= 0.0) {
         needsUIUpdate = true;
          // // FTLog("NitroRegen: Regen Pause just ended.");
    }

    // Also update if still on activation cooldown (for the UI timer)
    if (currentActivationCooldownRemaining > 0.0 && !this.m_isNitroActive) {
        needsUIUpdate = true;
    }

    // Update ui
    if (needsUIUpdate) {
        this.UpdateCustomNitroUI();
    }

    // Reschedule the next regen check
    this.ScheduleNextNitroRegenCallback();
}

// *** The actual nitro application callback ***
@addMethod(VehicleComponent)
private cb func ApplyNitroImpulseCallback() -> Void {
  // FTLog("ApplyNitroImpulseCallback: --- Entered function ---");
  this.m_nitroCallbackID = GetInvalidDelayID();
  // if !this.m_isNitroActive { return; }

  let vehicle: wref<VehicleObject> = this.GetVehicle();
  if !IsDefined(vehicle) { return; }

  let gameInstance: GameInstance = vehicle.GetGame();
  let deltaTime: Float = 0.05; // Impulse interval. TODO make this variable?

  // *** Consume Fuel ***
  this.m_nitroFuelRemaining -= this.m_nitroParams.NITRO_FUEL_CONSUMPTION_RATE * deltaTime;

  // *** Check for Depletion ***
  if this.m_nitroFuelRemaining <= 0.01 {
      this.m_nitroFuelRemaining = 0.0;
      let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));
      let burnoutDidOccur = false;
      let startFuelThreshold = this.m_nitroParams.NITRO_FUEL_CAPACITY * this.m_nitroParams.NITRO_BURNOUT_THRESHOLD;
      let burnoutConditionMet = this.m_nitroFuelAtActivation >= startFuelThreshold;
      let burnoutRegenReady = currentTime >= this.m_burnoutRegenCooldownEndTime;
      let burnoutEnabledForVehicle = this.m_nitroParams.NITRO_BURNOUT_ENABLED;

      if burnoutEnabledForVehicle && burnoutConditionMet && burnoutRegenReady && this.m_consecutiveBurnoutCount == 0 {
          let ext = new AudioSettingsExt();
          ext.volume = this.m_nitroSoundVolume;
          if this.m_enableNitroSound {
            GameInstance.GetAudioSystemExt(gameInstance).Play(n"misterchedda_nitroboost_burnout", GetPlayer(GetGameInstance()).GetEntityID(), n"V", scnDialogLineType.None, ext);
          }
          this.m_consecutiveBurnoutCount = 1;
          let baseRegenAmount = this.m_nitroParams.NITRO_FUEL_CAPACITY * this.m_nitroParams.NITRO_BURNOUT_REGEN_PERCENT;
          let actualRegenAmount = baseRegenAmount;
          this.m_nitroFuelRemaining = actualRegenAmount;
          this.m_burnoutRegenCooldownEndTime = currentTime + this.m_nitroParams.NITRO_BURNOUT_REGEN_COOLDOWN;
          burnoutDidOccur = true;
          this.UpdateCustomNitroUI();
          this.ScheduleNextNitroCallback(); // Keep going after burnout
      } else {
          this.m_nitroCooldownEndTime = currentTime + this.m_nitroParams.NITRO_COOLDOWN_DURATION;
          this.m_consecutiveBurnoutCount = 0;
          this.UpdateCustomNitroUI();
          this.DeactivateNitro(); // Deactivate on normal depletion
          return; // Stop processing this callback instance
      }
  }

  // *** Update blackboard (if still active) ***
  if this.m_isNitroActive {
      this.UpdateCustomNitroUI();
  } else {
      return; // Deactivated during depletion check
  }

  // +++ Start Exhaust Effects on EVERY Impulse +++
  // Assumes m_nitroEffectNames is populated by AddNitrousExhaustEffect on activation.
  for effectName in this.m_nitroEffectNames {
    // // FTLog(s"ApplyNitroImpulseCallback: Starting exhaust effect '\\(effectName)'"); //
    GameObjectEffectHelper.StartEffectEvent(vehicle, effectName, true);
  }

  // --- Apply Physical Impulse ---
  let reportedMass: Float = vehicle.GetTotalMass();
  let minimumMassThreshold: Float = 1500.0;
  let massToUse: Float = MaxF(reportedMass, minimumMassThreshold);

  let baseForce: Float = this.m_nitroParams.NITRO_BASE_FORCE;
  let multiplier: Float = this.m_nitroParams.NITRO_GLOBAL_MULTIPLIER;
  let effectiveImpulseMagnitude: Float = 0.0;

  if massToUse > 0.1 {
      effectiveImpulseMagnitude = (baseForce / massToUse) * multiplier * deltaTime;
  } else {
      effectiveImpulseMagnitude = (baseForce / minimumMassThreshold) * multiplier * deltaTime;
  }
  // let initialMagnitude = effectiveImpulseMagnitude; // Removed logging dependency

  // <<< Apply Boost Multiplier >>>
  effectiveImpulseMagnitude *= this.m_nitroBoostMultiplier; // <<< Use cached value

  if this.m_isBike {
      let bikeForceReductionFactor = 3.0;
      // let preBikeReductionMag = effectiveImpulseMagnitude; // Removed logging dependency
      effectiveImpulseMagnitude /= bikeForceReductionFactor;

      if effectiveImpulseMagnitude > 0.01 {
          let forwardDir: Vector4 = vehicle.GetWorldForward();
          let worldPos: Vector4 = vehicle.GetWorldPosition();
          let nitroImpulse = new PhysicalImpulseEvent();
          nitroImpulse.worldPosition.X = worldPos.X;
          nitroImpulse.worldPosition.Y = worldPos.Y;
          nitroImpulse.worldPosition.Z = worldPos.Z;
          nitroImpulse.worldImpulse.X = forwardDir.X * effectiveImpulseMagnitude;
          nitroImpulse.worldImpulse.Y = forwardDir.Y * effectiveImpulseMagnitude;
          nitroImpulse.worldImpulse.Z = forwardDir.Z * effectiveImpulseMagnitude;
          vehicle.QueueEvent(nitroImpulse);
      }
  } else { // Car
      // let currentSpeedKmph: Float = 0.0; // Removed logging dependency
      let baselineFriction = 1.0;
      let currentFriction = MaxF(this.m_longitudinalFrictionMultiplier, 0.1);
      let frictionScale = currentFriction / baselineFriction;
      frictionScale = ClampF(frictionScale, 0.6, 1.4);
      effectiveImpulseMagnitude *= frictionScale;

      let vehicleBb: ref<IBlackboard> = vehicle.GetBlackboard();
      let currentSpeedMph: Float = 0.0;
      if(IsDefined(vehicleBb)) {
          currentSpeedMph = vehicleBb.GetFloat(GetAllBlackboardDefs().Vehicle.SpeedValue);
      }

      let currentSpeedKmph = currentSpeedMph * 1.60934;
      let dampingStartSpeedKmph: Float = 85.0;
      let dampingMaxSpeedKmph: Float = 140.0;
      let maxDampingFactor: Float = 0.6;
      let velocityDampingScale = 1.0;
      if currentSpeedKmph > dampingStartSpeedKmph {
          let speedRange = MaxF(dampingMaxSpeedKmph - dampingStartSpeedKmph, 1.0);
          let progressInRange = ClampF((currentSpeedKmph - dampingStartSpeedKmph) / speedRange, 0.0, 1.0);
          velocityDampingScale = LerpF(1.0, maxDampingFactor, progressInRange);
          // let preDampingMag = effectiveImpulseMagnitude; // Removed logging dependency
          effectiveImpulseMagnitude *= velocityDampingScale;
      }

      if effectiveImpulseMagnitude > 0.01 {
          let forwardDir: Vector4 = vehicle.GetWorldForward();
          let worldPos: Vector4 = vehicle.GetWorldPosition();
          let upDir: Vector4 = vehicle.GetWorldUp();
          let verticalOffset: Float = 0.0;

          switch this.m_driveLayout {
              case EDriveLayout.FrontWheelDrive: verticalOffset = 0.2; break;
              case EDriveLayout.RearWheelDrive: verticalOffset = -0.2; break;
              case EDriveLayout.AllWheelDrive: verticalOffset = 0.1; break;
              default: verticalOffset = 0.0; break;
          }

          let impulsePosition: Vector4 = worldPos + (upDir * verticalOffset);
          let nitroImpulse = new PhysicalImpulseEvent();
          nitroImpulse.worldPosition.X = impulsePosition.X;
          nitroImpulse.worldPosition.Y = impulsePosition.Y;
          nitroImpulse.worldPosition.Z = impulsePosition.Z;
          nitroImpulse.worldImpulse.X = forwardDir.X * effectiveImpulseMagnitude;
          nitroImpulse.worldImpulse.Y = forwardDir.Y * effectiveImpulseMagnitude;
          nitroImpulse.worldImpulse.Z = forwardDir.Z * effectiveImpulseMagnitude;
          vehicle.QueueEvent(nitroImpulse);
      }
  }

  this.ScheduleNextNitroCallback(); // Schedule next impulse
}

@addMethod(VehicleComponent)
public func GetNitroState() -> NitroState {
  let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(this.GetVehicle().GetGame()));
  let fuelPercent = this.m_nitroParams.NITRO_FUEL_CAPACITY > 0.0 ? ClampF(this.m_nitroFuelRemaining / this.m_nitroParams.NITRO_FUEL_CAPACITY, 0.0, 1.0) : 0.0;
  let cooldownRemaining = MaxF(0.0, this.m_nitroCooldownEndTime - currentTime);
  let nitroState: NitroState;
  nitroState.isActive = this.m_isNitroActive;
  nitroState.fuelPercent = fuelPercent;
  nitroState.cooldownRemaining = cooldownRemaining;
  return nitroState;
}

public class Callback extends DelayCallback {
  private let m_target: wref<IScriptable>;
  private let m_fn: CName;
  private let m_data: array<Variant>;

  public static func Create(target: wref<IScriptable>, fn: CName, opt data: array<Variant>) -> ref<Callback> {
    let self = new Callback();
    self.m_target = target;
    self.m_fn = fn;
    self.m_data = data;
    return self;
  }

  public func SetData(data: array<Variant>) {
    this.m_data = data;
  }

  public func Call() -> Void {
    if !IsDefined(this.m_target) {
      // FTLog("Callback target is null!"); // Add error logging
      return;
    }
    let function = Reflection.GetClassOf(this.m_target).GetFunction(this.m_fn);
    if !IsDefined(function) {
        // FTLog(s"Callback function '\(this.m_fn)' not found on target '\(this.m_target)'!"); // Add error logging
        return;
    }
    function.Call(this.m_target, this.m_data);
  }
}

@wrapMethod(VehicleComponent)
protected cb func OnDeath(evt: ref<gameDeathEvent>) -> Bool {
  this.DeactivateNitro();
  wrappedMethod(evt);
}


public class NitroKeybindChangePopup extends InGamePopup {
	protected let m_header: ref<InGamePopupHeader>;
	protected let m_footer: ref<InGamePopupFooter>;
	protected let m_content: ref<InGamePopupContent>;
	protected let m_text: wref<inkText>;

	public static func Create() -> ref<NitroKeybindChangePopup> {
		let self: ref<NitroKeybindChangePopup> = new NitroKeybindChangePopup();
		self.CreateInstance();
		return self;
	}

	protected cb func OnCreate() {
		super.OnCreate();

		// Basic container sizing
		this.m_container.SetSize(new Vector2(1000.0, 400.0));

		// --- Header ---
		this.m_header = InGamePopupHeader.Create();
		this.m_header.SetTitle("Nitro Keybinds Updated"); // <<< Relevant Title
		this.m_header.SetFluffRight("NitroBoost");
		this.m_header.Reparent(this);

		// --- Footer ---
		this.m_footer = InGamePopupFooter.Create();
		// this.m_footer.SetFluffIcon(n"fluff_triangle2");
		// this.m_footer.SetFluffText("Version X.X");
		this.m_footer.Reparent(this);

		// --- Content Area ---
		this.m_content = InGamePopupContent.Create();
		this.m_content.Reparent(this);

		let canvas = new inkCanvas();
		canvas.SetName(n"canvas");
		canvas.SetAnchor(inkEAnchor.Fill);
		canvas.Reparent(this.m_content.GetRootCompoundWidget());

		let background = new inkRectangle();
		background.SetAnchor(inkEAnchor.Fill);
		background.SetMargin(new inkMargin(8.0, 0.0, 8.0, 0.0));
		background.SetTintColor(ThemeColors.PureBlack()); // Standard background
		background.SetOpacity(0.357);
		background.Reparent(canvas);

		// --- The Notification Text ---
		let text = new inkText();
		text.SetName(n"notificationText");
		text.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily"); // Standard font
		text.SetFontStyle(n"Medium");
		text.SetFontSize(32); // Readable size
		text.SetHorizontalAlignment(textHorizontalAlignment.Center);
		text.SetVerticalAlignment(textVerticalAlignment.Center);
		text.SetAnchor(inkEAnchor.Fill); // Center within the content area
		text.SetMargin(new inkMargin(20.0, 20.0, 20.0, 20.0)); // Add padding
		text.SetWrapping(true);
		text.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle"); // Use theme colors
		text.BindProperty(n"tintColor", n"MainColors.Default"); // Standard text color

		// <<< Set the required message >>>
		text.SetText("Nitro keybinds updated.\nPlease exit and re-enter your vehicle for changes to apply.\nIf issues persist, try reloading your save.");

		text.Reparent(canvas);
		this.m_text = text; // Store reference if needed, though not used here

		// We don't need the complex text update or image logic from MinimalPopup
	}

	protected cb func OnInitialize() {
	    super.OnInitialize();
	}
}


// maybe later
// @wrapMethod(DamageSystem)
// private final func SendDamageRequestToPreventionSystem(hitEvent: ref<gameHitEvent>) -> Void {
//     // --- Always call wrapped method first to maintain original behavior ---
//     wrappedMethod(hitEvent);

//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem");
//     // --- Start Nitro Regen Logic ---

//     // --- Initial Filtering (Most frequent exits first!) ---
//     let player = GetPlayer(GetGameInstance()); // Use cached GetGameInstance() if possible in real code
//     if !IsDefined(player) { return; } // No player

//     let vehicle = player.GetMountedVehicle();
//     if !IsDefined(vehicle) { return; } // Player not in a vehicle

//     // This cast is crucial - ensure it matches the type where nitro fields are added
//     let vehicleComponent = vehicle.GetVehicleComponent(); 
//     if !IsDefined(vehicleComponent) { return; } // Vehicle doesn't have our component data?

//     // Check if nitro params are loaded on *this specific component instance*
//     // Use a safe check for capacity before accessing other params
//     if ( vehicleComponent.m_nitroParams.NITRO_FUEL_CAPACITY <= 0.0) { return; }
//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: nitro params loaded");
//     // --- Source Check ---
//     let source = hitEvent.attackData.GetSource();
//     if !IsDefined(source) { return; }
//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: source defined");
//     // Allow hit if source is the player OR the vehicle the player is currently driving
//     if (source != player && source != vehicle) { return; }
//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: source check passed");
//     // --- Target Check ---
//     let target = hitEvent.target;
//     if !IsDefined(target) { return; }
//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: target defined");
//     // Ignore hitting self or own vehicle
//     if (target == player || target == vehicle) { return; }
//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: target check passed");
//     // Check if target is a valid hostile actor (NPC or Drone)
//     let targetPuppet = target as ScriptedPuppet;
//     if !IsDefined(targetPuppet) { return; }

//     // FTLog("DamageSystem: SendDamageRequestToPreventionSystem: targetPuppet defined");
//     // Check if target is alive/not defeated
//     if (ScriptedPuppet.IsDefeated(target) || !ScriptedPuppet.IsActive(target)) { return; }

//     // Check attitude (ensure target is hostile to player)
//     if Equals(GameObject.GetAttitudeTowards(target, player), EAIAttitude.AIA_Hostile) { return; }

//     // Check if actual damage was dealt (important check here)
//     if hitEvent.attackComputed.GetTotalAttackValue(gamedataStatPoolType.Health) <= 0.0 { return; }

//     // --- Cooldown Check (Use the component's specific timestamp) ---
//     let currentTime = EngineTime.ToFloat(GameInstance.GetEngineTime(player.GetGame())); // Use player's game instance
//     if (currentTime < vehicleComponent.m_lastCombatRegenTime + vehicleComponent.m_nitroParams.NITRO_COMBAT_REGEN_COOLDOWN) {
//         // // FTLog("NitroCombatRegen (DamageSystemWrap): Hit target, but combat regen is on cooldown.");
//         return;
//     }
    
//     // --- Grant Regen (Modify the component's state) ---
//     let regenAmount = vehicleComponent.m_nitroParams.NITRO_COMBAT_HIT_REGEN_AMOUNT;
//     // FTLog(s"NitroCombatRegen (DamageSystemWrap): Valid hostile target hit! Granting \(regenAmount) fuel.");

//     vehicleComponent.m_nitroFuelRemaining += regenAmount;
//     vehicleComponent.m_nitroFuelRemaining = MinF(vehicleComponent.m_nitroFuelRemaining, vehicleComponent.m_nitroParams.NITRO_FUEL_CAPACITY); // Clamp
//     vehicleComponent.m_lastCombatRegenTime = currentTime; // Update timestamp

//     // Update UI (Call the component's method)
//     vehicleComponent.UpdateNitroBlackboard();

// }

/* ADD ONS */

@addMethod(VehicleComponent)
private cb func OnNitroRefuelRequest(event: ref<NitroRefuelEvent>) {
    // Check if this vehicle component instance is the one being driven by the player
    // (This ensures only the correct vehicle refills if multiple modded vehicles exist)
    let player = GetPlayer(GetGameInstance());
    if !IsDefined(player) {
        // FTLog("VehicleNitroSystem: Received NitroRefuelEvent but not the currently driven vehicle. Ignoring.");
        return; // Event not relevant to this specific vehicle instance
    }

    // FTLog("VehicleNitroSystem: OnNitroRefuelRequest received. Refueling Nitro!");
    
    // Refuel and reset cooldown
    this.m_nitroFuelRemaining = this.m_nitroParams.NITRO_FUEL_CAPACITY;
    this.m_nitroCooldownEndTime = 0.0;

    // TODO: add repair funcs
    
    let ext = new AudioSettingsExt();
    ext.volume = this.m_nitroSoundVolume;
    GameInstance.GetAudioSystemExt(GetGameInstance()).Play(n"misterchedda_nitroboost_refuel", GetPlayer(GetGameInstance()).GetEntityID(), n"V", scnDialogLineType.None, ext);

    // Update the UI/Blackboard immediately
    this.UpdateCustomNitroUI();

    player.SetWarningMessage("NOS refueled!", SimpleMessageType.Money);
    GameInstance.GetTransactionSystem(GetGameInstance()).RemoveMoney(GetPlayer(GetGameInstance()), 100, n"money");
}

@if(ModuleExists("MisterChedda.ImmersiveNitrous"))
@addMethod(VehicleComponent)
private func TriggerCrimeCheck() -> Void {
  let game = this.GetVehicle().GetGame();
  let playerObject: wref<GameObject> = GetPlayer(game); // Or GameInstance.GetPlayerSystem(GetGame()).GetLocalPlayerControlledGameObject();

  if IsDefined(playerObject) {
      let blackboardSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(game);

      let sectorUtils = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.ImmersiveNitrous.SectorUtils") as SectorUtils;
      if !IsDefined(sectorUtils) {
        FTLog("Error: Could not get SectorUtils.");
        return;
      }
      let isIllegalZone = sectorUtils.IsPlayerInIllegalArea();

      if isIllegalZone {
          // Player is in an illegal zone for nitrous! Trigger an IllegalAction stim.
          FTLog("Nitro activated in illegal zone. Broadcasting IllegalAction.");

          let broadcaster: ref<StimBroadcasterComponent> = playerObject.GetStimBroadcasterComponent();
          if IsDefined(broadcaster) {
              // Broadcast the stim from the player. Nearby NPCs (especially NCPD)
              // configured to react to IllegalAction should respond.
              // Adjust the radius (3rd parameter) as needed. 30.0 meters is a guess.
              broadcaster.TriggerSingleBroadcast(playerObject, gamedataStimType.IllegalAction, 30.0);
          } else {
              FTLog("Error: Could not get player StimBroadcasterComponent.");
          }

      } else {
          FTLog("Nitro activated in legal zone: " + sectorUtils.GetCurrentDistrict());
      }
  } else {
      FTLog("Error: Could not get Player object for zone check.");
  }

}

@if(!ModuleExists("MisterChedda.ImmersiveNitrous"))
@addMethod(VehicleComponent)
private func TriggerCrimeCheck() -> Void {
  // FTLog("TriggerCrimeCheck: ImmersiveNitrous module not found. Skipping.");
  // do nothing
}


@if(ModuleExists("MisterChedda.ImmersiveNitrous"))
@addMethod(VehicleComponent)
private func TriggerExplosiveCheck() -> Void {
  let vehicleObject: wref<VehicleObject> = this.GetVehicle();
  if !IsDefined(vehicleObject) {
      FTLog("TriggerExplosiveCheck: Error - VehicleObject is not valid at start.");
      return;
  }

  let gameInstance: GameInstance = vehicleObject.GetGame();
  let sqs: ref<SpatialQueriesSystem> = GameInstance.GetSpatialQueriesSystem(gameInstance);
  let persistencySystem: ref<GamePersistencySystem> = GameInstance.GetPersistencySystem(gameInstance); // Still needed to queue the PS event
  let player: wref<PlayerPuppet> = GetPlayer(gameInstance);

  if IsDefined(sqs) && IsDefined(persistencySystem) && IsDefined(player) {
      FTLog("TriggerExplosiveCheck: Starting RAYCAST explosive check...");
      // --- Configuration ---
      let raycastStartOffset: Float = 3.0;
      let raycastDistance: Float = 5.0;
      let ignitionChancePercent: Int32 = 80; // Testing

      let selfExplosionProximityRadius: Float = 4.0;
      let selfExplosionChancePercent: Int32 = 100;
      // --- End Configuration ---

      let vehiclePos: Vector4 = vehicleObject.GetWorldPosition();
      let vehicleForward: Vector4 = vehicleObject.GetWorldForward();
      let vehicleRearDirection: Vector4 = vehicleForward * -1.0;

      let rayStartPos: Vector4 = vehiclePos + (vehicleRearDirection * raycastStartOffset);
      let rayEndPos: Vector4 = rayStartPos + (vehicleRearDirection * raycastDistance);

      let traceResult: TraceResult;
      let hitSomething: Bool;
      let queryFilter: QueryFilter = QueryFilter.ALL(); // Or refine as needed

      hitSomething = sqs.SyncRaycastByQueryFilter(rayStartPos, rayEndPos, queryFilter, traceResult, false, false);
      FTLog(s"Raycast behind vehicle result: \(hitSomething)");

      if (hitSomething) {
          let hitEntity: wref<Entity> = TraceResult.GetHitEntity(traceResult);

          let pathStr = ResRef.ToString(hitEntity.GetTemplatePath());
          if StrContains(pathStr, "microwave") || StrContains(pathStr, "server") {
              return;
          }
        // let newRenderHighlight = new entRenderHighlightEvent();
        // newRenderHighlight.opacity = 1.0;
        // newRenderHighlight.seeThroughWalls = true;
        //   newRenderHighlight.fillIndex = Cast<Uint8>(1);
        //   newRenderHighlight.outlineIndex = Cast<Uint8>(1);
        //   hitEntity.QueueEvent(newRenderHighlight);
          FTLog(s"Raycast hit entity: \(hitEntity.GetEntityID())");
          if IsDefined(hitEntity) && hitEntity != vehicleObject {
              let hitGameObject: wref<GameObject> = hitEntity as GameObject;
              FTLog(s"Raycast hit entity:  [ID: \(hitEntity.GetEntityID())]");
              // --- CORRECTED: Find COMPONENT directly ---
              let explosiveControllerComponent: ref<ExplosiveDeviceController> = hitEntity.FindComponentByType(n"ExplosiveDeviceController") as ExplosiveDeviceController;

              if IsDefined(explosiveControllerComponent) {
                    FTLog(s"  Found ExplosiveDeviceController COMPONENT on \(hitGameObject.GetDisplayName())");

                    // Now get the PS from the component
                    let explosiveControllerPS: ref<ExplosiveDeviceControllerPS> = explosiveControllerComponent.GetPS();

                    if IsDefined(explosiveControllerPS) {
                        FTLog(s"  Successfully got ExplosiveDeviceControllerPS from component.");
                        if !explosiveControllerPS.IsExploded() {
                            FTLog(s"  \(hitGameObject.GetDisplayName()) is not exploded. Checking ignition chance...");
                            if RandRange(1, 100) <= ignitionChancePercent {
                                FTLog(s"  Ignition success! Queueing ForceDetonate for \(hitGameObject.GetDisplayName())");

                                // Trigger the explosion via PS Action
                                let detonateAction: ref<ForceDetonate> = explosiveControllerPS.ActionForceDetonate();
                                detonateAction.RegisterAsRequester(vehicleObject.GetEntityID());
                                detonateAction.SetExecutor(player);
                                // Queue the event to the PS
                                persistencySystem.QueuePSEvent(explosiveControllerPS.GetID(), explosiveControllerPS.GetClassName(), detonateAction);

                                // Check Self-Explosion Risk
                                let distanceSquared = Vector4.DistanceSquared(vehiclePos, hitGameObject.GetWorldPosition());
                                // if distanceSquared <= (selfExplosionProximityRadius * selfExplosionProximityRadius) {
                                    FTLog(s"  Vehicle within self-explosion proximity. Checking chance...");
                                    if RandRange(1, 100) <= selfExplosionChancePercent {
                                        FTLog("Self-explosion chance success! BOOM!");
                                        this.ExplodeVehicle(hitGameObject);
                                        return;
                                    } else {
                                        FTLog("Self-explosion chance failed.");
                                    }
                                // }
                                // break;
                            } else {
                                FTLog(s"  Ignition chance failed for \(hitGameObject.GetDisplayName())");
                            }
                        } else {
                            FTLog(s"  \(hitGameObject.GetDisplayName()) was already exploded.");
                        }
                    } else {
                        FTLog(s"  Found Component, but failed to get ExplosiveDeviceControllerPS from it.");
                    }
              } else {
                    FTLog(s"  Did NOT find ExplosiveDeviceController COMPONENT on \(hitGameObject.GetDisplayName())");
              }

 
          } else {
               if hitEntity == vehicleObject {
                   // FTLog(s"Raycast hit own vehicle (likely starting inside), skipping.");
               } else {
                   FTLog(s"Raycast hit something, but GetHitEntity returned invalid/null.");
               }
          }
      } else {
          FTLog("Raycast behind vehicle hit nothing.");
      }
  } else {
      if !IsDefined(sqs) { FTLog("Error: SpatialQueriesSystem not found."); }
      if !IsDefined(persistencySystem) { FTLog("Error: PersistencySystem not found."); } // Still need this to queue the event
      if !IsDefined(player) { FTLog("Error: Player object not found."); }
  }
}

@if(!ModuleExists("MisterChedda.ImmersiveNitrous"))
@addMethod(VehicleComponent)
private func TriggerExplosiveCheck() -> Void {
  // FTLog("TriggerExplosiveCheck: ImmersiveNitrous module not found. Skipping.");
  // do nothing
}
