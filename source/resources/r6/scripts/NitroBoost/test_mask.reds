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
import Codeware.UI.*

public class ProgressBarInputSystem extends ScriptableSystem {

    // --- Constants for HDR Colors ---
    private static const let COLOR_HDR_BLUE: HDRColor;
    private static const let COLOR_HDR_YELLOW: HDRColor;
    private static const let COLOR_HDR_RED: HDRColor;
    private static const let COLOR_HDR_GREY: HDRColor;

    // --- Widget References ---
    private let m_progressBarRootCanvas: wref<inkCanvas>;
    private let m_progressBarEmptyImage: wref<inkImage>;
    private let m_progressBarMask: wref<inkMask>;
    private let m_progressBarFullImage: wref<inkImage>;
    private let m_progressBarText: wref<inkText>;

    // --- State & Config ---
    private let m_progress: Float;
    private let m_barWidth: Float;
    private let m_barHeight: Float;
    private let m_verticalOffset: Float;
    private let m_horizontalOffset: Float;
    private let m_hudOpacity: Float;
    private let m_isAttached: Bool;
    private let m_isOnCooldown: Bool;
    private let m_isRegenPaused: Bool;
    private let m_isHudGloballyEnabled: Bool;
    private let m_showOnlyWhenActive: Bool;

    // --- Store fluff container refs ---
    private let m_leftFluffContainer: wref<inkHorizontalPanel>;
    private let m_rightFluffContainer: wref<inkHorizontalPanel>;
    private let m_masterFluffContainer: wref<inkCanvas>;

    // +++ Store HUD Window ref +++
    private let m_hudWindow: wref<inkCompoundWidget>;

    // --- Animation ---
    private let m_maskAnimProxy: ref<inkAnimProxy>;
    private let m_rootFadeAnimProxy: ref<inkAnimProxy>;
    private let m_fluffFadeAnimProxy: ref<inkAnimProxy>;
    private let m_fillColorAnimProxy: ref<inkAnimProxy>;

    // +++ Add reference for the vehicle icon +++
    private let m_vehicleIcon: wref<inkImage>;
    private let m_currentIconPartName: CName;

    // for scanner
    private let m_visionModeCallbackHandle: ref<CallbackHandle>;
    private let m_isHiddenByScanner: Bool;

    private let m_hudLayoutPreset: HUDLayoutPreset;

    private let m_watcher: ref<VirtualResolutionWatcher>; // HAIL PSIBERX!!!
    private let m_referenceHeight: Float; // e.g., 2160.0 for 4K
    private let m_currentScaleY: Float; // Calculated scale factor

    // Add new member variables
    private let m_tppBBConnectionId: ref<CallbackHandle>;
    private let m_hideNitroBarInFPP: Bool;

    // Called when the system is attached to the game instance
    private func OnAttach() -> Void {
        // this.m_watcher.Initialize(GetGameInstance());
        // this.m_watcher.SendEventToAllControllers();
        // let currentState = this.m_watcher.GetCurrentState();
        // let resolution = ScreenHelper.GetResolution(GetGameInstance());
        // let size = ScreenHelper.GetScreenSize(GetGameInstance());
        // +++ Initialize VirtualResolutionWatcher +++
        // +++ Define reference resolution height +++
        this.m_referenceHeight = 2160.0; // Base UI values are for 4K
        
         // +++ Initialize VirtualResolutionWatcher (primarily for change events now) +++
         this.m_watcher = new VirtualResolutionWatcher();
        //  this.m_watcher.SetWindowSize(3840.0, this.m_referenceHeight); // Set reference resolution (4K)
         this.m_watcher.Initialize(GetGameInstance());
         
        // +++ Calculate initial scale factor manually +++
        this.CalculateAndStoreScaleFactor();

        // +++  Initialize scanner state tracking +++
        this.m_isHiddenByScanner = false;


        // FTLog(s"!!!!!!!!!!!!!!!!!! ProgressBarInputSystem: Current resolution state: \(resolution), size: \(size)");
        // // FTLog(s"[ProgressBarInputSystem] Attaching system...");
        this.m_progress = 1.0;
        this.m_isAttached = false;

        // Initialize states
        this.m_isOnCooldown = false;
        this.m_isRegenPaused = false;

        // +++ Get Nitro System to read settings +++
        let nitroSystem = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
        this.m_hudLayoutPreset = nitroSystem.GetHudLayoutPreset();
        // FTLog(s"ProgressBarInputSystem: HUD Layout Preset: \(this.m_hudLayoutPreset)");
        if Equals(this.m_hudLayoutPreset, HUDLayoutPreset.Default) {
            this.m_barWidth = Cast<Float>(nitroSystem.GetHudBarWidth());
            this.m_barHeight = Cast<Float>(nitroSystem.GetHudBarHeight());
            this.m_verticalOffset = Cast<Float>(nitroSystem.GetHudVerticalOffset());
            this.m_horizontalOffset = Cast<Float>(nitroSystem.GetHudHorizontalOffset());
            this.m_isHudGloballyEnabled = nitroSystem.IsHudUiEnabled();
            this.m_showOnlyWhenActive = nitroSystem.ShouldShowHudOnlyWhenActive();
            this.m_hudOpacity = nitroSystem.GetHudOpacity();
            this.m_hideNitroBarInFPP = nitroSystem.ShouldHideNitroBarInFPP(); // New setting
            // // FTLog(s"[ProgressBarInputSystem] Read HUD settings: Width=\(this.m_barWidth), Height=\(this.m_barHeight), Offset=\(this.m_verticalOffset), Enabled=\(this.m_isHudGloballyEnabled), ShowOnlyActive=\(this.m_showOnlyWhenActive), HideInFPP=\(this.m_hideNitroBarInFPP)");
        } else {
            // FTLog(s"ProgressBarInputSystem: HUD Layout Preset: Near Speedometer");
            this.m_barWidth = 250.0;
            this.m_barHeight = 40.0;
            this.m_isHudGloballyEnabled = nitroSystem.IsHudUiEnabled();
            this.m_showOnlyWhenActive = nitroSystem.ShouldShowHudOnlyWhenActive();
            this.m_horizontalOffset = 0.0;
            this.m_hudOpacity = nitroSystem.GetHudOpacity();
        }
        // +++ Clamp Opacity +++
        this.m_hudOpacity = ClampF(this.m_hudOpacity, 0.0, 1.0);
        // +++ END Reading settings +++

        GameInstance.GetCallbackSystem().RegisterCallback(n"Session/Ready", this, n"OnSessionReady");
            
        // +++ Register DEBUG key +++
        // GameInstance.GetCallbackSystem().RegisterCallback(n"Input/Key", this, n"OnDebugReattachInput")
        //     .AddTarget(InputTarget.Key(EInputKey.IK_F2));

        // +++ Register Mod Settings Listener +++
        ModSettings.RegisterListenerToModifications(this);

        this.COLOR_HDR_BLUE = new HDRColor(0.158, 1.303, 1.414, 1.0);
        this.COLOR_HDR_YELLOW = new HDRColor(1.33, 1.03, 0.3, 1.0);
        this.COLOR_HDR_RED = new HDRColor(1.4, 0.44, 0.4, 1.0);
        this.COLOR_HDR_GREY = new HDRColor(0.58, 0.6, 0.61, 1.0);

        // TODO REMOVE

        // // FTLog(s"[ProgressBarInputSystem] Registered session, debug, and mod settings callbacks. Initial Progress: \(this.m_progress)");
    }

    private func CalculateAndStoreScaleFactor() -> Void {
        let currentSize = ScreenHelper.GetScreenSize(GetGameInstance());
        if this.m_referenceHeight > 0.0 && currentSize.Y > 0.0 {
            this.m_currentScaleY = currentSize.Y / this.m_referenceHeight;
        } else {
            this.m_currentScaleY = 1.0; // Default to 1.0 if calculation isn't possible
            // // FTLog(s"ProgressBarInputSystem: Warning - Could not calculate scale factor (RefHeight: \(this.m_referenceHeight), CurrentHeight: \(currentSize.Y)). Defaulting to 1.0");
        }
    }

//   protected cb func OnResolutionChange(evt: ref<VirtualResolutionChangeEvent>) {
//     FTLog(s"ProgressBarInputSystem: Resolution changed. Attaching progress bar...");
//     // this.m_watcher.SendEventToAllControllers();
//     this.m_watcher.ScaleWidget(this.m_progressBarRootCanvas);
//     this.m_watcher.ScaleWidget(this.m_masterFluffContainer);
//     this.m_watcher.ScaleWidget(this.m_leftFluffContainer);
//     this.m_watcher.ScaleWidget(this.m_rightFluffContainer);

// //     this.m_watcher.NotifyController()
//   }

    // protected cb func OnResolutionChange(evt: ref<VirtualResolutionChangeEvent>) -> Void {
    //     let state = evt.GetState();
    //     // FTLog(s"ProgressBarInputSystem: OnResolutionChange received. New Scale: \(state.scale)");

    //     // Re-attach the UI to apply new scaled values
    //     if this.m_isAttached {
    //         // FTLog(s"ProgressBarInputSystem: Re-attaching UI for resolution change...");
    //         // Store current state before detaching
    //         let currentProgress = this.m_progress;
    //         let currentCooldown = this.m_isOnCooldown;
    //         let currentPaused = this.m_isRegenPaused;
    //         let currentIcon = this.m_currentIconPartName;
    //         this.CalculateAndStoreScaleFactor();

    //         this.DetachProgressBar();
    //         this.AttachProgressBar(); // Will now use the new scale provided by the watcher state

    //         // Restore state if it was attached successfully
    //         if this.m_isAttached {
    //             // FTLog(s"ProgressBarInputSystem: Restoring state after re-attach.");
    //             this.SetProgressValue(currentProgress, currentCooldown, currentPaused, false); // Restore progress without animation
    //             if NotEquals(currentIcon, n"") {
    //                 this.SetVehicleIcon(currentIcon); // Restore icon
    //             }
    //         } else {
    //             // FTLog(s"ProgressBarInputSystem: Re-attach failed after resolution change.");
    //         }
    //     } else {
    //         // FTLog(s"ProgressBarInputSystem: Resolution changed, but UI not currently attached. No action needed.");
    //     }
    // }


