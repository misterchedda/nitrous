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

// Struct to hold persistent stats
public persistent struct NitroBoostStats {
  public persistent let launchCount: Int32;
}

public static func MisterChedda_NitroBoost_CalculateMoneyToRemove() -> Int32 {
    let vehiclesList: array<PlayerVehicle>;
    GameInstance.GetVehicleSystem(GetGameInstance()).GetPlayerUnlockedVehicles(vehiclesList);
    let vehicleCount: Int32 = ArraySize(vehiclesList);
    // FTLog(s"NitroBoost: Vehicle count: \(vehicleCount)");
    let baseCost: Int32 = 100 + Cast<Int32>(RandF() * 200.0); // Random between 250 and 1000 eddies
    let totalCost: Int32 = baseCost * vehicleCount;
    // FTLog(s"NitroBoost: Total cost: \(totalCost)");
    return totalCost;
}

// Define the delay callback class for the intro message sequence
public class IntroSequenceCallback extends DelayCallback {
  private let m_step: Int32;

  public func Call() {
    let journalManagerService = NitroBoostJournalManager.GetNitroBoostJournalManager();
    if !IsDefined(journalManagerService) {
        // FTLog("IntroSequenceCallback: Error - NitroBoostJournalManager not found");
        return;
    }

    let journalManager = GameInstance.GetJournalManager(GetGameInstance());
    let questsSystem = GameInstance.GetQuestsSystem(GetGameInstance());
    let delaySystem = GameInstance.GetDelaySystem(GetGameInstance());
    let nextDelay: Float;
    let success: Bool;
    let convSuccess: Bool;
    let msg0Success: Bool;

    // Standard delay between sequence steps
    nextDelay = 2.0 + (RandF() * 2.0 - 1.0); // 2 +/- 1 second delay

    switch this.m_step {
      case 0: // Activate Contact, schedule Step 1 (Conversation + Message 0)\
        // FTLog(s"HASH to NAME: \(NameToString(HashToName(123987797536ul)))");
        // FTLog("IntroSequenceCallback: Step 0 - Activating contact");
        success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom", "gameJournalContact", gameJournalEntryState.Active, JournalNotifyOption.DoNotNotify);
        // FTLog(s"IntroSequenceCallback: Step 0 - Contact activation success: \(success)");
        // FTLog(s"IntroSequenceCallback: Step 0 - Scheduling Step 1 (Conv + Msg0) with delay: 1.0 seconds");
        delaySystem.DelayCallback(IntroSequenceCallback.Create(1), 1.0, false);
        break;

      case 1: // Activate Conversation AND Message 0, schedule Step 2 (Message 1)
        // FTLog("IntroSequenceCallback: Step 1 - Activating conversation");
        convSuccess = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01", "JournalPhoneConversation", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"IntroSequenceCallback: Step 1 - Conversation activation success: \(convSuccess)");

        // FTLog("IntroSequenceCallback: Step 1 - Activating message 0");
        msg0Success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/message0", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"IntroSequenceCallback: Step 1 - Message 0 activation success: \(msg0Success)");

        if convSuccess || msg0Success { // Proceed if either worked
            // FTLog(s"IntroSequenceCallback: Step 1 - Scheduling Step 2 (Message 1) with delay: \(nextDelay) seconds");
            delaySystem.DelayCallback(IntroSequenceCallback.Create(2), nextDelay, false);
        } else {
            // FTLog("IntroSequenceCallback: Step 1 - Failed to activate conversation and message 0, stopping sequence.");
        }
        break;

      case 2: // Activate Message 1, schedule Step 3 (Message 2)
        // FTLog("IntroSequenceCallback: Step 2 - Activating message 1");
        success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/message1", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);

        // FTLog(s"IntroSequenceCallback: Step 2 - Message 1 activation success: \(success)");
         if success {
            // FTLog(s"IntroSequenceCallback: Step 2 - Scheduling Step 3 (Message 2) with delay: \(nextDelay) seconds");
            delaySystem.DelayCallback(IntroSequenceCallback.Create(3), nextDelay, false);
        } else {
            // FTLog("IntroSequenceCallback: Step 2 - Failed to activate message 1, stopping sequence.");
        }
        break;

      case 3: // Activate Message 2, schedule Step 4 (Message 3)
        // FTLog("IntroSequenceCallback: Step 3 - Activating message 2");
        success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/message2", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"IntroSequenceCallback: Step 3 - Message 2 activation success: \(success)");
        if success {
            // FTLog(s"IntroSequenceCallback: Step 3 - Scheduling Step 4 (Message 3) with delay: \(nextDelay) seconds");
            delaySystem.DelayCallback(IntroSequenceCallback.Create(4), nextDelay, false);
        } else {
            // FTLog("IntroSequenceCallback: Step 3 - Failed to activate message 2, stopping sequence.");
        }
        break;

      case 4: // Activate Message 3, Set Fact, Check for MessageSpecial & schedule Step 5 or 6
        // FTLog("IntroSequenceCallback: Step 4 - Activating message 3");
        success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/message3", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"IntroSequenceCallback: Step 4 - Message 3 activation success: \(success)");

        if success {
            // Set the fact indicating the main message sequence is done
            // FTLog("IntroSequenceCallback: Step 4 - Setting quest fact.");
            questsSystem.SetFactStr("mchedda_nitroboost_contact_added_and_intro_sent", 1);

            // Check conditions for sending extra message (messageSpecial, using message4 path)
            let launchCount = journalManagerService.GetLaunchCount();
            let shouldSendExtraMessage = launchCount >= 10 && RandF() <= 0.1; // 10% chance if launch count is >= 10
            // FTLog(s"IntroSequenceCallback: Step 4 - Checking for messageSpecial. Launch Count: \(launchCount), Roll: \(shouldSendExtraMessage)");

            if shouldSendExtraMessage {
                // Schedule Step 5 (MessageSpecial)
                // FTLog(s"IntroSequenceCallback: Step 4 - Scheduling Step 5 (messageSpecial) with delay: \(nextDelay) seconds");
                delaySystem.DelayCallback(IntroSequenceCallback.Create(5), nextDelay, false);
            } else {
                 // Schedule Step 6 (Debit Money) directly
                 // FTLog(s"IntroSequenceCallback: Step 4 - Conditions not met for messageSpecial. Scheduling Step 6 (Debit) with delay: \(nextDelay) seconds");
                 delaySystem.DelayCallback(IntroSequenceCallback.Create(6), nextDelay, false);
            }
        } else {
            // FTLog("IntroSequenceCallback: Step 4 - Failed to activate message 3. Fact not set, sequence stopped.");
        }
        break;

       case 5: // Activate messageSpecial (Conditional), schedule Step 6 (Debit)
        // FTLog("IntroSequenceCallback: Step 5 - Activating messageSpecial (using message4 path)");
        // Assuming messageSpecial uses the path previously used for message4
        success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/messageSpecial", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"IntroSequenceCallback: Step 5 - messageSpecial activation success: \(success)");
         if !success {
            // FTLog("IntroSequenceCallback: Step 5 - Failed to activate messageSpecial. Will still attempt debit.");
         }
         // Always schedule the debit step after attempting messageSpecial
         // FTLog(s"IntroSequenceCallback: Step 5 - Scheduling Step 6 (Debit) with delay: \(nextDelay) seconds");
         delaySystem.DelayCallback(IntroSequenceCallback.Create(6), nextDelay, false);
        break;

       case 6: // Debit Money
         // FTLog("IntroSequenceCallback: Step 6 - Debiting money.");
         GameInstance.GetTransactionSystem(GetGameInstance()).RemoveMoney(GetPlayer(GetGameInstance()), MisterChedda_NitroBoost_CalculateMoneyToRemove(), n"money");
         // FTLog("IntroSequenceCallback: Step 6 - Money debited. Sequence complete.");
         break;

      default:
        // FTLog(s"IntroSequenceCallback: Error - Unknown step: \(this.m_step)");
    }
  }

