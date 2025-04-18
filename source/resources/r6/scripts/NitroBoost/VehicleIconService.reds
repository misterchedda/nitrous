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

public class IconDimensionsWrapper extends IScriptable {
    public let dimensions: Vector2;
}

public class VehicleIconService extends ScriptableService {

    private let m_iconPartDimensionsMap: ref<inkHashMap>;

    private cb func OnLoad() -> Void {
        // FTLog("[VehicleIconService] OnLoad: Initializing and starting atlas load.");
        this.m_iconPartDimensionsMap = new inkHashMap(); // Initialize the map
        let token = GameInstance.GetResourceDepot().LoadResource(r"misterchedda\\NitroBoost\\ui\\vehicles_icons.inkatlas");
        token.RegisterCallback(this, n"OnAtlasLoaded");
    }

    // Callback when the atlas resource is loaded
    private cb func OnAtlasLoaded(token: ref<ResourceToken>) -> Void {
        // // FTLog("[VehicleIconService] OnAtlasLoaded: Atlas resource token received.");

        let atlas = token.GetResource() as inkTextureAtlas;

        if !IsDefined(atlas) {
            // FTLog("[VehicleIconService] OnAtlasLoaded: ERROR - Atlas resource is null!");
            return;
        }

        if !IsDefined(this.m_iconPartDimensionsMap) {
             // FTLog("[VehicleIconService] OnAtlasLoaded: ERROR - Map is null, cannot store dimensions!");
            return;
        }
        this.m_iconPartDimensionsMap.Clear();

        let totalTextureWidth: Float = 4096.0;
        let totalTextureHeight: Float = 4096.0;

        // // FTLog(s"[VehicleIconService] OnAtlasLoaded: Processing \(ArraySize(atlas.parts)) parts...");

        let i = 0;
        while i < ArraySize(atlas.parts) {
            let part = atlas.parts[i];
            let uvRect = part.clippingRectInUVCoords;

            let actualWidth = (uvRect.Right - uvRect.Left) * totalTextureWidth;
            let actualHeight = (uvRect.Bottom - uvRect.Top) * totalTextureHeight;

            let dimWrapper = new IconDimensionsWrapper();
            dimWrapper.dimensions = new Vector2(actualWidth, actualHeight);

            let partNameHash = NameToHash(part.partName);
            this.m_iconPartDimensionsMap.Insert(partNameHash, dimWrapper);

            // // FTLog(s"[VehicleIconService] Part '\(part.partName)' (Hash: \(partNameHash)): Stored \(actualWidth) x \(actualHeight)"); // Verbose logging
            i += 1;
        }
        // // FTLog("[VehicleIconService] OnAtlasLoaded: Finished processing atlas parts.");
    }

    // Public getter for dimensions
    public func GetIconDimensions(iconPartName: CName) -> Vector2 {
        let defaultSize = new Vector2(-1.0, -1.0); // Return invalid size if not found

        if !IsDefined(this.m_iconPartDimensionsMap) {
            // FTLog("[VehicleIconService] GetIconDimensions: Map is not initialized!");
            return defaultSize;
        }


        let iconPartHash = NameToHash(iconPartName);
        let dimWrapper = this.m_iconPartDimensionsMap.Get(iconPartHash) as IconDimensionsWrapper;

        if IsDefined(dimWrapper) {
            // // FTLog(s"[VehicleIconService] GetIconDimensions: Found dimensions for {iconPartName}: {dimWrapper.dimensions.X}x{dimWrapper.dimensions.Y}"); // Verbose
            return dimWrapper.dimensions;
        } else {
            // FTLog(s"[VehicleIconService] GetIconDimensions: WARNING - Dimensions not found for icon part '{iconPartName}' (Hash: {iconPartHash}).");
            return defaultSize;
        }
    }
}

// Helper function to get the service instance easily
public static func GetVehicleIconService() -> ref<VehicleIconService> {
    let service = GameInstance.GetScriptableServiceContainer().GetService(n"MisterChedda.NitroBoost.VehicleIconService") as VehicleIconService;
    // Optional: Add a check here if service is null and log an error
    return service;
} 