    // --- OnSessionReady (No changes) ---
    protected cb func OnSessionReady(event: ref<GameSessionEvent>) -> Void {
        // // FTLog(s"[ProgressBarInputSystem] Session is ready. Attaching progress bar...");
    }

    private func AttachProgressBar() -> Void {
        // FTLog(s"ProgressBarInputSystem: Attaching progress bar...");
        if Equals(this.m_hudLayoutPreset, HUDLayoutPreset.Default) {
            this.AttachProgressBarDefault();
        } else {
            // FTLog(s"ProgressBarInputSystem: Attaching Near Speedometer progress bar...");
            this.AttachProgressBarNearSpeedometer();
        }
    }

    // --- Logic to Create and Attach the Image Mask Progress Bar Widgets ---
    private func AttachProgressBarDefault() -> Void {
        FTLog(s"!!!!ProgressBarInputSystem: AttachProgressBarDefault: HUD Globally Enabled: \(this.m_isHudGloballyEnabled)");
        if !this.m_isHudGloballyEnabled {
            //  FTLog(s"[ProgressBarInputSystem] AttachProgressBar: HUD UI is globally disabled in settings. Skipping attachment.");
             this.m_isAttached = false;
             return;
        }

        if this.m_isAttached { return; }

        let inkSystem = GameInstance.GetInkSystem();
        if !IsDefined(inkSystem) { return; }
        let hudLayer = inkSystem.GetLayer(n"inkHUDLayer");
        if !IsDefined(hudLayer) { return; }
        let hudWindow = hudLayer.GetVirtualWindow();
        if !IsDefined(hudWindow) { return; }


        // +++ Calculate scaled dimensions/offsets +++
        let scale = this.m_currentScaleY;
        FTLog(s"ProgressBarInputSystem: DEFAULT AttachProgressBar: Scale: \(scale)");

        let scaledBarWidth = this.m_barWidth * scale;
        let scaledBarHeight = this.m_barHeight * scale;
        let scaledVerticalOffset = this.m_verticalOffset * scale;
        let scaledFontSize = RoundF(24.0 * scale); // Scale font size
        let scaledFluffHeight = 24.0 * scale;
        let scaledGapAboveBar = 35.0 * scale;
        let scaledFluffBottomOffset = 35.0 * scale; // Scale the fixed part of the fluff margin calc
        let scaledFluffBottomMargin = scaledVerticalOffset - scaledFluffBottomOffset; // Position bottom of fluff 'gap' pixels above top of bar
        let scaledHorizontalOffset = this.m_horizontalOffset * scale; // +++ Calculate scaled horizontal offset +++

        // let barAtlasPath: ResRef = r"misterchedda\\NitroBoost\\ui\\nitro_bar_thin.inkatlas";
        let barAtlasPath: ResRef = r"misterchedda\\NitroBoost\\ui\\nitro_bar_v2.inkatlas";
        let emptyTexturePart: CName = n"bar_stroke";
        let fullTexturePart: CName = n"bar";
        let maskTexturePart: CName = n"bar_marker";

        // Root Canvas
        let rootCanvas = new inkCanvas();
        rootCanvas.SetName(n"imageProgressBarRootCanvas");
        rootCanvas.SetSize(scaledBarWidth, scaledBarHeight);
        rootCanvas.SetAnchor(inkEAnchor.BottomCenter);
        rootCanvas.SetAnchorPoint(new Vector2(0.5, 1.0));
        rootCanvas.SetMargin(new inkMargin(scaledHorizontalOffset, 0.0, 0.0, scaledVerticalOffset));
        rootCanvas.SetVisible(true);
        rootCanvas.SetOpacity(0.0);

        // Empty Bar Image
        let emptyImage = new inkImage();
        emptyImage.SetName(n"progressBarEmptyImage");
        emptyImage.SetAtlasResource(barAtlasPath);
        emptyImage.SetTexturePart(emptyTexturePart);
        emptyImage.SetAnchor(inkEAnchor.Fill);
        emptyImage.SetVisible(true);
        emptyImage.SetOpacity(this.m_hudOpacity);
        emptyImage.Reparent(rootCanvas);

        // +++ Create an intermediate container for masking +++
        let fillContainer = new inkCanvas();
        fillContainer.SetName(n"progressBarFillContainer");
        fillContainer.SetAnchor(inkEAnchor.Fill);
        fillContainer.SetSize(scaledBarWidth, scaledBarHeight); // Match root size
        fillContainer.SetVisible(true);
        fillContainer.SetOpacity(this.m_hudOpacity);
        fillContainer.Reparent(rootCanvas);
        // +++ End intermediate container +++

        // Mask Widget
        let mask = new inkMask();
        mask.SetName(n"progressBarMask");
        mask.SetAnchor(inkEAnchor.LeftFillVerticaly);
        mask.SetWidth(scaledBarWidth * this.m_progress);
        mask.SetHeight(scaledBarHeight);
        mask.SetVisible(true);
        mask.SetOpacity(1.0);
        mask.SetTextureAtlas(barAtlasPath);
        mask.SetTexturePart(maskTexturePart);
        // +++ Reparent Mask to fillContainer +++
        mask.Reparent(fillContainer);

        let fullImage = new inkImage();
        fullImage.SetName(n"progressBarFullImage");
        fullImage.SetAtlasResource(barAtlasPath);
        fullImage.SetTexturePart(fullTexturePart);
        fullImage.SetAnchor(inkEAnchor.TopLeft);
        fullImage.SetSize(scaledBarWidth, scaledBarHeight);
        // fullImage.SetStyle(r"base\gameplay\gui\common\main_colors.inkstyle"); // Style might interfere with direct color setting/anim
        // fullImage.BindProperty(n"tintColor", n"MainColors.Blue"); // REMOVED BINDING
        fullImage.SetVisible(true);
        fullImage.SetOpacity(1.0);
        // +++ Set initial color directly using HDRColor +++
        let initialColorHDR = this.GetTargetHDRColor(this.m_progress, this.m_isOnCooldown);
        fullImage.SetTintColor(initialColorHDR); // SetTintColor accepts HDRColor
        // +++ Reparent Full Image to fillContainer +++
        fullImage.Reparent(fillContainer);

        // Text Label (Stays parented to rootCanvas)
        let textLabel = new inkText();
        textLabel.SetName(n"progressBarText");
        textLabel.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        textLabel.SetFontSize(Cast<Int32>(Cast<Float>(24)*scale));
        // FTLog(s"ProgressBarInputSystem: DEFAULT AttachProgressBar: Text Label Font Size: \(textLabel.GetFontSize())");
        textLabel.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        textLabel.SetFontStyle(n"Bold");
        textLabel.BindProperty(n"tintColor", n"MainColors.White");
        textLabel.SetHorizontalAlignment(textHorizontalAlignment.Center);
        textLabel.SetVerticalAlignment(textVerticalAlignment.Center);
        textLabel.SetVisible(true);
        textLabel.SetOpacity(this.m_hudOpacity);
        textLabel.Reparent(rootCanvas);

        // Store references
        this.m_progressBarRootCanvas = rootCanvas;
        this.m_progressBarEmptyImage = emptyImage;
        this.m_progressBarMask = mask;
        this.m_progressBarFullImage = fullImage;
        this.m_progressBarText = textLabel;

        // --- Create Master Fluff Container (Sibling to rootCanvas) --- 
        let masterFluffContainer = new inkCanvas();
        masterFluffContainer.SetName(n"masterFluffContainer");
        masterFluffContainer.SetAnchor(inkEAnchor.BottomCenter);
        masterFluffContainer.SetAnchorPoint(new Vector2(0.5, 1.0)); // Anchor from its bottom-center
        masterFluffContainer.SetSize(scaledBarWidth, scaledFluffHeight); // Width of bar, height of tallest fluff
        let fluffBottomMargin = scaledVerticalOffset - scaledGapAboveBar; // Position bottom of fluff 'gap' pixels above top of bar
        // FTLog(s"ProgressBarInputSystem: DEFAULT AttachProgressBar: Fluff Bottom Margin: \(fluffBottomMargin)");
        // +++ Apply horizontal offset to left margin +++
        masterFluffContainer.SetMargin(new inkMargin(scaledHorizontalOffset, 0.0, 0.0, fluffBottomMargin));
        masterFluffContainer.SetVisible(true);
        masterFluffContainer.SetOpacity(0.0);

        // +++ Add Fluff Elements Below (Left and Right Containers) +++
        let fluffAtlasPath: ResRef = r"base\\gameplay\\gui\\fullscreen\\common\\general_fluff.inkatlas";
        // +++ Common Vehicle Atlas +++
        let commonVehicleAtlasPath: ResRef = r"base\\gameplay\\gui\\widgets\\vehicle\\common_full.inkatlas";

        // --- Left Fluff Container --- 
        let leftFluffContainer = new inkHorizontalPanel();
        leftFluffContainer.SetName(n"nitroLeftFluffContainer");
        leftFluffContainer.SetAnchor(inkEAnchor.TopLeft);      // <<< Anchor TopLeft of master >>>
        leftFluffContainer.SetAnchorPoint(new Vector2(0.0, 0.0));
        leftFluffContainer.SetVisible(true);

        // +++ Fluff 1: px_ic_s_029 +++
        let newFluff1 = new inkImage();
        newFluff1.SetAtlasResource(commonVehicleAtlasPath);
        newFluff1.SetTexturePart(n"px_ic_s_029");
        newFluff1.SetSize(16.0 * scale, scaledFluffHeight); // Scale size
        newFluff1.SetMargin(new inkMargin(0.0, 0.0, 5.0 * scale, 0.0)); // Scale margin
        newFluff1.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        newFluff1.BindProperty(n"tintColor", n"MainColors.Grey");
        // No margin needed if height is 24
        newFluff1.Reparent(leftFluffContainer);

        // +++ Fluff 2: px_ic_l_16 +++
        let newFluff2 = new inkImage();
        newFluff2.SetAtlasResource(commonVehicleAtlasPath);
        newFluff2.SetTexturePart(n"px_ic_l_16");
        newFluff2.SetSize(23.0 * scale, scaledFluffHeight); // Scale size
        newFluff2.SetMargin(new inkMargin(0.0, 0.0, 10.0 * scale, 0.0)); // Scale margin
        newFluff2.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        newFluff2.BindProperty(n"tintColor", n"MainColors.Grey");
        // No margin needed if height is 24
        newFluff2.Reparent(leftFluffContainer);


     // Fluff 2: fluff_window1_t1_part2
        let fluffWindow = new inkImage();
        fluffWindow.SetAtlasResource(fluffAtlasPath);
        fluffWindow.SetTexturePart(n"fluff_window1_t1_part2");
        fluffWindow.SetSize(168.0, 19.0);
        let scaledFluffWindowWidth = 168.0 * scale;
        let scaledFluffWindowHeight = 19.0 * scale;
        fluffWindow.SetSize(scaledFluffWindowWidth, scaledFluffWindowHeight); // Scale size
        // Calculate margin based on scaled heights
        let windowMarginTop = (scaledFluffHeight - scaledFluffWindowHeight) / 2.0;
        fluffWindow.SetMargin(new inkMargin(0.0, windowMarginTop, 0.0, windowMarginTop));
        fluffWindow.Reparent(leftFluffContainer);
        // +++ Fluff 3 (Vehicle Icon) +++
        let vehicleAtlasPath: ResRef = r"misterchedda\\NitroBoost\\ui\\vehicles_icons.inkatlas";
        let vehicleIcon = new inkImage();
        vehicleIcon.SetAtlasResource(vehicleAtlasPath);
        vehicleIcon.SetTexturePart(n"placeholder"); // Set placeholder initially
        vehicleIcon.SetSize(55.0 * scale, scaledFluffHeight); // Initial scaled size (overwritten later)
        vehicleIcon.SetMargin(new inkMargin(12.0 * scale, 0.0, 0.0, 0.0)); // Scale margin
        vehicleIcon.Reparent(leftFluffContainer);
        vehicleIcon.SetOpacity(this.m_hudOpacity * 0.5);
        // +++ Store reference to vehicle icon +++
        this.m_vehicleIcon = vehicleIcon;
        // // FTLog(s"[ProgressBarInputSystem] AttachProgressBar: Assigned this.m_vehicleIcon (IsDefined: \(IsDefined(this.m_vehicleIcon)))");

        // <<<  Apply remembered icon if available >>>
        if NotEquals(this.m_currentIconPartName, n"") {
            // // FTLog(s"[ProgressBarInputSystem] AttachProgressBar: Applying remembered icon: \(this.m_currentIconPartName)");
            this.SetVehicleIcon(this.m_currentIconPartName);
        }
        // <<< END >>>

        // --- Right Fluff Container --- 
        let rightFluffContainer = new inkHorizontalPanel();
        rightFluffContainer.SetName(n"nitroRightFluffContainer");
        rightFluffContainer.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        rightFluffContainer.BindProperty(n"tintColor", n"MainColors.White");
        rightFluffContainer.SetAnchor(inkEAnchor.TopRight);     // <<< Anchor TopRight of master >>>
        rightFluffContainer.SetAnchorPoint(new Vector2(1.0, 0.0));
        rightFluffContainer.SetVisible(true);

        // +++ Reparent Text Label AFTER frames +++
        textLabel.Reparent(rightFluffContainer); // <<< Text Label is now the only child >>>

        // +++ Store fluff container references +++
        this.m_leftFluffContainer = leftFluffContainer;
        this.m_rightFluffContainer = rightFluffContainer;
        this.m_masterFluffContainer = masterFluffContainer;

        // Reparent the Root Canvas AND Master Fluff Container to the HUD Window
        rootCanvas.Reparent(hudWindow);
        masterFluffContainer.Reparent(hudWindow); // <<< Reparent MASTER to HUD >>>
        // Parent left/right fluff containers to MASTER fluff container
        leftFluffContainer.Reparent(masterFluffContainer);
        rightFluffContainer.Reparent(masterFluffContainer);

        // +++ Store HUD Window reference +++
        this.m_hudWindow = hudWindow;

        // Verify successful parenting and update visuals
        if IsDefined(this.m_progressBarRootCanvas) && Equals(this.m_progressBarRootCanvas.GetParentWidget(), hudWindow) {
            // // FTLog(s"[ProgressBarInputSystem-Mask] Successfully created and attached image progress bar canvas to HUD layer.");
            this.m_isAttached = true;

            // +++ Set initial VISIBILITY based on setting (but opacity handles the fade) +++
            this.m_progressBarRootCanvas.SetVisible(true);
            if IsDefined(this.m_masterFluffContainer) {
                this.m_masterFluffContainer.SetVisible(true);
            }
            // // FTLog(s"[ProgressBarInputSystem-Mask] Widgets set to Visible=true for potential animation.");

            // Call UpdateMaskVisuals to set the initial state (progress, colors via direct set, AND opacity)
            // this.UpdateMaskVisuals(this.m_progress, false); // <<< REMOVED: Let the first SetProgressValue call handle the initial animated fade-in >>>

        } else {
            // // FTLog(s"[ProgressBarInputSystem-Mask] Failed to reparent image progress bar canvas to HUD layer.");
            this.m_progressBarRootCanvas = null;
            this.m_progressBarEmptyImage = null;
            this.m_progressBarMask = null;
            this.m_progressBarFullImage = null;
            this.m_progressBarText = null;
            this.m_masterFluffContainer = null;
            this.m_leftFluffContainer = null;
            this.m_rightFluffContainer = null;
            this.m_isAttached = false;
        }
    }