  public static func Create(step: Int32) -> ref<IntroSequenceCallback> {
    let self = new IntroSequenceCallback();
    self.m_step = step;
    return self;
  }
}

// Callback specifically for the conditional special message on subsequent loads
public class SpecialMessageDelayCallback extends DelayCallback {
  public func Call() {
    // FTLog("SpecialMessageDelayCallback: Called");
    let journalManager = GameInstance.GetJournalManager(GetGameInstance());
    // FTLog("SpecialMessageDelayCallback: Activating messageSpecial (using messageSpecial path)");
    let success = journalManager.ChangeEntryState("contacts/muamar_el_capitan_reyes_custom/mchedda_nb_01/messageSpecial", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
    // FTLog(s"SpecialMessageDelayCallback: messageSpecial activation success: \(success)");

    // If the message was successfully activated, set the fact so it doesn't send again
    if success {
      let questsSystem = GameInstance.GetQuestsSystem(GetGameInstance());
      questsSystem.SetFactStr("mchedda_nitroboost_special_message_sent", 1);
      // FTLog("SpecialMessageDelayCallback: Set fact 'mchedda_nitroboost_special_message_sent' to 1.");
    }
  }

  public static func Create() -> ref<SpecialMessageDelayCallback> {
    let self = new SpecialMessageDelayCallback();
    return self;
  }
}

// Journal manager to display cat facts and intro message
public class NitroBoostJournalManager extends ScriptableService {
  private let m_journalToken: ref<ResourceToken>;
  private persistent let m_stats: NitroBoostStats; // Add persistent stats field

