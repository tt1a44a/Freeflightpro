.class public abstract Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# static fields
.field protected static final DEBUG_HUD_BUTTON:Z = true

.field private static final SAVED_STATE_SETTINGS_VISIBLE:Ljava/lang/String; = "settings_visible"

.field private static final TAG:Ljava/lang/String; = "PilotingUIController"


# instance fields
.field protected final mActivityWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mCalibrationDialog:Landroid/support/v7/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCalibrationDialogDisplayed:Z

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mLaunchMode:I

.field private final mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnHudAccessDeniedListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mOnSwitchFpvButtonClickListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSettingsButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<***>;"
        }
    .end annotation
.end field

.field protected mSettingsVisible:Z

.field protected mUiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "orientationChangeNeededListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "onHudAccessDeniedListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "launchMode"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 117
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    .line 125
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mOnSwitchFpvButtonClickListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;

    .line 374
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 382
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 390
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 146
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    .line 147
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mActivityWindow:Landroid/view/Window;

    .line 148
    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 149
    iput-object p6, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 150
    iput-object p11, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;

    .line 151
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mOnHudAccessDeniedListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;

    .line 152
    move/from16 v0, p13

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLaunchMode:I

    .line 153
    const v1, 0x7f0a02c0

    invoke-virtual {p4, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRootView:Landroid/view/ViewGroup;

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a03ec

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    .line 156
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 158
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->initButtonsOnClickListeners()V

    .line 161
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 162
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 164
    iput-object p9, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 165
    iput-object p8, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 168
    new-instance v1, Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    invoke-direct {v1, v2, p7, v3}, Lcom/parrot/freeflight/piloting/RelativePositionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mUiVisible:Z

    .line 182
    if-eqz p10, :cond_0

    .line 183
    const-string/jumbo v1, "settings_visible"

    invoke-virtual {p10, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 187
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->createCalibrationDialog()V

    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, p13

    if-ne v0, v1, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->autoStartFpv()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->startFpv()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateGamePadMode()V

    return-void
.end method

.method private autoStartFpv()V
    .locals 2

    .prologue
    .line 558
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v0

    .line 559
    .local v0, "mFpvViewMode":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 560
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->switchMode()V

    .line 563
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->startFpv()V

    .line 564
    return-void
.end method

.method private createCalibrationDialog()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    .line 537
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f1100f4

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100f9

    .line 539
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 540
    const v1, 0x7f1100ec

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 546
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    .line 555
    return-void
.end method

.method private initButtonsOnClickListeners()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setOnBackButtonClickListener(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;)V

    .line 220
    return-void
.end method

.method private showSettings()V
    .locals 2

    .prologue
    .line 454
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettings(Landroid/view/View;I)V

    .line 455
    return-void
.end method

.method private startFpv()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method

.method private updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 3
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v2, p1, :cond_1

    .line 512
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 513
    .local v1, "wasConnected":Z
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 514
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 516
    .local v0, "isConnectedNow":Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 528
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    .line 530
    .end local v0    # "isConnectedNow":Z
    .end local v1    # "wasConnected":Z
    :cond_1
    return-void

    .line 518
    .restart local v0    # "isConnectedNow":Z
    .restart local v1    # "wasConnected":Z
    :cond_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 521
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v2, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->createCalibrationDialog()V

    .line 525
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateGamePadMode()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 451
    :cond_0
    return-void

    .line 449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected created()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettingsView()V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showUi(Z)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 208
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->destroy()V

    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->close()V

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onDestroy()V

    .line 285
    return-void
.end method

.method public hideSettings()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsButton:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$8;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->hideSettings(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 478
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsButton:Landroid/view/View;

    .line 480
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateGamePadMode()V

    .line 481
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateCurrentMapper()V

    .line 482
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showUi(Z)V

    goto :goto_0
.end method

.method public lowMemory()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->lowMemory()V

    .line 291
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 296
    const-string v0, "PilotingUIController"

    const-string v1, "onBackButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->hideSettings()V

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 358
    :cond_0
    return v0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 10
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 342
    const/4 v9, 0x0

    .line 344
    .local v9, "eventConsumed":Z
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFFFFFF)Z

    move-result v9

    .line 348
    :cond_0
    return v9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 336
    :cond_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "eventConsumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 326
    :cond_0
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 368
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 275
    const-string/jumbo v0, "settings_visible"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method protected onSelectedGamePadChange()V
    .locals 12

    .prologue
    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 411
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mActivityWindow:Landroid/view/Window;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 413
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    const/4 v8, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v11

    .line 416
    .local v11, "pilotingMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v7, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 417
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 418
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getGamePadJoystickParams()Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v0

    invoke-direct {v7, v8, v11, v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 420
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    const/4 v8, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 424
    .local v10, "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 426
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateCurrentMapper()V

    .line 433
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    .end local v10    # "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .end local v11    # "pilotingMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 429
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    goto :goto_0
.end method

.method public onSettingsPressed()V
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onBackPressed()Z

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettings()V

    goto :goto_0
.end method

.method public onThermalButtonClick()V
    .locals 4

    .prologue
    .line 578
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    const-string v0, "com.parrot.freeflight.thermal.CameraSwitchActivity"

    .line 583
    .local v0, "activityClass":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 584
    return-void

    .line 581
    .end local v0    # "activityClass":Ljava/lang/String;
    :cond_0
    const-string v0, "com.parrot.freeflight.thermal.ThermalActivity"

    .restart local v0    # "activityClass":Ljava/lang/String;
    goto :goto_0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->pause()V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->pause()V

    .line 256
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->resume()V

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->resume()V

    .line 245
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateGamePadMode()V

    .line 246
    return-void
.end method

.method public showSettings(Landroid/view/View;I)V
    .locals 1
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "category"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showUi(Z)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    .line 461
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsButton:Landroid/view/View;

    .line 462
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateGamePadMode()V

    .line 463
    return-void
.end method

.method public abstract showSettingsView()V
.end method

.method protected showUi(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mUiVisible:Z

    if-eq v0, p1, :cond_0

    .line 486
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mUiVisible:Z

    .line 487
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showUi(Z)V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateView()V

    .line 492
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->start()V

    .line 229
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialogDisplayed:Z

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialogDisplayed:Z

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 232
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->createCalibrationDialog()V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 238
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->stop()V

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialogDisplayed:Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 270
    :cond_1
    return-void
.end method

.method protected updateCurrentMapper()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mPilotingMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCurrentMapper:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    goto :goto_0
.end method

.method public updateSettingsView()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->update()V

    .line 508
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    .line 496
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSettingsVisible:Z

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateDroneLocation(Landroid/location/Location;)V

    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateView()V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateSettingsView()V

    goto :goto_0
.end method