    private func AttachProgressBarNearSpeedometer() -> Void {
        if !this.m_isHudGloballyEnabled {
             // // FTLog(s"[ProgressBarInputSystem] AttachProgressBar: HUD UI is globally disabled in settings. Skipping attachment.");
             this.m_isAttached = false;
             return;
        }
        // FTLog(s"ProgressBarInputSystem: Attaching Near Speedometer progress bar...");
        if this.m_isAttached { return; }

        let inkSystem = GameInstance.GetInkSystem();
        if !IsDefined(inkSystem) { return; }
        let hudLayer = inkSystem.GetLayer(n"inkHUDLayer");
        if !IsDefined(hudLayer) { return; }
        let hudWindow = hudLayer.GetVirtualWindow();
        if !IsDefined(hudWindow) { return; }

        // let barAtlasPath: ResRef = r"misterchedda\\NitroBoost\\ui\\nitro_bar_thin.inkatlas";
        // +++ Use the manually calculated scale factor +++
        let scale = this.m_currentScaleY;
        // FTLog(s"ProgressBarInputSystem: Attaching Speedometer Layout with Scale: \(scale)");

        let barAtlasPath: ResRef = r"misterchedda\\NitroBoost\\ui\\nitro_bar_v2.inkatlas";
        let emptyTexturePart: CName = n"bar_stroke";
        let fullTexturePart: CName = n"bar";
        let maskTexturePart: CName = n"bar_marker";

        // Root Canvas
        let rootCanvas = new inkCanvas();
        // +++ Calculate scaled dimensions/offsets +++
        // Use the base 4K values stored in member variables (even though they are fixed for this layout)
        let scaledBarWidth = this.m_barWidth * scale;
        let scaledBarHeight = this.m_barHeight * scale;
        let scaledMarginLeft = Cast<Float>(RoundF(618.0 * scale)); // Scale margin
        let scaledMarginBottom = Cast<Float>(RoundF(328.0 * scale)); // Scale margin
        // Fluff scaling
        let scaledFluffMasterWidth = (this.m_barWidth / 1.2) * scale; // Scale based on base bar width
        let scaledFluffMasterHeight = (this.m_barHeight / 1.8) * scale; // Scale based on base bar height
        let scaledFluffMarginLeft = Cast<Float>(RoundF(654.0 * scale)); // Scale margin
        let scaledFluffMarginBottom = Cast<Float>(RoundF(316.0 * scale)); // Scale margin
        rootCanvas.SetName(n"imageProgressBarRootCanvas");
        rootCanvas.SetSize(scaledBarWidth, scaledBarHeight); // Use scaled size
        rootCanvas.SetAnchor(inkEAnchor.BottomLeft);
        rootCanvas.SetAnchorPoint(new Vector2(0.0, 1.0));
        rootCanvas.SetMargin(new inkMargin(scaledMarginLeft, 0.0, 0.0, scaledMarginBottom)); // Use scaled margin
        rootCanvas.SetVisible(true);
        rootCanvas.SetOpacity(0.0);

        // Empty Bar Image
        let emptyImage = new inkImage();
        emptyImage.SetName(n"progressBarEmptyImage");
        emptyImage.SetAtlasResource(barAtlasPath);
        emptyImage.SetTexturePart(emptyTexturePart);
        emptyImage.SetAnchor(inkEAnchor.Fill);
        emptyImage.SetVisible(true);
        emptyImage.SetOpacity(this.m_hudOpacity * 0.7);
        emptyImage.Reparent(rootCanvas);

        // +++ Create an intermediate container for masking +++
        let fillContainer = new inkCanvas();
        fillContainer.SetName(n"progressBarFillContainer");
        fillContainer.SetAnchor(inkEAnchor.Fill);
        fillContainer.SetSize(scaledBarWidth, scaledBarHeight); // Match root size (scaled)
        fillContainer.SetVisible(true);
        fillContainer.SetOpacity(this.m_hudOpacity * 0.7);
        fillContainer.Reparent(rootCanvas);
        // +++ End intermediate container +++

        // Mask Widget
        let mask = new inkMask();
        mask.SetName(n"progressBarMask");
        mask.SetAnchor(inkEAnchor.LeftFillVerticaly);
        mask.SetWidth(scaledBarWidth * this.m_progress); // Use scaled width
        mask.SetHeight(scaledBarHeight); // Use scaled height
        mask.SetVisible(true);
        mask.SetOpacity(1.0);
        mask.SetTextureAtlas(barAtlasPath);
        mask.SetTexturePart(maskTexturePart);
        // +++ Reparent Mask to fillContainer +++
        mask.Reparent(fillContainer);

        let fullImage = new inkImage();
        fullImage.SetName(n"progressBarFullImage");
        fullImage.SetAtlasResource(barAtlasPath);
        fullImage.SetTexturePart(fullTexturePart);
        fullImage.SetAnchor(inkEAnchor.TopLeft);
        fullImage.SetSize(scaledBarWidth, scaledBarHeight); // Use scaled size
        // fullImage.SetStyle(r"base\gameplay\gui\common\main_colors.inkstyle"); // Style might interfere with direct color setting/anim
        // fullImage.BindProperty(n"tintColor", n"MainColors.Blue"); // REMOVED BINDING
        fullImage.SetVisible(true);
        fullImage.SetOpacity(1.0);
        // +++ Set initial color directly using HDRColor +++
        let initialColorHDR = this.GetTargetHDRColor(this.m_progress, this.m_isOnCooldown);
        fullImage.SetTintColor(initialColorHDR); // SetTintColor accepts HDRColor
        // +++ Reparent Full Image to fillContainer +++
        fullImage.Reparent(fillContainer);

        // Store references
        this.m_progressBarRootCanvas = rootCanvas;
        this.m_progressBarEmptyImage = emptyImage;
        this.m_progressBarMask = mask;
        this.m_progressBarFullImage = fullImage;
        // this.m_progressBarText = textLabel;

        // --- Create Master Fluff Container (Sibling to rootCanvas) --- 
        let masterFluffContainer = new inkCanvas();
        masterFluffContainer.SetName(n"masterFluffContainer");
        masterFluffContainer.SetAnchor(inkEAnchor.BottomLeft);
        masterFluffContainer.SetAnchorPoint(new Vector2(0.0, 1.0));
        masterFluffContainer.SetSize(scaledFluffMasterWidth, scaledFluffMasterHeight); // Use scaled size
        // Removed unused variables fluffHeight, gapAboveBar
        // The verticalOffset based calculation for fluffBottomMargin isn't used in this layout, margin is hardcoded and scaled
        let fluffBottomMargin = this.m_verticalOffset - 35.0; // Position bottom of fluff 'gap' pixels above top of bar
        masterFluffContainer.SetMargin(new inkMargin(scaledFluffMarginLeft, 0.0, 0.0, scaledFluffMarginBottom));
        masterFluffContainer.SetVisible(true);
        masterFluffContainer.SetOpacity(0.0);

        // +++ Add Fluff Elements Below (Left and Right Containers) +++
        let fluffAtlasPath: ResRef = r"base\\gameplay\\gui\\fullscreen\\common\\general_fluff.inkatlas";
        // +++ Common Vehicle Atlas +++
        let commonVehicleAtlasPath: ResRef = r"base\\gameplay\\gui\\widgets\\vehicle\\common_full.inkatlas";

        // --- Left Fluff Container --- 
        let leftFluffContainer = new inkHorizontalPanel();
        leftFluffContainer.SetName(n"nitroLeftFluffContainer");
        leftFluffContainer.SetAnchor(inkEAnchor.TopLeft);      // <<< Anchor TopLeft of master >>>
        leftFluffContainer.SetAnchorPoint(new Vector2(0.0, 0.0));
        leftFluffContainer.SetVisible(true);

        // +++ Fluff Element Scaling +++
        let scaledFluffInternalHeight = scaledFluffMasterHeight; // Use the master container's scaled height as reference
        let scaledFluffWindowBaseWidth = 150.0 * scale;
        let scaledFluffWindowBaseHeight = 8.0 * scale;

        // Fluff 2: fluff_window1_t1_part2
        let fluffWindow = new inkImage();
        fluffWindow.SetAtlasResource(fluffAtlasPath);
        fluffWindow.SetTexturePart(n"fluff_window1_t1_part2");
        fluffWindow.SetSize(scaledFluffWindowBaseWidth, scaledFluffWindowBaseHeight); // Scale size
        let windowMarginTop = (scaledFluffInternalHeight - scaledFluffWindowBaseHeight) / 2.0; // Use scaled internal height reference
        fluffWindow.SetMargin(new inkMargin(4.0 * scale, windowMarginTop, 0.0, windowMarginTop)); // Scale horizontal margin
        fluffWindow.Reparent(leftFluffContainer);

        // <<<  Apply remembered icon if available >>>
        if NotEquals(this.m_currentIconPartName, n"") {
            // // FTLog(s"[ProgressBarInputSystem] AttachProgressBar: Applying remembered icon: \(this.m_currentIconPartName)");
            this.SetVehicleIcon(this.m_currentIconPartName);
        }
        // <<< END >>>

        // --- Right Fluff Container --- 
        let rightFluffContainer = new inkHorizontalPanel();
        rightFluffContainer.SetName(n"nitroRightFluffContainer");
        rightFluffContainer.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        rightFluffContainer.BindProperty(n"tintColor", n"MainColors.White");
        rightFluffContainer.SetAnchor(inkEAnchor.TopRight);     // <<< Anchor TopRight of master >>>
        rightFluffContainer.SetAnchorPoint(new Vector2(1.0, 0.0));
        rightFluffContainer.SetVisible(true);

        // +++ Reparent Text Label AFTER frames +++
        // textLabel.Reparent(rightFluffContainer); // <<< Text Label is now the only child >>>

        // +++ Store fluff container references +++
        this.m_leftFluffContainer = leftFluffContainer;
        this.m_rightFluffContainer = rightFluffContainer;
        this.m_masterFluffContainer = masterFluffContainer;

        // Reparent the Root Canvas AND Master Fluff Container to the HUD Window
        rootCanvas.Reparent(hudWindow);
        masterFluffContainer.Reparent(hudWindow); // <<< Reparent MASTER to HUD >>>
        // Parent left/right fluff containers to MASTER fluff container
        leftFluffContainer.Reparent(masterFluffContainer);
        rightFluffContainer.Reparent(masterFluffContainer);

        // +++ Store HUD Window reference +++
        this.m_hudWindow = hudWindow;

        // Verify successful parenting and update visuals
        if IsDefined(this.m_progressBarRootCanvas) && Equals(this.m_progressBarRootCanvas.GetParentWidget(), hudWindow) {
            // // FTLog(s"[ProgressBarInputSystem-Mask] Successfully created and attached image progress bar canvas to HUD layer.");
            this.m_isAttached = true;

            // +++ Set initial VISIBILITY based on setting (but opacity handles the fade) +++
            this.m_progressBarRootCanvas.SetVisible(true);
            if IsDefined(this.m_masterFluffContainer) {
                this.m_masterFluffContainer.SetVisible(true);
            }

        } else {
            // // FTLog(s"[ProgressBarInputSystem-Mask] Failed to reparent image progress bar canvas to HUD layer.");
            this.m_progressBarRootCanvas = null;
            this.m_progressBarEmptyImage = null;
            this.m_progressBarMask = null;
            this.m_progressBarFullImage = null;
            this.m_progressBarText = null;
            this.m_masterFluffContainer = null;
            this.m_leftFluffContainer = null;
            this.m_rightFluffContainer = null;
            this.m_isAttached = false;
        }
    }