  public static func IsReleaseBuild() -> Bool {
    return true;
  }

  private cb func OnLoad() {
    // FTLog("NitroBoostJournalManager: OnLoad");
    // Increment and log launch count
    this.m_stats.launchCount += 1;
    // FTLog(s"NitroBoostJournalManager: Launch count: \(this.m_stats.launchCount)");

    let depot = GameInstance.GetResourceDepot();
    this.m_journalToken = depot.LoadResource(r"base\\journal\\cooked_journal.journal");
    this.m_journalToken.RegisterCallback(this, n"OnResourceReady");
    // Register for session ready event to trigger the delayed intro message
    GameInstance.GetCallbackSystem().RegisterCallback(n"Session/Ready", this, n"OnSessionReady");
    // Register F3 key for manual testing/triggering
    // GameInstance.GetCallbackSystem().RegisterCallback(n"Input/Key", this, n"OnKeyInput")
    //   .AddTarget(InputTarget.Key(EInputKey.IK_F3));
  }

  public static func GetNitroBoostJournalManager() -> ref<NitroBoostJournalManager> {
    return GameInstance.GetScriptableServiceContainer().GetService(n"MisterChedda.NitroBoost.NitroBoostJournalManager") as NitroBoostJournalManager;
  }

    private cb func OnResourceReady(token: ref<ResourceToken>) {
        // FTLog("NitroBoostJournalManager: OnResourceReady");
        // Don't send the message immediately when the resource is ready
        // this.SendIntroMessage();
    }


