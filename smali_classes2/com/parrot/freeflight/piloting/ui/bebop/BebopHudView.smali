.class public Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.super Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.source "BebopHudView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;,
        Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;,
        Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;,
        Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final FOLLOW_ME_INIT_LOCK_TUTO:I = 0x3

.field private static final FOLLOW_ME_INIT_NONE:I = 0x0

.field private static final FOLLOW_ME_INIT_WAIT_GPS:I = 0x1

.field private static final FOLLOW_ME_STATE:Ljava/lang/String; = "follow me state"

.field private static final HAND_LAUNCH_HOW_TO_NEVER_DISPLAYED_KEY:Ljava/lang/String; = "hand_launch_how_to_never_displayed"

.field private static final HAND_LAUNCH_SUGGESTION_NEVER_DISPLAYED_KEY:Ljava/lang/String; = "hand_launch_suggestion_never_displayed"

.field private static final SAVED_STATE_FOLLOW_ME_INIT_VIEW:Ljava/lang/String; = "follow_me_init_view"

.field private static final SINGLE_FLIP_MENU_ITEM_APPARITION_TIME:I = 0x19

.field private static final TAG:Ljava/lang/String; = "BebopHudView"

.field private static final WAIT_GPS_ALREADY_DISPLAYED:Ljava/lang/String; = "wait gps already displayed"


# instance fields
.field private mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

.field private mAnimationsAvailability:I

.field private mAnimationsButtonsVisible:Z

.field private final mAnimationsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mButtonsLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContentView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanClosePanel:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanOptionsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlipBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlipDirection:I

.field private mFlipFrontButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlipLeftButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFlipListMenu:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlipMenuButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlipMenuOpened:Z

.field private final mFlipOnClickListener:Landroid/view/View$OnClickListener;

.field private mFlipRightButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFollowMeClickListenerListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mFollowMeModeButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mFollowMeState:I

.field private final mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMode:I

.field private mHandLaunchAlertTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandLaunchHowToListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHandLaunchImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandLaunchSuggestionListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/JoystickController",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mLockedForFollowMe:Z

.field private mLynxController:Lcom/parrot/freeflight/followme/LynxController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMotionState:I

.field private mMoveToStatus:I

.field private mNoFlipButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPilotedPOIStatus:I

.field private mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