    private func OnPlayerAttach(request: ref<PlayerAttachRequest>) {
        // FTLog(s"[ProgressBarInputSystem] OnPlayerAttach: Player attached. Registering scanner listener...");
        // +++  Register Scanner Listener +++
        this.RegisterScannerListener();
    }

    private func OnDetach() -> Void {
        // // FTLog(s"[ProgressBarInputSystem] Detaching system...");
        // Ensure widgets are detached if they exist
        this.DetachProgressBar();

        // +++ Unregister Mod Settings Listener +++
        ModSettings.UnregisterListenerToModifications(this);

        this.UnregisterScannerListener();
        this.UnregisterTPPCameraListener(); // New method to unregister TPP listener
        // Unregister other callbacks if needed (session/debug keys)
        // GameInstance.GetCallbackSystem().UnregisterCallback(n"Session/Ready", this, n"OnSessionReady");
        // GameInstance.GetCallbackSystem().UnregisterCallback(n"Input/Key", this, n"OnDebugReattachInput");
        // // FTLog(s"[ProgressBarInputSystem] System detached, listeners unregistered.");
    }

    // --- DetachProgressBar ---
    private func DetachProgressBar() -> Void {
        // // FTLog(s"[ProgressBarInputSystem-Mask] Detaching progress bar...");
        if IsDefined(this.m_maskAnimProxy) && this.m_maskAnimProxy.IsPlaying() {
            this.m_maskAnimProxy.Stop(true);
        }
        this.m_maskAnimProxy = null;

        if IsDefined(this.m_rootFadeAnimProxy) && this.m_rootFadeAnimProxy.IsPlaying() {
            this.m_rootFadeAnimProxy.Stop(true);
        }
        this.m_rootFadeAnimProxy = null;

        if IsDefined(this.m_fluffFadeAnimProxy) && this.m_fluffFadeAnimProxy.IsPlaying() {
            this.m_fluffFadeAnimProxy.Stop(true);
        }
        this.m_fluffFadeAnimProxy = null;

        // +++ Stop color animation +++
        if IsDefined(this.m_fillColorAnimProxy) && this.m_fillColorAnimProxy.IsPlaying() {
            this.m_fillColorAnimProxy.Stop(true);
            // No callback was registered, so no need to unregister
        }
        this.m_fillColorAnimProxy = null;

        if IsDefined(this.m_hudWindow) {
             if IsDefined(this.m_progressBarRootCanvas) {
                this.m_hudWindow.RemoveChild(this.m_progressBarRootCanvas);
                // // FTLog(s"[ProgressBarInputSystem-Mask] Removed root canvas from HUD window.");
            }
             if IsDefined(this.m_masterFluffContainer) {
                 this.m_hudWindow.RemoveChild(this.m_masterFluffContainer);
                 // // FTLog(s"[ProgressBarInputSystem-Mask] Removed master fluff container from HUD window.");
            }
        } else {
            // // FTLog(s"[ProgressBarInputSystem-Mask] Warning: HUD window ref missing, cannot remove children.");
        }
        this.m_hudWindow = null;
        this.m_masterFluffContainer = null;
        this.m_leftFluffContainer = null;
        this.m_rightFluffContainer = null;
        this.m_progressBarRootCanvas = null;
        this.m_progressBarEmptyImage = null;
        this.m_progressBarMask = null;
        this.m_progressBarFullImage = null;
        this.m_progressBarText = null;
        this.m_isAttached = false;
        this.m_vehicleIcon = null;
        this.m_currentIconPartName = n"";
        // // FTLog(s"[ProgressBarInputSystem-Mask] References cleared and widgets detached.");
    }