  // Handle session ready event
  private func OnSessionReady(request: ref<GameSessionEvent>) {
    // FTLog("NitroBoostJournalManager: OnSessionReady");

    // Check if we are in the main menu or pre-game state
    if GameInstance.GetSystemRequestsHandler().IsPreGame() {
      // FTLog("NitroBoostJournalManager: OnSessionReady - Skipping in main menu/pre-game.");
      return;
    }

    let questsSystem = GameInstance.GetQuestsSystem(GetGameInstance());
    let journalManager = GameInstance.GetJournalManager(GetGameInstance());
    let delaySystem = GameInstance.GetDelaySystem(GetGameInstance());

    let act1Completed = questsSystem.GetFactStr("q005_done") == 1;
    // FTLog(s"NitroBoostJournalManager: OnSessionReady - Act 1 Completed (q005_done == 1): \\(act1Completed)");

    if !act1Completed { 
      // Act 1 NOT completed (Capitan not available) - Send Autofixer message if not already sent
      let act1IntroSent = questsSystem.GetFactStr("mchedda_nitroboost_act1_intro_sent") == 1;
      // FTLog(s"NitroBoostJournalManager: OnSessionReady - Act 1 path. Intro already sent fact: \\(act1IntroSent)");

      if !act1IntroSent {
        // FTLog("NitroBoostJournalManager: OnSessionReady - Act 1 path. Intro not sent yet. Proceeding.");
        
        // Activate Autofixer contact (no notification needed)
        let contactSuccess = journalManager.ChangeEntryState("contacts/mchedda_autofixer_custom", "gameJournalContact", gameJournalEntryState.Active, JournalNotifyOption.DoNotNotify);
        // FTLog(s"NitroBoostJournalManager: OnSessionReady - Act 1 path. Autofixer contact activation success: \\(contactSuccess)");

        // Activate conversation and message 0 together (with notification)
        let convSuccess = journalManager.ChangeEntryState("contacts/mchedda_autofixer_custom/mchedda_nb_act_01", "JournalPhoneConversation", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"NitroBoostJournalManager: OnSessionReady - Act 1 path. Conversation activation success: \\(convSuccess)");
        let msgSuccess = journalManager.ChangeEntryState("contacts/mchedda_autofixer_custom/mchedda_nb_act_01/message0", "gameJournalPhoneMessage", gameJournalEntryState.Active, JournalNotifyOption.Notify);
        // FTLog(s"NitroBoostJournalManager: OnSessionReady - Act 1 path. Message 0 activation success: \\(msgSuccess)");
        
        // Set the fact ONLY if both conversation and message activated successfully
        if convSuccess && msgSuccess {
          questsSystem.SetFactStr("mchedda_nitroboost_act1_intro_sent", 1);
          // FTLog("NitroBoostJournalManager: OnSessionReady - Act 1 path. Set fact 'mchedda_nitroboost_act1_intro_sent' to 1.");
        } else {
          // FTLog("NitroBoostJournalManager: OnSessionReady - Act 1 path. Failed to activate conv/msg. Fact not set.");
        }
      } else {
         // FTLog("NitroBoostJournalManager: OnSessionReady - Act 1 path. Intro already sent. Skipping.");
      }

    } else {
      // Act 1 IS completed - Proceed with the original Capitan intro logic
      // FTLog("NitroBoostJournalManager: OnSessionReady - Act 1 IS completed. Proceeding with Capitan logic.");
      let introFactSet = questsSystem.GetFactStr("mchedda_nitroboost_contact_added_and_intro_sent") == 1;
      // FTLog(s"NitroBoostJournalManager: OnSessionReady - Capitan path. Intro fact set: \\(introFactSet)");
  
      if !introFactSet {
          // Intro sequence hasn't run for this save yet, schedule it.
          // FTLog("NitroBoostJournalManager: OnSessionReady - Capitan path. Intro fact not set. Scheduling main sequence.");
          let initialDelay: Float = 3.0 + (RandF() * 1.0); // Initial 3-4 second delay
          // FTLog(s"NitroBoostJournalManager: OnSessionReady - Scheduling IntroSequenceCallback(0) with delay: \\(initialDelay) seconds");
          delaySystem.DelayCallback(IntroSequenceCallback.Create(0), initialDelay, false);
      } else {
          // Intro sequence has already run for this save. Check for special message.
          // FTLog("NitroBoostJournalManager: OnSessionReady - Capitan path. Intro fact IS set. Checking for special message.");
          let launchCount = this.GetLaunchCount(); // Use the getter we added earlier
          let specialMessageSent = questsSystem.GetFactStr("mchedda_nitroboost_special_message_sent") == 1;
          // FTLog(s"NitroBoostJournalManager: OnSessionReady - Capitan path. Special message already sent fact: \\(specialMessageSent)");
  
          if !specialMessageSent {
              // Only proceed if the special message hasn't been sent yet
              let shouldSendSpecialMessage = launchCount >= 10 && RandF() <= 0.2; // 10% chance if launch count is >= 10
              // FTLog(s"NitroBoostJournalManager: OnSessionReady - Capitan path. Checking conditions. Launch Count: \\(launchCount), Roll indicates send: \\(shouldSendSpecialMessage)");
  
              //hardcode for testing
              // shouldSendSpecialMessage = true;
              if shouldSendSpecialMessage {
                  let specialMessageDelay: Float = 3.0 + (RandF() * 1.0); // Delay 3-4 seconds
                  // FTLog(s"NitroBoostJournalManager: OnSessionReady - Capitan path. Scheduling SpecialMessageDelayCallback with delay: \\(specialMessageDelay) seconds");
                  delaySystem.DelayCallback(SpecialMessageDelayCallback.Create(), specialMessageDelay, false);
              } else {
                   // FTLog("NitroBoostJournalManager: OnSessionReady - Capitan path. Conditions not met for special message (Launch count or random chance).");
              }
          } else {
               // FTLog("NitroBoostJournalManager: OnSessionReady - Capitan path. Special message fact is already set. Skipping check.");
          }
      }
    }
  }

  private cb func OnKeyInput(evt: ref<KeyInputEvent>) {
    // FTLog("NitroBoostJournalManager: OnKeyInput - Triggering intro sequence.");
    // Check if the intro has already been sent using the quest fact
    let questsSystem = GameInstance.GetQuestsSystem(GetGameInstance());
    if questsSystem.GetFactStr("mchedda_nitroboost_contact_added_and_intro_sent") == 1 {
        // FTLog("NitroBoostJournalManager: OnKeyInput - Intro message already sent, skipping.");
        return;
    }
    // Manually trigger the first step of the sequence
    // Using a slightly shorter initial delay for testing might be useful, but keep 3-4s for now
    let delaySystem = GameInstance.GetDelaySystem(GetGameInstance());
    let delay: Float = 3.0 + (RandF() * 1.0); // 3-4 seconds
    delaySystem.DelayCallback(IntroSequenceCallback.Create(0), delay, false);
  }

  public func GetLaunchCount() -> Int32 {
    return this.m_stats.launchCount;
  }
}

// just a helper debug func to see the structure of existing intro messages
// @wrapMethod(MessangerItemRenderer)
//   protected func OnJournalEntryUpdated(entry: wref<JournalEntry>, extraData: ref<IScriptable>) -> Void {
//     wrappedMethod(entry, extraData);
//     let message = entry as JournalPhoneMessage;
  
//     let imageID = message.GetImageID();
//     // FTLog(s"JournalPhoneMessage: OnJournalEntryUpdated - Image ID: \(TDBID.ToStringDEBUG(imageID))");
//   }