.field private final mSeekBarLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/followme/LynxController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/core/FollowMeManager;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "lynxController"    # Lcom/parrot/freeflight/followme/LynxController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "switchFpvButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14, "followMeLockListener"    # Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p15, "followMeManager"    # Lcom/parrot/freeflight/core/FollowMeManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p16, "launchMode"    # I

    .prologue
    .line 422
    const v5, 0x7f0c003e

    new-instance v9, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v9, v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p16

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V

    .line 101
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipDirection:I

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsAvailability:I

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    .line 136
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMotionState:I

    .line 140
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotedPOIStatus:I

    .line 143
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMoveToStatus:I

    .line 215
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipOnClickListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsOnClickListener:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 271
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 318
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeClickListenerListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    .line 345
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$6;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    .line 353
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    .line 397
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    .line 426
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    .line 427
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeRegistrationManager()Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 428
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 429
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    .line 432
    const v3, 0x7f0a01a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContentView:Landroid/view/ViewGroup;

    .line 433
    const v3, 0x7f0a00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    .line 434
    const v3, 0x7f0a0508

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    .line 435
    const v3, 0x7f0a02b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mButtonsLayout:Landroid/view/View;

    .line 436
    const v3, 0x7f0a0285

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    .line 437
    const v3, 0x7f0a01ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    .line 438
    const v3, 0x7f0a01a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanClosePanel:Landroid/view/View;

    .line 439
    const v3, 0x7f0a01a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanOptionsView:Landroid/view/View;

    .line 440
    const v3, 0x7f0a02cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mSeekBarLayout:Landroid/view/View;

    .line 441
    const v3, 0x7f0a0073

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v3, 0x7f0a0287

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    .line 445
    invoke-direct/range {p0 .. p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 448
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v6, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V

    .line 449
    .local v6, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/piloting/ui/JoystickController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->setCameraListener(Lcom/parrot/freeflight/piloting/ui/CameraListener;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isGamepadConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isSkycontrollerConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v12, 0x1

    .line 458
    .local v12, "isRemoteConnected":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    .line 459
    new-instance v7, Lcom/parrot/freeflight/followme/FollowMeViewController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeClickListenerListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    move-object/from16 v16, v0

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object p14, v17, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    aput-object v4, v17, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v17}, Lcom/parrot/freeflight/followme/FollowMeViewController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;ZLcom/parrot/freeflight/piloting/ui/TouchController;Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    .line 463
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    .line 464
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;

    .line 465
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initBebopButtonsOnClickListeners()V

    .line 468
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentFlipDirection()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFlipButton(I)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePilotingModeNavigationButtons()V

    .line 472
    const v3, 0x7f0a01f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchImageView:Landroid/widget/ImageView;

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    const v4, 0x7f07037b

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 475
    .local v19, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchImageView:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    .line 477
    check-cast v19, Landroid/graphics/drawable/AnimationDrawable;

    .end local v19    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 481
    :cond_1
    const v3, 0x7f0a047b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 487
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMotionDetectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getHandLaunchEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "hand_launch_suggestion_never_displayed"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showHandLaunchSuggestionView()V

    .line 499
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "hand_launch"

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 501
    const v3, 0x7f0a019f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 502
    .local v18, "animationsButtonsLayout":Landroid/view/ViewGroup;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    new-instance v4, Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;-><init>(Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/util/ui/MetricsServant;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    .line 505
    if-eqz p10, :cond_4

    .line 507
    const-string v3, "follow me state"

    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    .line 508
    const-string v3, "follow_me_init_view"

    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 510
    .local v20, "followMeInitView":I
    packed-switch v20, :pswitch_data_0

    .line 524
    .end local v20    # "followMeInitView":I
    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isGamepadConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 533
    :goto_3
    return-void

    .line 457
    .end local v12    # "isRemoteConnected":Z
    .end local v18    # "animationsButtonsLayout":Landroid/view/ViewGroup;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 494
    .restart local v12    # "isRemoteConnected":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "hand_launch_how_to_never_displayed"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showHandLaunchHowToView()V

    goto :goto_1

    .line 512
    .restart local v18    # "animationsButtonsLayout":Landroid/view/ViewGroup;
    .restart local v20    # "followMeInitView":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFollowMeChecking()V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->startListeningFollowMeGps()V

    goto :goto_2

    .line 516
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFollowMeLockTutoView()V

    goto :goto_2

    .line 526
    .end local v20    # "followMeInitView":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isSkycontrollerConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticksSwitch()V

    goto :goto_3

    .line 531
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    goto :goto_3

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFlipList(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFollowMeState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/RecordingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mSettingsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticksSwitch()V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/view/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsButtonsVisible:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/RecordingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mSettingsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticksSwitch()V

    return-void
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/view/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mButtonsLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showAnimationsButtons(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initFlipListMenu()V

    return-void
.end method

.method static synthetic access$4600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanClosePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanOptionsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRTHButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFlipButton(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFollowMeLockTutoView()V

    return-void
.end method

.method static synthetic access$6300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchSuggestionView()V

    return-void
.end method

.method static synthetic access$6500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showHandLaunchHowToView()V

    return-void
.end method

.method static synthetic access$6800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchHowToView()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/followme/FollowMeViewController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method private backFromFollowMeChecking()V
    .locals 1

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->stopListeningFollowMeGps()V

    .line 1516
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFollowMeChecking()V

    .line 1517
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 1518
    return-void
.end method

.method private backFromFollowMeLockTutoView()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->markTutoDisplayed()V

    .line 1444
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFollowMeLockTutoView()V

    .line 1445
    return-void
.end method

.method private backFromHandLaunchHowToView()V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchHowToView()V

    .line 1172
    return-void
.end method

.method private backFromHandLaunchSuggestionView()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchSuggestionView()V

    .line 1156
    return-void
.end method

.method private expandFlipMenu()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipFrontButton:Landroid/widget/ImageButton;

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipBackButton:Landroid/widget/ImageButton;

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipLeftButton:Landroid/widget/ImageButton;

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipRightButton:Landroid/widget/ImageButton;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mNoFlipButton:Landroid/widget/ImageButton;

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1140
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    :cond_0
    return-void
.end method

.method private hideFollowMeLockTutoView()V
    .locals 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->destroy()V

    .line 1529
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->setVisibility(I)V

    .line 1531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    .line 1533
    :cond_0
    return-void
.end method

.method private hideHandLaunchAlertIfNeeded()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 943
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    :cond_1
    return-void
.end method

.method private hideHandLaunchHowToView()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    .line 1168
    :cond_0
    return-void
.end method

.method private hideHandLaunchSuggestionView()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    .line 1152
    :cond_0
    return-void
.end method

.method private initBebopButtonsOnClickListeners()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setTelemetryListener(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;)V

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x6

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$9;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$9;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 553
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x3

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$10;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$10;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x8

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$11;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$11;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 584
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x9

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$12;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$12;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setOptionsClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlightPlanClosePanel:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$16;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$16;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    return-void
.end method

.method private initFlipListMenu()V
    .locals 4

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0089

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1093
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1119
    .local v0, "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipFrontButton:Landroid/widget/ImageButton;

    .line 1120
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipFrontButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipBackButton:Landroid/widget/ImageButton;

    .line 1122
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipLeftButton:Landroid/widget/ImageButton;

    .line 1124
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipRightButton:Landroid/widget/ImageButton;

    .line 1126
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mNoFlipButton:Landroid/widget/ImageButton;

    .line 1128
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mNoFlipButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    .end local v0    # "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->expandFlipMenu()V

    .line 1131
    return-void
.end method

.method private scaleDownAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offsetStart"    # I

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1085
    .local v0, "itemAnimation":Landroid/view/animation/Animation;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    return-void
.end method

.method private showAnimationsButtons(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1051
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsButtonsVisible:Z

    if-ne v2, p1, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsButtonsVisible:Z

    if-eqz v2, :cond_3

    .line 1056
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->hide()V

    .line 1057
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1058
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setTapModeEditionEnabled(Z)V

    .line 1061
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->enableAltitudeSeekBarIfNeeded()V

    .line 1063
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setAnimationsVisibility(Z)V

    .line 1064
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/FollowMeManager;->isInAnyFollowMeState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1065
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v2}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1066
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    .line 1080
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsButtonsVisible:Z

    if-nez v2, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsButtonsVisible:Z

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->moveVideoStreamLeft()V

    goto :goto_1

    .line 1072
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->show()V

    .line 1073
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setTapModeEditionEnabled(Z)V

    .line 1074
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticks()V

    .line 1075
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->moveVideoStreamCenter()V

    .line 1076
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setAnimationsVisibility(Z)V

    .line 1077
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeSeekBarEnabled(Z)V

    .line 1078
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1080
    goto :goto_2
.end method

.method private showFlipList(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1034
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    if-ne v1, p1, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    if-eqz v1, :cond_2

    .line 1039
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1040
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1046
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 1047
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 1043
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1044
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initFlipListMenu()V

    goto :goto_1
.end method

.method private showFollowMeLockTutoView()V
    .locals 3

    .prologue
    .line 1521
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    .line 1522
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1523
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->setVisibility(I)V

    .line 1524
    return-void
.end method

.method private showHandLaunchHowToView()V
    .locals 3

    .prologue
    .line 1159
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    .line 1160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1161
    return-void
.end method

.method private showHandLaunchSuggestionView()V
    .locals 3

    .prologue
    .line 1143
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    .line 1144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1145
    return-void
.end method

.method private updateAnimationView(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 5
    .param p1, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 973
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v1

    .line 975
    .local v1, "followMode":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isFlying()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v4, :cond_2

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 977
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFlipList(Z)V

    .line 978
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showAnimationsButtons(Z)V

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 982
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->updateView()V

    .line 984
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getAnimationsAvailability()I

    move-result v0

    .line 985
    .local v0, "animationAvailability":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsAvailability:I

    if-eq v2, v0, :cond_1

    .line 988
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsAvailability:I

    .line 990
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->areAnimationsAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 992
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 994
    :cond_3
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuOpened:Z

    if-eqz v2, :cond_4

    .line 995
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFlipList(Z)V

    .line 997
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 1
    .param p1, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->update(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 1003
    return-void
.end method

.method private updateFlipButton(I)V
    .locals 3
    .param p1, "flipDirection"    # I

    .prologue
    .line 1006
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipDirection:I

    if-eq v0, p1, :cond_1

    .line 1007
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipDirection:I

    .line 1008
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1023
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1026
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1031
    :cond_1
    return-void

    .line 1010
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1013
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1016
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1019
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateFollowMeState(I)V
    .locals 2
    .param p1, "followMeState"    # I

    .prologue
    .line 1448
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-eq v1, p1, :cond_2

    .line 1449
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    .line 1450
    .local v0, "previousFollowMeState":I
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    .line 1453
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1454
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->destroyVideoStream()V

    .line 1455
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initVideoStreaming()V

    .line 1460
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFollowMeModeView(I)V

    .line 1462
    .end local v0    # "previousFollowMeState":I
    :cond_2
    return-void
.end method

.method private updatePilotingMode(I)V
    .locals 1
    .param p1, "followMode"    # I

    .prologue
    .line 964
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    if-eq v0, p1, :cond_0

    .line 965
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    .line 966
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateUiOnDroneInTheAir()V

    .line 970
    :cond_0
    return-void
.end method

.method private updatePoiTapMode(II)V
    .locals 1
    .param p1, "pilotedPOIStatus"    # I
    .param p2, "moveToStatus"    # I

    .prologue
    .line 954
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotedPOIStatus:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMoveToStatus:I

    if-eq v0, p2, :cond_1

    .line 955
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotedPOIStatus:I

    .line 956
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMoveToStatus:I

    .line 957
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateUiOnDroneInTheAir()V

    .line 961
    :cond_1
    return-void
.end method


# virtual methods
.method protected changeFollowMeState(I)V
    .locals 1
    .param p1, "followMeState"    # I

    .prologue
    .line 1465
    packed-switch p1, :pswitch_data_0

    .line 1477
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->stop()I

    .line 1480
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->followMeGeo()I

    goto :goto_0

    .line 1470
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->followMeRelative()I

    goto :goto_0

    .line 1473
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->lookAt()I

    goto :goto_0

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected destroyVideoStream()V
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->removeOnFrameDecodedListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;)V

    .line 1422
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->setUseGlViewYUV(ZLcom/parrot/controller/video/openGL/GLViewYUV;)V

    .line 1423
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->destroyVideoStream()V

    .line 1424
    return-void
.end method

.method protected disableTapMode()V
    .locals 0

    .prologue
    .line 1246
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->disableTapMode()V

    .line 1248
    return-void
.end method

.method protected enableTapMode()V
    .locals 2

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enableTapMode()V

    .line 1239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setNavigationMode(I)V

    .line 1242
    :cond_0
    return-void
.end method

.method protected enterFlightPlanMode()V
    .locals 2

    .prologue
    .line 1353
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterFlightPlanMode()V

    .line 1355
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->stopAnimations()V

    .line 1357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->hide()V

    .line 1358
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1359
    return-void
.end method

.method public enterFollowMeMode()V
    .locals 3

    .prologue
    .line 1297
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 1299
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoysticksLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticks()V

    .line 1307
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideMap()V

    .line 1308
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    const v2, 0x7f0703c1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1309
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->stopAnimations()V

    .line 1311
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPilotingMode:I

    .line 1312
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->callOnClick()Z

    goto :goto_0
.end method

.method protected enterMapMode()V
    .locals 3

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isPilotingModeFollowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 1336
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    const v2, 0x7f070271

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1339
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterMapMode()V

    .line 1340
    return-void
.end method

.method protected enterStreamingMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1316
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 1317
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    const v2, 0x7f070271

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterStreamingMode()V

    .line 1321
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isFollowMeAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1324
    :cond_0
    return-void
.end method

.method protected exitCameraSettings()V
    .locals 1

    .prologue
    .line 1363
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->exitCameraSettings()V

    .line 1365
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isPilotingModeFollowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showRecording()V

    .line 1367
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePilotingModeNavigationButtons()V

    .line 1369
    :cond_0
    return-void
.end method

.method protected followMeStateToPilotingMode(I)I
    .locals 1
    .param p1, "followMeState"    # I

    .prologue
    const/4 v0, 0x2

    .line 1484
    packed-switch p1, :pswitch_data_0

    .line 1493
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1490
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFollowMeControllerInterface()Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    return-object v0
.end method

.method protected hideFollowMeChecking()V
    .locals 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->setVisibility(I)V

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .line 1512
    :cond_0
    return-void
.end method

.method protected hideJoysticks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 798
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->lockEdition(Z)V

    .line 799
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticks()V

    .line 800
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V

    .line 801
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;)V

    .line 802
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->enableAltitudeSeekBarIfNeeded()V

    .line 805
    :cond_0
    return-void
.end method

.method protected hidePilotingTopToolbar()V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1284
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hidePilotingTopToolbar()V

    .line 1285
    return-void
.end method

.method protected initVideoStreaming()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1391
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1393
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1394
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1395
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 1396
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1399
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-eqz v2, :cond_1

    .line 1400
    new-instance v0, Lcom/parrot/controller/video/openGL/GLViewYUV;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parrot/controller/video/openGL/GLViewYUV;-><init>(Landroid/content/Context;)V

    .line 1401
    .local v0, "glView":Lcom/parrot/controller/video/openGL/GLViewYUV;
    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/video/openGL/GLViewYUV;->setTextureScaleMode(Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;)V

    .line 1402
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1403
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->setUseGlViewYUV(ZLcom/parrot/controller/video/openGL/GLViewYUV;)V

    .line 1404
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->setOnFrameDecodedListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;)V

    .line 1411
    .end local v0    # "glView":Lcom/parrot/controller/video/openGL/GLViewYUV;
    :goto_0
    return-void

    .line 1406
    :cond_1
    new-instance v2, Lcom/parrot/freeflight/view/FixedRatioTextureView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/view/FixedRatioTextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingView:Landroid/view/TextureView;

    .line 1407
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingView:Landroid/view/TextureView;

    new-instance v3, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;

    invoke-direct {v3}, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1408
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1409
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isFollowMeAccessible()Z
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->checkLynxAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1537
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFollowMeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isPilotingModeFollowMe()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isPilotingModeStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1536
    :goto_0
    return v0

    .line 1538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFpvSupported()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method protected isSkyControllerMandatory()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 741
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onBackPressed()Z

    move-result v0

    .line 742
    .local v0, "shouldStayInHud":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLockedForFollowMe:Z

    if-eqz v1, :cond_1

    .line 743
    const/4 v0, 0x1

    .line 758
    :cond_0
    :goto_0
    return v0

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchSuggestionView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    if-eqz v1, :cond_2

    .line 745
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->backFromHandLaunchSuggestionView()V

    .line 746
    const/4 v0, 0x1

    goto :goto_0

    .line 747
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchHowToView:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    if-eqz v1, :cond_3

    .line 748
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->backFromHandLaunchHowToView()V

    .line 749
    const/4 v0, 0x1

    goto :goto_0

    .line 750
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    if-eqz v1, :cond_4

    .line 751
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->backFromFollowMeLockTutoView()V

    .line 752
    const/4 v0, 0x1

    goto :goto_0

    .line 753
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-eqz v1, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->backFromFollowMeChecking()V

    .line 755
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 727
    const-string v0, "follow me state"

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-eqz v0, :cond_1

    .line 730
    const-string v0, "follow_me_init_view"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 736
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeLockTutoView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "follow_me_init_view"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->pause()V

    .line 695
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->pause()V

    .line 697
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->pauseFollowView()V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->destroyVideoStream()V

    .line 703
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 704
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/FollowMeManager;->removeListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V

    .line 705
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 678
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->resume()V

    .line 680
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->resumeFollowView()V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initVideoStreaming()V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/FollowMeManager;->addListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V

    .line 689
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 690
    return-void
.end method

.method protected showFollowMeChecking()V
    .locals 4

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-nez v0, :cond_0

    .line 1499
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeListener:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .line 1500
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1501
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->setVisibility(I)V

    .line 1502
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->startListeningFollowMeGps()V

    .line 1504
    :cond_0
    return-void
.end method

.method protected showJoysticks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticks()V

    .line 779
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->hide()V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 783
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->lockEdition(Z)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V

    .line 788
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;)V

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeSeekBarEnabled(Z)V

    .line 793
    :cond_3
    return-void
.end method

.method protected showJoysticksInMapModeWithoutGamepadConnected()V
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 1346
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    .line 1347
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticksSwitch()V

    .line 1348
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->moveVideoStreamCenter()V

    .line 1349
    return-void
.end method

.method protected showJoysticksInStreamingModeWithoutGamepadConnected()V
    .locals 0

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticksSwitch()V

    .line 1329
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    .line 1330
    return-void
.end method

.method protected showPilotingTopToolbar()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1273
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showPilotingTopToolbar()V

    .line 1274
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->start()V

    .line 663
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->start()V

    .line 664
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setReframingListener(Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;)V

    .line 665
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mIsFirstLaunch:Z

    if-eqz v0, :cond_1

    .line 666
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLaunchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-nez v0, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterFollowMeMode()V

    .line 668
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLaunchMode:I

    .line 672
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mIsFirstLaunch:Z

    .line 674
    :cond_1
    return-void

    .line 669
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLaunchMode:I

    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterStreamingMode()V

    goto :goto_0
.end method

.method protected startListeningFollowMeGps()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->requestFollowMe()V

    .line 1434
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1435
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 709
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->stop()V

    .line 710
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->stop()V

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 712
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->removeRefraimingListener()V

    .line 718
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFollowMeChecking()V

    .line 721
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->stopListeningFollowMeGps()V

    .line 722
    return-void
.end method

.method protected stopListeningFollowMeGps()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1439
    return-void
.end method

.method protected updateAlertMessage()V
    .locals 8

    .prologue
    .line 866
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 868
    .local v1, "bebopModel":Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v3

    .line 869
    .local v3, "pilotingMode":I
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getGenericAlerts(Z)Ljava/util/List;

    move-result-object v0

    .line 870
    .local v0, "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getFollowMeRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->getFollowMeAlerts(I)Ljava/util/List;

    move-result-object v2

    .line 871
    .local v2, "followMeRequirements":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 873
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 876
    .end local v0    # "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    .end local v1    # "bebopModel":Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .end local v2    # "followMeRequirements":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    .end local v3    # "pilotingMode":I
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mPause:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v4}, Lcom/parrot/freeflight/util/AlertSound;->startRepeatSound()V

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v4}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    goto :goto_0
.end method

.method protected updateConnectionState(ZZ)V
    .locals 0
    .param p1, "isConnectedNow"    # Z
    .param p2, "wasConnected"    # Z

    .prologue
    .line 1289
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateConnectionState(ZZ)V

    .line 1290
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->stopListeningFollowMeGps()V

    .line 1292
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFollowMeChecking()V

    .line 1294
    :cond_0
    return-void
.end method

.method protected updateFlyingState()V
    .locals 1

    .prologue
    .line 882
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlyingState()V

    .line 883
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 886
    :cond_0
    return-void
.end method

.method protected updateFollowMeModeView(I)V
    .locals 5
    .param p1, "followMeState"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1183
    if-eqz p1, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->setVisibility(I)V

    .line 1185
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFPVButton()V

    .line 1189
    :cond_0
    if-eq p1, v3, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->updateView()V

    .line 1191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1195
    :cond_1
    if-nez p1, :cond_4

    .line 1196
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShouldHideFpvButton:Z

    if-nez v0, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFPVButton()V

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->hide()V

    .line 1201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->setVisibility(I)V

    .line 1229
    :cond_3
    :goto_0
    return-void

    .line 1203
    :cond_4
    if-ne p1, v3, :cond_6

    .line 1204
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->show(I)V

    .line 1205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setToFollowMeMode(Z)V

    .line 1206
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mAnimationViewController:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->hide()V

    .line 1207
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1209
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isGamepadConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1213
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticksSwitch()V

    .line 1214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1215
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    goto :goto_0

    .line 1218
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticks()V

    .line 1219
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticksSwitch()V

    goto :goto_0

    .line 1222
    :cond_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->show(I)V

    .line 1225
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticks()V

    .line 1226
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticksSwitch()V

    .line 1227
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setToFollowMeMode(Z)V

    goto :goto_0
.end method

.method protected updateMotionState(IZ)V
    .locals 1
    .param p1, "motionState"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 890
    if-nez p2, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMotionState:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 891
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMotionState:I

    .line 893
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFlyingState()V

    .line 895
    :cond_1
    return-void
.end method

.method protected updatePilotingModeNavigationButtons()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1251
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLockedForFollowMe:Z

    if-eqz v3, :cond_1

    .line 1252
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1253
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isFollowMeAccessible()Z

    move-result v0

    .line 1256
    .local v0, "followMeAccessible":Z
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1257
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeModeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1259
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->isPilotingModeMap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateScreenRotation()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    .line 1177
    return-void
.end method

.method protected updateUiOnDroneInTheAir()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 918
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchAlertIfNeeded()V

    .line 920
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    if-nez v1, :cond_2

    .line 921
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInMoveToMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 940
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInPilotedPOIMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0

    .line 926
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneInTheAir()V

    goto :goto_0

    .line 928
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMode:I

    if-ne v1, v0, :cond_5

    .line 929
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 930
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/FollowMeManager;->isFollowMeAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 932
    .local v0, "isFollowMeAccessible":Z
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticksSwitch()V

    .line 933
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    :goto_2
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0

    .line 930
    .end local v0    # "isFollowMeAccessible":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 933
    .restart local v0    # "isFollowMeAccessible":Z
    :cond_4
    const/4 v1, 0x4

    goto :goto_2

    .line 938
    .end local v0    # "isFollowMeAccessible":Z
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0
.end method

.method protected updateUiOnDroneOnTheGround()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 908
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideHandLaunchAlertIfNeeded()V

    .line 909
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMotionState:I

    if-ne v0, v1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 914
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0
.end method

.method protected updateUiWaitingUserTakeOffAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 899
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mHandLaunchAlertTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    return-void
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 24
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 809
    invoke-super/range {p0 .. p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    move-object/from16 v2, p1

    .line 810
    check-cast v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 811
    .local v2, "bebopModel":Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v20

    .line 812
    .local v20, "pilotingMode":I
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getBehaviorMode()I

    move-result v9

    .line 813
    .local v9, "behaviorMode":I
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getFollowMeRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v13

    .line 814
    .local v13, "followMeRequirementContainer":Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getFollowMeImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v12

    .line 815
    .local v12, "followMeImprovementContainer":Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v3, v4

    move/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v7

    .line 816
    .local v7, "altitudeAlert":Z
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    move/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v14

    .line 817
    .local v14, "gpsBadAccuracyAlert":Z
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v3, v4

    move/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v10

    .line 818
    .local v10, "distanceAlert":Z
    const/4 v8, 0x0

    .line 819
    .local v8, "lowAltitudeImprovement":Z
    const/4 v15, 0x0

    .line 820
    .local v15, "lowDistanceImprovement":Z
    const/4 v3, 0x2

    if-eq v9, v3, :cond_0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_3

    .line 821
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v3, v4

    move/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v8

    .line 822
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v3, v4

    move/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v15

    .line 832
    :goto_0
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v3, v10, v15}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateDistanceBackground(ZZ)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v6

    invoke-virtual/range {v3 .. v8}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZZZ)V

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getBatteryLevel()I

    move-result v4

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasOneAlert([I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateBatteryLevel(IZ)V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getGpsFixStatus()I

    move-result v4

    invoke-virtual {v3, v4, v14}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateGpsFixedStatus(IZ)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getRssi()S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRssiLevel(S)V

    .line 843
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteCtrl(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeViewController:Lcom/parrot/freeflight/followme/FollowMeViewController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateView(Z)V

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 846
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentFlipDirection()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFlipButton(I)V

    .line 847
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePilotingMode(I)V

    .line 848
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOIStatus()I

    move-result v3

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToStatus()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePoiTapMode(II)V

    .line 849
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateAnimationView(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v3, :cond_1

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToStatus()I

    move-result v4

    .line 853
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    const/4 v6, 0x0

    .line 852
    invoke-virtual {v3, v4, v5, v6}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateMoveTo(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOIStatus()I

    move-result v4

    .line 855
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOILocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    const/4 v6, 0x0

    .line 854
    invoke-virtual {v3, v4, v5, v6}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updatePilotedPOI(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 858
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getHandLaunchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 859
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMotionState()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateMotionState(IZ)V

    .line 861
    :cond_2
    return-void

    .line 824
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v18

    .line 825
    .local v18, "maxDistance":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getDistanceToDrone()F

    move-result v11

    .line 826
    .local v11, "distanceToDrone":F
    float-to-double v4, v11

    cmpl-double v3, v4, v18

    if-lez v3, :cond_4

    const/4 v10, 0x1

    .line 827
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v16

    .line 828
    .local v16, "maxAltitude":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v22

    .line 829
    .local v22, "relativeAltitude":D
    cmpl-double v3, v22, v16

    if-lez v3, :cond_5

    const/4 v7, 0x1

    :goto_3
    goto/16 :goto_0

    .line 826
    .end local v16    # "maxAltitude":D
    .end local v22    # "relativeAltitude":D
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 829
    .restart local v16    # "maxAltitude":D
    .restart local v22    # "relativeAltitude":D
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 839
    .end local v11    # "distanceToDrone":F
    .end local v16    # "maxAltitude":D
    .end local v18    # "maxDistance":D
    .end local v22    # "relativeAltitude":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setDisconnectedValues()V

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onDroneDisconnected()V

    goto/16 :goto_1

    .line 835
    nop

    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method