    // +++  Debug Reattach Function +++
    protected cb func OnDebugReattachInput(evt: ref<KeyInputEvent>) -> Void {
        if Equals(evt.GetKey(), EInputKey.IK_F2) && Equals(evt.GetAction(), EInputAction.IACT_Press) {
            // // FTLog(s"[ProgressBarInputSystem-Debug] F2 pressed. Reattaching widget...");
            if this.m_isAttached {
                this.DetachProgressBar();
            }
            // Ensure detachment completes before reattaching (might need delay if issues persist)
            this.AttachProgressBar();
        }
    }

    // +++  Show the progress bar +++
    public func ShowProgressBar(iconPartName: CName) -> Void {
        if !this.m_isHudGloballyEnabled {
             // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: HUD UI is globally disabled. Cannot show.");
             return;
        }

        // 1. Ensure attached
        if !this.m_isAttached {
            // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Not attached, calling AttachProgressBar first.");
            this.AttachProgressBar();
            // Check if attach failed
            if !this.m_isAttached {
                 // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: AttachProgressBar failed, cannot show or set icon.");
                 return;
            }
        }

        // 2. Set Visible (if root canvas is valid)
        if IsDefined(this.m_progressBarRootCanvas) {
            // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Setting root canvas visible.");
            this.m_progressBarRootCanvas.SetVisible(true);
            // +++ Also set master fluff container visible +++
            if IsDefined(this.m_masterFluffContainer) {
                 // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Setting master fluff container visible.");
                this.m_masterFluffContainer.SetVisible(true);
            }
        } else {
            // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Cannot set visible, root canvas is not defined (Attach likely failed).");
             return; // Can't proceed if root isn't valid
        }

        // 3. Set the Icon
        // // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Calling SetVehicleIcon with \(iconPartName)");
        this.SetVehicleIcon(iconPartName);
        // <<<  Store the icon name after successfully setting it >>>
        this.m_currentIconPartName = iconPartName;

        // <<<  Explicitly trigger the initial visual update and fade-in animation >>>
        // Use the current internal state (progress=1.0, cooldown=false, pause=false initially)
        // Setting animate=true ensures the fade-in happens if ShowOnlyActive is false.
        // FTLog(s"[ProgressBarInputSystem] ShowProgressBar: Explicitly calling UpdateMaskVisuals to trigger initial fade-in.");
        this.UpdateMaskVisuals(this.m_progress, true); 
                
    }

    // +++  Hide the progress bar +++
    public func HideProgressBar() -> Void {
        if IsDefined(this.m_progressBarRootCanvas) && IsDefined(this.m_masterFluffContainer) {
            let currentOpacity = this.m_progressBarRootCanvas.GetOpacity();
            // // FTLog(s"[ProgressBarInputSystem-Mask] HideProgressBar called. Current Opacity: \(currentOpacity)");

            // Stop existing animations first
            if IsDefined(this.m_maskAnimProxy) && this.m_maskAnimProxy.IsPlaying() {
                this.m_maskAnimProxy.Stop(true);
            }
            if IsDefined(this.m_rootFadeAnimProxy) && this.m_rootFadeAnimProxy.IsPlaying() {
                this.m_rootFadeAnimProxy.Stop(true);
            }
            if IsDefined(this.m_fluffFadeAnimProxy) && this.m_fluffFadeAnimProxy.IsPlaying() {
                this.m_fluffFadeAnimProxy.Stop(true);
            }

            // Only play fade-out if currently visible
            if currentOpacity > 0.01 {
                // FTLog(s"[ProgressBarInputSystem-Mask] Playing fade-out animation.");
                let fadeDuration = 0.4; // Store duration
                let alphaAnim = new inkAnimTransparency();
                alphaAnim.SetStartTransparency(currentOpacity);
                alphaAnim.SetEndTransparency(0.0);
                alphaAnim.SetDuration(fadeDuration); // Use stored duration
                alphaAnim.SetType(inkanimInterpolationType.Linear);
                alphaAnim.SetMode(inkanimInterpolationMode.EasyOut);

                let animDef = new inkAnimDef();
                animDef.AddInterpolator(alphaAnim);

                // Play animation on both
                this.m_rootFadeAnimProxy = this.m_progressBarRootCanvas.PlayAnimation(animDef); // Play normally
                this.m_fluffFadeAnimProxy = this.m_masterFluffContainer.PlayAnimation(animDef); // Play normally

                // +++ Schedule delayed callback to hide widgets +++
                let gameInstance = GetGameInstance(); // Get game instance (always valid here)
                let delaySystem = GameInstance.GetDelaySystem(gameInstance);
                if IsDefined(delaySystem) {
                    let callback = Callback.Create(this, n"OnFadeOutComplete"); // Create callback reference
                    delaySystem.DelayCallback(callback, fadeDuration); // Schedule after animation duration
                    // // FTLog(s"[ProgressBarInputSystem-Mask] Scheduled OnFadeOutComplete callback in \(fadeDuration) seconds.");
                } else {
                    // Fallback if DelaySystem is invalid
                    // FTLog(s"[ProgressBarInputSystem-Mask] ERROR: Could not get DelaySystem. Hiding immediately as fallback.");
                    this.OnFadeOutComplete(); // Call directly only if delay system is invalid
                }
                // +++ END Delayed Callback Scheduling +++

            } else {
                // // FTLog(s"[ProgressBarInputSystem-Mask] Already faded out or hidden. Setting Visible=false directly.");
                this.m_progressBarRootCanvas.SetVisible(false);
                this.m_masterFluffContainer.SetVisible(false);
            }

        } else {
            // // FTLog(s"[ProgressBarInputSystem-Mask] HideProgressBar called but root or master fluff canvas is not defined.");
        }
    }

    // +++ Callback function for fade-out completion (No longer receives proxy) +++
    protected cb func OnFadeOutComplete() -> Void {
        // // FTLog(s"[ProgressBarInputSystem-Mask] OnFadeOutComplete called via DelaySystem.");
        // Ensure widgets still exist before trying to hide them
        if IsDefined(this.m_progressBarRootCanvas) {
            this.m_progressBarRootCanvas.SetVisible(false);
             // // FTLog(s"[ProgressBarInputSystem-Mask] Root canvas set to Visible=false.");
        }
         if IsDefined(this.m_masterFluffContainer) {
            this.m_masterFluffContainer.SetVisible(false);
             // // FTLog(s"[ProgressBarInputSystem-Mask] Master fluff container set to Visible=false.");
        }
        // Clear the proxy references now that animation *should* be done
        // Note: We don't strictly need to clear them here anymore as they aren't used
        // in the callback logic, but it's good practice.
        this.m_rootFadeAnimProxy = null;
        this.m_fluffFadeAnimProxy = null;
    }

    // +++  Set the progress value (called from external systems like Nitro) +++
    // +++ ADDED cooldown/pause state parameters +++
    public func SetProgressValue(progress: Float, isOnCooldown: Bool, isRegenPaused: Bool, animate: Bool) -> Void {
        if !this.m_isAttached {
            // // FTLog(s"[ProgressBarInputSystem-Mask] SetProgressValue called, but bar not attached. Ignoring.");
            return;
        }

        // +++ DEBUG LOG +++
        // // FTLog(s"[ProgressBarSetProgress] Received State - Progress: \(progress), Cooldown: \(isOnCooldown), Paused: \(isRegenPaused)");
        // +++ END DEBUG +++

        let clampedProgress = ClampF(progress, 0.0, 1.0);
        let stateChanged = NotEquals(this.m_isOnCooldown, isOnCooldown) || NotEquals(this.m_isRegenPaused, isRegenPaused);
        let progressChanged = NotEquals(this.m_progress, clampedProgress);

        // Only update if progress OR state changed
        if progressChanged || stateChanged {
            this.m_progress = clampedProgress;
            this.m_isOnCooldown = isOnCooldown;
            this.m_isRegenPaused = isRegenPaused;
            // Ensure FPP hide logic is applied during updates
            this.UpdateMaskVisuals(this.m_progress, animate);
        } else {
             // // // FTLog(s"[ProgressBarInputSystem-Mask] SetProgressValue: Progress \(clampedProgress) and state unchanged. No visual update needed.");
        }
    }

    // +++ Helper: Get target HDR color based on state +++
    private func GetTargetHDRColor(progress: Float, isOnCooldown: Bool) -> HDRColor {
        if isOnCooldown {
            return this.COLOR_HDR_GREY;
        } else {
            if progress <= 0.25 {
                return this.COLOR_HDR_RED;
            } else if progress <= 0.50 {
                return this.COLOR_HDR_YELLOW;
            } else {
                return this.COLOR_HDR_BLUE;
            }
        }
    }

    // --- Function to update visuals ---
    // +++ CORRECTED: Animates HDRColor directly +++
    private func UpdateMaskVisuals(progress: Float, animate: Bool) -> Void {
        // +++ Ensure watcher is valid before getting scale +++
        if this.m_isHiddenByScanner {
            // FTLog(s"[UpdateMaskVisuals] HIDDEN BY SCANNER - Skipping normal visibility logic.");
            // Ensure opacities are 0 if scanner is forcing hide
            if IsDefined(this.m_progressBarRootCanvas) { this.m_progressBarRootCanvas.SetOpacity(0.0); }
            if IsDefined(this.m_masterFluffContainer) { this.m_masterFluffContainer.SetOpacity(0.0); }
            // We might still want to update the mask width and color even if hidden
            // Update Mask Size logic (potentially skip animation if hidden)
            if IsDefined(this.m_progressBarMask) {
                let scale = this.m_currentScaleY;
                let scaledBarWidth = this.m_barWidth * scale;
                let scaledBarHeight = this.m_barHeight * scale;
                let targetWidth = scaledBarWidth * progress;
                this.m_progressBarMask.SetWidth(targetWidth);
                this.m_progressBarMask.SetHeight(scaledBarHeight);
            }
            // Update Fill Color logic (potentially skip animation if hidden)
            if IsDefined(this.m_progressBarFullImage) {
                let targetHdrColor = this.GetTargetHDRColor(progress, this.m_isOnCooldown);
                this.m_progressBarFullImage.SetTintColor(targetHdrColor);
            }
            // Update Text Label
            if IsDefined(this.m_progressBarText) {
                let percentage = RoundF(progress * 100.0);
                this.m_progressBarText.SetText(IntToString(percentage) + "%");
            }
            return; // Exit before normal visibility/opacity logic
        }

        if !IsDefined(this.m_watcher) {
            // FTLog(s"[ProgressBarInputSystem] UpdateMaskVisuals: Watcher not initialized! Cannot get scale.");
            return;
        }
        // +++ Get current scale factor for calculations +++
        let scale = this.m_currentScaleY;
        
        // +++ Calculate scaled target dimensions based on current scale +++
        // Note: m_barWidth/Height hold the *reference* 4K values
        let scaledBarWidth = this.m_barWidth * scale;
        let scaledBarHeight = this.m_barHeight * scale;
        
        // Update Mask Size (Size animation logic remains)
        if IsDefined(this.m_progressBarMask) {
            let targetWidth = scaledBarWidth * progress; // Use scaled width for target calculation
            // Get current size directly (might already be scaled by watcher if registration was used, but recalculating ensures correctness)
            let currentWidth = this.m_progressBarMask.GetWidth(); 
            let currentHeight = this.m_progressBarMask.GetHeight();
            let currentSize = new Vector2(currentWidth, currentHeight);
            let targetSize = new Vector2(targetWidth, scaledBarHeight); // Target uses scaled height

            if IsDefined(this.m_maskAnimProxy) && this.m_maskAnimProxy.IsPlaying() {
                this.m_maskAnimProxy.Stop(true);
            }
            if animate && AbsF(targetWidth - currentWidth) > 0.1 { // Only animate significant size changes
                let sizeInterpolator = new inkAnimSize();
                sizeInterpolator.SetDuration(0.25);
                sizeInterpolator.SetType(inkanimInterpolationType.Linear);
                sizeInterpolator.SetMode(inkanimInterpolationMode.EasyOut);
                sizeInterpolator.SetStartSize(currentSize);
                sizeInterpolator.SetEndSize(targetSize);
                let animDef = new inkAnimDef();
                animDef.AddInterpolator(sizeInterpolator);
                this.m_maskAnimProxy = this.m_progressBarMask.PlayAnimation(animDef);
            } else {
                this.m_progressBarMask.SetWidth(targetWidth);
                this.m_progressBarMask.SetHeight(scaledBarHeight); // Ensure height is also set (scaled)
            }
        } else {
             // // FTLog(s"[ProgressBarInputSystem-Mask] Mask widget reference is missing!");
        }

        // Update Text Label
        if IsDefined(this.m_progressBarText) {
            let percentage = RoundF(progress * 100.0);
            this.m_progressBarText.SetText(IntToString(percentage) + "%");
        } else {
             // // FTLog(s"[ProgressBarInputSystem-Mask] Text widget reference is missing!");
        }

        // <<< Update Fill Color using Animation with HDRColor >>>
        if IsDefined(this.m_progressBarFullImage) {
            let targetHdrColor = this.GetTargetHDRColor(progress, this.m_isOnCooldown);
            let currentHdrColor = this.m_progressBarFullImage.GetTintColor();

            // Check if HDR colors are significantly different
            let delta = AbsF(currentHdrColor.Red - targetHdrColor.Red) +
                        AbsF(currentHdrColor.Green - targetHdrColor.Green) +
                        AbsF(currentHdrColor.Blue - targetHdrColor.Blue) +
                        AbsF(currentHdrColor.Alpha - targetHdrColor.Alpha);

            if delta > 0.01 { // If colors differ
                 // // FTLog(s"[UpdateMaskVisuals] HDR Color CHANGE needed. Current=\(currentHdrColor) Target=\(targetHdrColor). Animating...");

                // Stop existing color animation
                if IsDefined(this.m_fillColorAnimProxy) && this.m_fillColorAnimProxy.IsPlaying() {
                    this.m_fillColorAnimProxy.Stop(true);
                    // No need to unregister callback as none was added
                }

                // Create and play new color animation using HDRColor directly
                let colorAnim = new inkAnimColor();
                colorAnim.SetStartColor(currentHdrColor); // Use HDRColor
                colorAnim.SetEndColor(targetHdrColor);   // Use HDRColor
                colorAnim.SetDuration(0.2);
                colorAnim.SetType(inkanimInterpolationType.Linear);
                colorAnim.SetMode(inkanimInterpolationMode.EasyOut);

                let animDef = new inkAnimDef();
                animDef.AddInterpolator(colorAnim);

                this.m_fillColorAnimProxy = this.m_progressBarFullImage.PlayAnimation(animDef);

                // No OnFinish callback needed as HDR is handled by the animation itself.

                 if !IsDefined(this.m_fillColorAnimProxy) {
                     // Fallback if animation fails to start
                     // // FTLog("[UpdateMaskVisuals] Warning: Color animation proxy invalid after PlayAnimation. Setting color directly.");
                     this.m_progressBarFullImage.SetTintColor(targetHdrColor);
                 }

            } else {
                 // // FTLog(s"[UpdateMaskVisuals] HDR Color is already at target (\(targetHdrColor)). No animation needed.");
                 // Ensure the correct HDR color is set if no animation was needed
                 this.m_progressBarFullImage.SetTintColor(targetHdrColor);
            }
        } else {
            // // FTLog(s"[UpdateMaskVisuals] Full image widget reference is missing for color update!");
        }

        // +++ Visibility/Opacity Animation Logic based on Setting +++
        if IsDefined(this.m_progressBarRootCanvas) && IsDefined(this.m_masterFluffContainer) { // Ensure both widgets are valid
            let currentOpacity = this.m_progressBarRootCanvas.GetOpacity(); // Assuming fluff opacity matches root
            let shouldBeVisible: Bool;

             // // FTLog(s"[UpdateMaskVisuals ENTRY] CurrentOpacity=\(currentOpacity), Progress=\(progress), IsOnCooldown=\(this.m_isOnCooldown), IsRegenPaused=\(this.m_isRegenPaused), ShowOnlyActive=\(this.m_showOnlyWhenActive), Animate=\(animate)"); // <<< ADD LOG

            if this.m_showOnlyWhenActive {
                shouldBeVisible = progress < 1.0 || this.m_isOnCooldown || this.m_isRegenPaused;
                // // FTLog(s"[UpdateMaskVisuals] ShowOnlyActive=TRUE. Progress=\(progress), Cooldown=\(this.m_isOnCooldown), Paused=\(this.m_isRegenPaused). ShouldBeVisible=\(shouldBeVisible)");
            } else {
                shouldBeVisible = true; // Always visible if setting is disabled
                 // // FTLog(s"[UpdateMaskVisuals] ShowOnlyActive=FALSE. ShouldBeVisible=TRUE");
            }

            // Consider FPP hide setting
            if this.m_hideNitroBarInFPP {
                let playerPuppet: ref<GameObject> = GetPlayer(GetGameInstance());
                let blackboardSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(GetGameInstance());
                if IsDefined(playerPuppet) && IsDefined(blackboardSystem) {
                    let activeVehicleUIBB: ref<IBlackboard> = blackboardSystem.Get(GetAllBlackboardDefs().UI_ActiveVehicleData);
                    if IsDefined(activeVehicleUIBB) {
                        let isTPP = activeVehicleUIBB.GetBool(GetAllBlackboardDefs().UI_ActiveVehicleData.IsTPPCameraOn);
                        shouldBeVisible = shouldBeVisible && isTPP;
                        // FTLog(s"[UpdateMaskVisuals] FPP Hide Setting Active. IsTPP=\(isTPP), Final ShouldBeVisible=\(shouldBeVisible)");
                    }
                }
            }

            // Determine target opacity based on whether it should be visible AND the opacity setting
            // +++ Target opacity is now the setting value when visible +++
            let targetOpacity = shouldBeVisible ? this.m_hudOpacity : 0.0;
             // FTLog(s"[UpdateMaskVisuals] Calculated TargetOpacity=\(targetOpacity) (Base Opacity Setting: \(this.m_hudOpacity))");

            // Check if opacity needs to change significantly
            if AbsF(currentOpacity - targetOpacity) > 0.01 {
                 // FTLog(s"[UpdateMaskVisuals] Opacity CHANGE needed. Current=\(currentOpacity), Target=\(targetOpacity). Starting animation..."); // <<< MODIFIED LOG

                // --- Stop existing fade animations ---
                if IsDefined(this.m_rootFadeAnimProxy) && this.m_rootFadeAnimProxy.IsPlaying() {
                     // FTLog(s"[UpdateMaskVisuals] Stopping existing ROOT fade animation."); // <<< ADD LOG
                    this.m_rootFadeAnimProxy.Stop(true); // Stop silently
                }
                 if IsDefined(this.m_fluffFadeAnimProxy) && this.m_fluffFadeAnimProxy.IsPlaying() {
                     // FTLog(s"[UpdateMaskVisuals] Stopping existing FLUFF fade animation."); // <<< ADD LOG
                    this.m_fluffFadeAnimProxy.Stop(true); // Stop silently
                }

                // --- Create and Play New Fade Animation ---
                let alphaAnim = new inkAnimTransparency();
                alphaAnim.SetStartTransparency(currentOpacity); // Start from current opacity
                alphaAnim.SetEndTransparency(targetOpacity);
                alphaAnim.SetType(inkanimInterpolationType.Linear); // Or other type like EasyOut/EasyIn

                // Choose interpolation mode based on fade direction
                if targetOpacity > currentOpacity { // Fade In
                    alphaAnim.SetDuration(0.5); // Fade In Duration
                    alphaAnim.SetMode(inkanimInterpolationMode.EasyIn);
                     // FTLog(s"[UpdateMaskVisuals] Setup FADE IN animation (Duration: 0.3)"); // <<< ADD LOG
                } else { // Fading Out
                     alphaAnim.SetDuration(0.3); // Fade Out Duration
                     alphaAnim.SetMode(inkanimInterpolationMode.EasyOut);
                     // FTLog(s"[UpdateMaskVisuals] Setup FADE OUT animation (Duration: 0.8)"); // <<< ADD LOG
                }

                let animDef = new inkAnimDef();
                animDef.AddInterpolator(alphaAnim);

                // Play animation on both root and fluff containers
                this.m_rootFadeAnimProxy = this.m_progressBarRootCanvas.PlayAnimation(animDef);
                this.m_fluffFadeAnimProxy = this.m_masterFluffContainer.PlayAnimation(animDef);

                 // FTLog(s"[UpdateMaskVisuals] Started fade animation. RootProxyValid: \(IsDefined(this.m_rootFadeAnimProxy)), FluffProxyValid: \(IsDefined(this.m_fluffFadeAnimProxy))"); // <<< ADD LOG

                 // Note: We are not using SetVisible(false) here.
                 // Widgets with opacity 0 are visually hidden and generally non-interactive.
                 // If layout issues or input blocking occur, we might need an OnFinish callback
                 // for the fade-out animation to explicitly set SetVisible(false).

            } else {
                 // FTLog(s"[UpdateMaskVisuals] Opacity is already at target (\(targetOpacity)). No animation needed. Setting opacity directly."); // <<< MODIFIED LOG
                 // Ensure correct opacity if no animation is played (e.g., initial setup)
                 this.m_progressBarRootCanvas.SetOpacity(targetOpacity);
                 this.m_masterFluffContainer.SetOpacity(targetOpacity);
            }
        } else {
             // FTLog(s"[UpdateMaskVisuals] Cannot update opacity/visibility, root or fluff canvas is not defined."); // <<< MODIFIED LOG
        }
        // +++ END Visibility/Opacity Animation Logic +++
    }

    private func RegisterScannerListener() -> Void {
        let blackboard: ref<IBlackboard>;
        let player: ref<GameObject> = GetPlayer(GetGameInstance());
        if IsDefined(player) {
            blackboard = this.GetPlayerStateMachineBlackboard(player);
            if IsDefined(blackboard) {
                this.m_visionModeCallbackHandle = blackboard.RegisterListenerInt(GetAllBlackboardDefs().PlayerStateMachine.Vision, this, n"OnVisionModeChanged");
            }
        } else {
            FTLog(s"[ProgressBarInputSystem] Scanner listener registration SKIPPED: Player invalid.");
        }
    }


    private func GetPlayerStateMachineBlackboard(playerPuppet: wref<GameObject>) -> ref<IBlackboard> {
        let blackboard: ref<IBlackboard>;
        if playerPuppet != null {
        blackboard = GameInstance.GetBlackboardSystem(this.GetGameInstance()).GetLocalInstanced(playerPuppet.GetEntityID(), GetAllBlackboardDefs().PlayerStateMachine);
        };
        return blackboard;
    }


    private func UnregisterScannerListener() -> Void {
        let blackBoard: ref<IBlackboard>;
        let playerControlledObject: ref<GameObject> = GameInstance.GetPlayerSystem(this.GetGameInstance()).GetLocalPlayerMainGameObject();
        if playerControlledObject != null {
        blackBoard = this.GetPlayerStateMachineBlackboard(playerControlledObject);
        if blackBoard != null {
            blackBoard.UnregisterListenerInt(GetAllBlackboardDefs().PlayerStateMachine.Vision, this.m_visionModeCallbackHandle);
        };
        };
    }

    // --- Check Initial Scanner State on Attach ---
    private func CheckInitialScannerState() -> Void {
        let playerPuppet: ref<GameObject> = GetPlayer(GetGameInstance());
        let blackboardSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(GetGameInstance());

        if IsDefined(playerPuppet) && IsDefined(blackboardSystem) {
            let playerStateMachineBB: ref<IBlackboard> = blackboardSystem.GetLocalInstanced(
                playerPuppet.GetEntityID(),
                GetAllBlackboardDefs().PlayerStateMachine
            );
            if IsDefined(playerStateMachineBB) {
                 let initialState: Int32 = playerStateMachineBB.GetInt(GetAllBlackboardDefs().PlayerStateMachine.Vision);
                 // FTLog(s"[ProgressBarInputSystem] Initial Scanner State: \(initialState)");
                 this.ApplyScannerStateChange(initialState); // Apply the initial state
            } else {
                 // FTLog(s"[ProgressBarInputSystem] Failed to get initial scanner state: Blackboard invalid.");
            }
        } else {
             // FTLog(s"[ProgressBarInputSystem] Failed to get initial scanner state: Player/BBSystem invalid.");
        }
    }


    // --- Scanner State Change Callback ---
    protected cb func OnVisionModeChanged(value: Int32) -> Bool {
        FTLog(s"[ProgressBarInputSystem] OnVisionModeChanged received value: \(value)");
        this.ApplyScannerStateChange(value);
    }

    // --- Helper to Apply Scanner State Change ---
    private func ApplyScannerStateChange(scannerStateValue: Int32) -> Void {
        let scannerIsActive: Bool = (scannerStateValue == 1);

        if NotEquals(this.m_isHiddenByScanner, scannerIsActive) {
            this.m_isHiddenByScanner = scannerIsActive;
             FTLog(s"[ProgressBarInputSystem] Scanner state changed. IsHiddenByScanner set to: \(this.m_isHiddenByScanner)");

            // Stop any existing fade animations as the scanner state takes precedence
            if IsDefined(this.m_rootFadeAnimProxy) && this.m_rootFadeAnimProxy.IsPlaying() {
                this.m_rootFadeAnimProxy.Stop(true); // Stop silently
            }
            if IsDefined(this.m_fluffFadeAnimProxy) && this.m_fluffFadeAnimProxy.IsPlaying() {
                this.m_fluffFadeAnimProxy.Stop(true); // Stop silently
            }

            if this.m_isHiddenByScanner {
                // --- Force Hide ---
                // FTLog(s"[ProgressBarInputSystem] Forcing HUD hide due to active scanner.");
                 if IsDefined(this.m_progressBarRootCanvas) { this.m_progressBarRootCanvas.SetOpacity(0.0); }
                 if IsDefined(this.m_masterFluffContainer) { this.m_masterFluffContainer.SetOpacity(0.0); }
                 // Optional: Set Visible false too, though opacity 0 usually suffices
                 // if IsDefined(this.m_progressBarRootCanvas) { this.m_progressBarRootCanvas.SetVisible(false); }
                 // if IsDefined(this.m_masterFluffContainer) { this.m_masterFluffContainer.SetVisible(false); }
            } else {
                // --- Scanner Deactivated - Restore Normal Logic ---
                // FTLog(s"[ProgressBarInputSystem] Scanner deactivated. Triggering UpdateMaskVisuals to restore normal state.");
                 // Trigger a visual update to apply the normal visibility/opacity rules
                 // based on current progress and the m_showOnlyWhenActive setting.
                 // Use animate=true for a smooth transition back if desired.
                 this.UpdateMaskVisuals(this.m_progress, true);
            }
        } else {
             // FTLog(s"[ProgressBarInputSystem] Scanner state received (\(scannerStateValue)) matches current state (\(this.m_isHiddenByScanner)). No change needed.");
        }
    }



    // +++ Function to set the vehicle icon texture part AND SIZE +++
    public func SetVehicleIcon(iconPartName: CName) -> Void {
        // +++ LOG: Track SetVehicleIcon Calls +++
        // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Called with iconPartName: \(iconPartName)");

        // +++ Ensure watcher is valid before getting scale +++
        if !IsDefined(this.m_watcher) {
             // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Watcher not initialized! Cannot scale icon.");
             return;
        }
        let scale = this.m_currentScaleY;
        if IsDefined(this.m_vehicleIcon) {
            if NotEquals(iconPartName, n"") {
                // 1. Set Texture Part
                this.m_vehicleIcon.SetTexturePart(iconPartName);
                // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Set icon part to \(iconPartName)");

                // 2. Get Original Dimensions from VehicleIconService
                let iconService = GetVehicleIconService(); // Use the helper function
                if IsDefined(iconService) {
                    let originalDimensions = iconService.GetIconDimensions(iconPartName);
                    let originalWidth = originalDimensions.X;
                    let originalHeight = originalDimensions.Y;

                    // Check if service returned valid dimensions (not -1.0, -1.0)
                    if originalWidth > 0.0 && originalHeight > 0.0 {
                        // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Got dimensions from service: \(originalWidth) x \(originalHeight)");

                        // 3. Calculate New Width based on Scaled Fixed Height
                        let targetHeight = 24.0 * scale; // Use scaled target height
                        let newWidth: Float;
                        let aspectRatio = originalWidth / originalHeight;
                        newWidth = targetHeight * aspectRatio;

                        // 4. Set New Size
                        this.m_vehicleIcon.SetSize(newWidth, targetHeight);
                        // +++ Make opacity relative to global setting * 0.5 +++
                        this.m_vehicleIcon.SetOpacity(this.m_hudOpacity * 0.5);
                        // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Resized icon to \(newWidth) x \(targetHeight)");
                    } else {
                        // Service didn't find dimensions or is still loading
                        // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: WARNING - Got invalid dimensions (\(originalWidth)x\(originalHeight)) from service for \(iconPartName). Using default size.");
                        this.m_vehicleIcon.SetSize(24.0 * scale, 24.0 * scale); // Default scaled square size
                        this.m_vehicleIcon.SetOpacity(this.m_hudOpacity * 0.5); // Set default relative opacity
                    }
                } else {
                    // Service itself wasn't found
                    // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: ERROR - VehicleIconService not found! Cannot get dimensions. Using default size.");
                    this.m_vehicleIcon.SetSize(24.0 * scale, 24.0 * scale); // Default scaled square size
                    this.m_vehicleIcon.SetOpacity(this.m_hudOpacity * 0.5); // Set default relative opacity
                }

            } else {
                // Optionally hide the icon or set a default if the name is empty
                // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Received empty icon part name, using default or hiding.");
                this.m_vehicleIcon.SetTexturePart(n"NOT_FOUND"); // Or handle as needed
                this.m_vehicleIcon.SetSize(24.0 * scale, 24.0 * scale); // Default scaled square size
            }
        } else {
            // // FTLog(s"[ProgressBarInputSystem] SetVehicleIcon: Vehicle icon widget reference is not valid!");
        }
    }

    // +++  Callback for Mod Settings Changes +++
    public cb func OnModSettingsChange() -> Void {
        // // FTLog(s"[ProgressBarInputSystem] OnModSettingsChange detected.");
        let nitroSystem = GameInstance.GetScriptableSystemsContainer(GetGameInstance()).Get(n"MisterChedda.NitroBoost.VehicleNitroSystem") as VehicleNitroSystem;
        if !IsDefined(nitroSystem) {
            // // FTLog(s"[ProgressBarInputSystem] OnModSettingsChange: Could not get VehicleNitroSystem. Cannot react to changes.");
            return;
        }

        // Read the settings state
        let newHudEnabledState = nitroSystem.IsHudUiEnabled();
        let newBarWidth = Cast<Float>(nitroSystem.GetHudBarWidth());
        let newBarHeight = Cast<Float>(nitroSystem.GetHudBarHeight());
        let newVerticalOffset = Cast<Float>(nitroSystem.GetHudVerticalOffset());
        let newShowOnlyWhenActive = nitroSystem.ShouldShowHudOnlyWhenActive();
        let newHorizontalOffset = Cast<Float>(nitroSystem.GetHudHorizontalOffset());
        let newOpacity = ClampF(nitroSystem.GetHudOpacity(), 0.0, 1.0);
        let newHideNitroBarInFPP = nitroSystem.ShouldHideNitroBarInFPP();

        let hudEnabledChanged = NotEquals(this.m_isHudGloballyEnabled, newHudEnabledState);
        let dimensionsChanged = NotEquals(this.m_barWidth, newBarWidth) || NotEquals(this.m_barHeight, newBarHeight) || NotEquals(this.m_verticalOffset, newVerticalOffset);
        let showOnlyActiveChanged = NotEquals(this.m_showOnlyWhenActive, newShowOnlyWhenActive);
        let horizontalOffsetChanged = NotEquals(this.m_horizontalOffset, newHorizontalOffset);
        let opacityChanged = NotEquals(this.m_hudOpacity, newOpacity);
        let hideInFPPChanged = NotEquals(this.m_hideNitroBarInFPP, newHideNitroBarInFPP); // Check for FPP hide setting change
        let layoutChanged = dimensionsChanged || (horizontalOffsetChanged && Equals(this.m_hudLayoutPreset, HUDLayoutPreset.Default));

        // --- Update Stored Values ---
        this.m_isHudGloballyEnabled = newHudEnabledState;
        this.m_barWidth = newBarWidth;
        this.m_barHeight = newBarHeight;
        this.m_verticalOffset = newVerticalOffset;
        this.m_showOnlyWhenActive = newShowOnlyWhenActive;
        this.m_horizontalOffset = newHorizontalOffset;
        let oldOpacity = this.m_hudOpacity;
        this.m_hudOpacity = newOpacity;
        this.m_hideNitroBarInFPP = newHideNitroBarInFPP;

        // --- Handle HUD Enable/Disable ---
        if hudEnabledChanged {
            // // FTLog(s"[ProgressBarInputSystem] HUD Enabled state changed to \(newHudEnabledState)");
            if newHudEnabledState {
                // // FTLog(s"[ProgressBarInputSystem] HUD Enabled: Attempting to attach progress bar...");
                this.AttachProgressBar(); // Attach handles the check if already attached
                // Initial visibility is handled within AttachProgressBar/UpdateMaskVisuals
            } else {
                // // FTLog(s"[ProgressBarInputSystem] HUD Disabled: Detaching progress bar...");
                this.DetachProgressBar();
            }
            return; // Return after handling enable/disable, as attach/detach handles visuals
        }

        // --- Handle Dimension/Offset Changes (if HUD is enabled and attached) ---
        if this.m_isHudGloballyEnabled && this.m_isAttached && layoutChanged {
            // // FTLog(s"[ProgressBarInputSystem] HUD layout settings changed while enabled. Re-attaching to apply changes.");
            // Values already updated above
            this.DetachProgressBar();
            this.AttachProgressBar(); // Re-attach applies new dimensions/offset
            return; // Return after re-attaching
        }

        // +++ Handle ShowOnlyWhenActive Setting Change (if HUD enabled and attached) +++
        if this.m_isHudGloballyEnabled && this.m_isAttached && showOnlyActiveChanged {
             // // FTLog(s"[ProgressBarInputSystem] ShowOnlyWhenActive setting changed to \(this.m_showOnlyWhenActive). Updating visibility.");
             // Setting value is already updated. Trigger visual update.
             this.UpdateMaskVisuals(this.m_progress, false); // Update visibility based on new setting and current state
        }

        // +++ Handle Opacity Change (if HUD enabled and attached) +++
        if this.m_isHudGloballyEnabled && this.m_isAttached && opacityChanged {
            // // FTLog(s"[ProgressBarInputSystem] HUD Opacity setting changed from \(oldOpacity) to \(this.m_hudOpacity). Updating visuals.");
            // Opacity value is already updated. Trigger visual update.
            // We need to re-apply the target opacity, potentially animating it.
            // UpdateMaskVisuals will handle animating from the *current* visual opacity to the new target opacity.
            this.UpdateMaskVisuals(this.m_progress, true); // Use animation for smoother transition
            
            // Additionally, update opacities of elements set directly in Attach (like emptyImage, fillContainer, vehicleIcon)
            // These aren't typically animated, so we just set them.
            // This requires re-attaching if we want to update these base opacities cleanly, OR adding logic
            // to UpdateMaskVisuals to handle them (which adds complexity).
            // Let's re-attach for simplicity, as layout might have changed too.
            // FTLog(s"[ProgressBarInputSystem] Re-attaching due to opacity change affecting child elements.");
            this.DetachProgressBar();
            this.AttachProgressBar();
        }

        // +++ Handle HideNitroBarInFPP Setting Change (if HUD enabled and attached) +++
        if this.m_isHudGloballyEnabled && this.m_isAttached && hideInFPPChanged {
            // // FTLog(s"[ProgressBarInputSystem] HideNitroBarInFPP setting changed to \(this.m_hideNitroBarInFPP). Updating visibility.");
            // Register or unregister TPP listener based on setting
            if this.m_hideNitroBarInFPP {
                this.RegisterTPPCameraListener();
            } else {
                this.UnregisterTPPCameraListener();
            }
            // Setting value is already updated. Trigger visual update.
            this.UpdateMaskVisuals(this.m_progress, false); // Update visibility based on new setting and current state
        }
    }
    // +++ END Mod Settings Callback +++

    // Add method to register TPP blackboard listener
    private func RegisterTPPCameraListener() -> Void {
        let playerPuppet: ref<GameObject> = GetPlayer(GetGameInstance());
        let blackboardSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(GetGameInstance());

        if IsDefined(playerPuppet) && IsDefined(blackboardSystem) {
            // let activeVehicleUIBB: ref<IBlackboard> = blackboardSystem.GetLocalInstanced(
            //     playerPuppet.GetEntityID(),
            //     GetAllBlackboardDefs().UI_ActiveVehicleData
            // );
            let activeVehicleUIBB: ref<IBlackboard> = blackboardSystem.Get(GetAllBlackboardDefs().UI_ActiveVehicleData);
            FTLog(s"[ProgressBarInputSystem] Active Vehicle UI BB: \(activeVehicleUIBB)");
            if IsDefined(activeVehicleUIBB) {
                this.m_tppBBConnectionId = activeVehicleUIBB.RegisterListenerBool(
                    GetAllBlackboardDefs().UI_ActiveVehicleData.IsTPPCameraOn,
                    this,
                    n"OnCameraModeChanged"
                );
                // FTLog(s"[ProgressBarInputSystem] TPP camera listener REGISTERED successfully.");
            } else {
                // FTLog(s"[ProgressBarInputSystem] TPP camera listener registration FAILED: Could not get UI_ActiveVehicleData blackboard.");
            }
        } else {
            // FTLog(s"[ProgressBarInputSystem] TPP camera listener registration SKIPPED: Player or BlackboardSystem invalid.");
        }
    }

    // Add callback method for camera mode changes
    protected cb func OnCameraModeChanged(isTPP: Bool) -> Bool {
        if this.m_hideNitroBarInFPP {
            if isTPP {
                // Show the nitro bar in TPP
                this.UpdateMaskVisuals(this.m_progress, true);
                // FTLog(s"[ProgressBarInputSystem] Camera mode changed to TPP. Showing nitro bar.");
            } else {
                // Hide the nitro bar in FPP
                if IsDefined(this.m_progressBarRootCanvas) {
                    this.m_progressBarRootCanvas.SetOpacity(0.0);
                }
                if IsDefined(this.m_masterFluffContainer) {
                    this.m_masterFluffContainer.SetOpacity(0.0);
                }
                // FTLog(s"[ProgressBarInputSystem] Camera mode changed to FPP. Hiding nitro bar.");
            }
        }
        return true;
    }

    // Add method to unregister TPP listener
    private func UnregisterTPPCameraListener() -> Void {
        if !IsDefined(this.m_tppBBConnectionId) {
            // FTLog(s"[ProgressBarInputSystem] TPP camera listener unregistration SKIPPED: No valid handle stored.");
            return; // No handle to unregister
        }

        let playerPuppet: ref<GameObject> = GetPlayer(GetGameInstance());
        let blackboardSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(GetGameInstance());

        if IsDefined(playerPuppet) && IsDefined(blackboardSystem) {
            let activeVehicleUIBB: ref<IBlackboard> = blackboardSystem.Get(GetAllBlackboardDefs().UI_ActiveVehicleData);

            if IsDefined(activeVehicleUIBB) {
                activeVehicleUIBB.UnregisterListenerBool(
                    GetAllBlackboardDefs().UI_ActiveVehicleData.IsTPPCameraOn,
                    this.m_tppBBConnectionId
                );
                // FTLog(s"[ProgressBarInputSystem] TPP camera listener UNREGISTERED successfully.");
            } else {
                // FTLog(s"[ProgressBarInputSystem] TPP camera listener unregistration FAILED: Could not get UI_ActiveVehicleData blackboard.");
            }
        } else {
            // FTLog(s"[ProgressBarInputSystem] TPP camera listener unregistration FAILED: Player or BlackboardSystem invalid.");
        }

        // Clear the handle regardless of success to prevent stale references
        this.m_tppBBConnectionId = null;
    }
}

// Helper function
public static func GetProgressBarInputSystem(gameInstance: GameInstance) -> ref<ProgressBarInputSystem> {
    return GameInstance.GetScriptableSystemsContainer(gameInstance).Get(n"MisterChedda.NitroBoost.ProgressBarInputSystem") as ProgressBarInputSystem;
}
