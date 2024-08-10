.class public Lcom/parrot/freeflight/followme/FollowMeViewController;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;,
        Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;,
        Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;
    }
.end annotation


# static fields
.field private static final POPOVER_DELAY:I = 0x1388

.field private static final REFRAMING_LIMIT_SIZE_FACTOR:F = 0.11111111f

.field private static final REFRAMING_MAGNETISM_LIMIT:F = 20.0f

.field private static final REFRAMING_STARTING_POSITION_PERCENT:I = 0x32

.field private static final REFRAMING_ZONE_STARTING_TRANSLATION:I = 0x0

.field private static final SELECTION_TIME_LIMIT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "FollowMeViewController"


# instance fields
.field private mAnimationsDisplayed:Z

.field private final mBackwardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBehaviorMode:I

.field private final mButtonsLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectedToRemote:Z

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDisplayedPilotingMode:I

.field private mFirstUseCallback:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFirstUseHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeClickListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

.field private final mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

.field private final mFollowMeLockListeners:[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFollowMode:I

.field private mHorizontalReframingLimitSize:F

.field private mIsReframing:Z

.field private final mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocked:Z

.field private final mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLowAltitudeWarning:Z

.field private mLowDistanceWarning:Z

.field private final mOverdriveButtonsLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOverdriveTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPopOverWillAppear:Z

.field private final mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReframingArrowSize:I

.field private final mReframingAvailableZoneLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReframingLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReframingMovingFrame:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReframingPreviousX:F

.field private mReframingPreviousY:F

.field private final mReframingSelectedZoneLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReframingZoneBottomArrow:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReframingZoneLeftArrow:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReframingZoneRightArrow:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReframingZoneTopArrow:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScanImageView:Landroid/widget/ImageView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShouldForceUpdate:Z

.field private final mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUpImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVerticalReframingLimitSize:F

.field private mWasRectangleLocked:Z

.field private final mYawRollLeftImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mYawRollRightImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mZoneSelected:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;ZLcom/parrot/freeflight/piloting/ui/TouchController;Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "connectedToRemote"    # Z
    .param p6, "touchController"    # Lcom/parrot/freeflight/piloting/ui/TouchController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "telemetryUiController"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "followMeFirstUseView"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "followMeClickListener"    # Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "followMeLockListeners"    # [Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v5, 0x0

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBehaviorMode:I

    .line 78
    const/4 v5, 0x0

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    .line 80
    const/4 v5, 0x0

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    .line 105
    const/4 v5, 0x1

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    .line 106
    const/4 v5, 0x1

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    .line 180
    new-instance v5, Lcom/parrot/freeflight/followme/FollowMeViewController$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$1;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    .line 200
    new-instance v5, Lcom/parrot/freeflight/followme/FollowMeViewController$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$2;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mOverdriveTouchListener:Landroid/view/View$OnTouchListener;

    .line 241
    new-instance v5, Lcom/parrot/freeflight/followme/FollowMeViewController$3;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$3;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    .line 275
    new-instance v5, Lcom/parrot/freeflight/followme/FollowMeViewController$4;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$4;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    .line 309
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mContext:Landroid/content/Context;

    .line 310
    iput-object p3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 311
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeClickListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    .line 312
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeLockListeners:[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    .line 313
    iput-boolean p5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mConnectedToRemote:Z

    .line 314
    const v5, 0x7f0a02c2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 315
    iput-object p6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    .line 316
    iput-object p7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .line 317
    invoke-static {p1}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    .line 318
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setFlyingButtonOnClickListener()V

    .line 321
    const v5, 0x7f0a028a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mButtonsLayout:Landroid/view/View;

    .line 322
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0289

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mOverdriveButtonsLayout:Landroid/view/View;

    .line 323
    new-instance v5, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-direct {v5, p1, p2, v6, p4}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .line 324
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a03df

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .line 325
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a050a

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/followme/widget/TrackLayout;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    .line 326
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a050b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/followme/widget/TrackLayout;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    .line 327
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a02b8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingLayout:Landroid/view/View;

    .line 328
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a02b9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    .line 329
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a02bb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    .line 330
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a02ba

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingMovingFrame:Landroid/view/View;

    .line 331
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0216

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    .line 332
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0217

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    .line 333
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0218

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    .line 334
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0215

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    .line 336
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseHandler:Landroid/os/Handler;

    .line 337
    new-instance v5, Lcom/parrot/freeflight/followme/FollowMeViewController$5;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$5;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseCallback:Ljava/lang/Runnable;

    .line 344
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    .line 345
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    new-instance v6, Lcom/parrot/freeflight/followme/FollowMeViewController$6;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$6;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->setOnPositiveClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v5, 0x7f0a00a7

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mUpImageView:Landroid/widget/ImageView;

    .line 355
    const v5, 0x7f0a00a5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    .line 356
    const v5, 0x7f0a00a9

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mYawRollRightImageView:Landroid/widget/ImageView;

    .line 357
    const v5, 0x7f0a00a8

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mYawRollLeftImageView:Landroid/widget/ImageView;

    .line 358
    const v5, 0x7f0a00a6

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    .line 359
    const v5, 0x7f0a00a4

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setOverdriveTouchListener(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBackwardImageView:Landroid/widget/ImageView;

    .line 362
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setTrackListener(Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;)V

    .line 363
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setTrackListener(Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;)V

    .line 366
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setOnSelectionListener(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;)V

    .line 367
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setForwardTouchEventView(Landroid/view/View;)V

    .line 368
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    new-instance v6, Lcom/parrot/freeflight/followme/FollowMeViewController$7;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$7;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLongPressListener:Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setLongPressListener(Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;)V

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06018d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingArrowSize:I

    .line 384
    const-string/jumbo v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 385
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 386
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 387
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    const v5, 0x3de38e39

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mHorizontalReframingLimitSize:F

    .line 390
    const v5, 0x3de38e39

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mVerticalReframingLimitSize:F

    .line 391
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 392
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/graphics/Point;->y:I

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mVerticalReframingLimitSize:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 393
    iget v5, v3, Landroid/graphics/Point;->x:I

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mHorizontalReframingLimitSize:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/widget/TrackLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->enterLockedMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/followme/FollowMeViewController;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/followme/FollowMeViewController;->startSelectionAnimationAt(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/followme/FollowMeViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->startReframing()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopReframing()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/followme/FollowMeViewController;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->reframingMotion(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->pauseReframingMotion()V

    return-void
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mPopOverWillAppear:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->showPopOver()V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/widget/TrackLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeClickListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/followme/FollowMeViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/followme/FollowMeViewController;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getScanPendingAnimation()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSelection(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->removeScanImageView()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->exitLockedMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/followme/FollowMeViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/followme/FollowMeViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBehaviorMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mZoneSelected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/TouchController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    return-object v0
.end method

.method private cancelShowPopOver()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mPopOverWillAppear:Z

    .line 593
    return-void
.end method

.method private enterLockedMode()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1035
    iput-boolean v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    .line 1036
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateView(Z)V

    .line 1037
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->isLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mWasRectangleLocked:Z

    .line 1038
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeLockListeners:[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 1039
    .local v0, "followMeLockListener":Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;->onLockedModeEntered()V

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1041
    .end local v0    # "followMeLockListener":Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSendingOverdriveCmds()V

    .line 1042
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->enterLockedMode()V

    .line 1043
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setLockedMode(Z)V

    .line 1044
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    .line 1045
    return-void
.end method

.method private exitLockedMode()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1048
    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    .line 1049
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeLockListeners:[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1050
    .local v0, "followMeLockListener":Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;->onLockedModeExited()V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    .end local v0    # "followMeLockListener":Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->exitLockedMode()V

    .line 1053
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mWasRectangleLocked:Z

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setLockedMode(Z)V

    .line 1054
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->reset()V

    .line 1055
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    .line 1057
    iget v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    if-nez v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    .line 1061
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateView(Z)V

    .line 1062
    return-void
.end method

.method private getMagnetizedTranslationsToReframingZone(FFFF)Landroid/graphics/Point;
    .locals 6
    .param p1, "translationX"    # F
    .param p2, "oldTranslationX"    # F
    .param p3, "translationY"    # F
    .param p4, "oldTranslationY"    # F

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 903
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getTopLeftPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 909
    .local v2, "lynxZonePosition":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 910
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 912
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 913
    .local v0, "currentZoneLeft":F
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 921
    .local v1, "currentZoneTop":F
    add-float v3, v0, p1

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    add-float v3, v1, p3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 922
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 923
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float p1, v3, v0

    .line 924
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float p3, v3, v1

    .line 931
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    float-to-int v4, p1

    float-to-int v5, p3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v3

    .line 925
    :cond_1
    add-float v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    add-float v3, p4, p3

    .line 926
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 927
    neg-float p1, p2

    .line 928
    neg-float p3, p4

    goto :goto_0
.end method

.method private getProperXTranslationToReframingZone(F)F
    .locals 9
    .param p1, "translationX"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 948
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    .line 949
    .local v1, "currentZoneLeft":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float v2, v1, v6

    .line 951
    .local v2, "currentZoneRight":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 952
    .local v3, "leftArrowWidth":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 954
    .local v5, "rightArrowWidth":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v0, v6

    .line 956
    .local v0, "availableZoneWidth":F
    sub-float v6, v2, v5

    add-float v4, v6, p1

    .line 958
    .local v4, "nextZoneSide":F
    cmpl-float v6, v4, v0

    if-lez v6, :cond_0

    .line 959
    sub-float v6, v4, v0

    sub-float/2addr p1, v6

    .line 960
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    :goto_0
    add-float v6, v1, v3

    add-float v4, v6, p1

    .line 969
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    .line 970
    sub-float/2addr p1, v4

    .line 971
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    :goto_1
    return p1

    .line 961
    :cond_0
    sub-float v6, v0, v4

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 962
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 964
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 972
    :cond_2
    cmpg-float v6, v4, v3

    if-gez v6, :cond_3

    .line 973
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 975
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getProperYTranslationToReframingZone(F)F
    .locals 9
    .param p1, "translationY"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 991
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v3

    .line 992
    .local v3, "currentZoneTop":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v2, v3, v6

    .line 994
    .local v2, "currentZoneBottom":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v5, v6

    .line 995
    .local v5, "topArrowHeight":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v1, v6

    .line 997
    .local v1, "bottomArrowHeight":F
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 1000
    .local v0, "availableZoneHeight":F
    sub-float v6, v2, v1

    add-float v4, v6, p1

    .line 1001
    .local v4, "nextZoneSide":F
    cmpl-float v6, v4, v0

    if-lez v6, :cond_0

    .line 1002
    sub-float v6, v4, v0

    sub-float/2addr p1, v6

    .line 1003
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    :goto_0
    add-float v6, v3, v5

    add-float v4, v6, p1

    .line 1012
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    .line 1013
    sub-float/2addr p1, v4

    .line 1014
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1021
    :goto_1
    return p1

    .line 1004
    :cond_0
    sub-float v6, v0, v4

    cmpg-float v6, v6, v1

    if-gez v6, :cond_1

    .line 1005
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1015
    :cond_2
    cmpg-float v6, v4, v5

    if-gez v6, :cond_3

    .line 1016
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1018
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getScanErrorAnimation()Landroid/graphics/drawable/AnimationDrawable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 677
    new-instance v0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mContext:Landroid/content/Context;

    const v2, 0x7f070060

    .line 678
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 681
    .local v0, "drawable":Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setOneShot(Z)V

    .line 682
    new-instance v1, Lcom/parrot/freeflight/followme/FollowMeViewController$13;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$13;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setAnimationListener(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;)V

    .line 689
    return-object v0
.end method

.method private getScanInitAnimation()Landroid/graphics/drawable/AnimationDrawable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mContext:Landroid/content/Context;

    const v2, 0x7f070061

    .line 640
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 643
    .local v0, "drawable":Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setOneShot(Z)V

    .line 644
    new-instance v1, Lcom/parrot/freeflight/followme/FollowMeViewController$11;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$11;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setAnimationListener(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;)V

    .line 655
    return-object v0
.end method

.method private getScanPendingAnimation()Landroid/graphics/drawable/AnimationDrawable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 660
    new-instance v0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mContext:Landroid/content/Context;

    const v2, 0x7f070062

    .line 661
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 664
    .local v0, "drawable":Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setTimeLimit(I)V

    .line 665
    new-instance v1, Lcom/parrot/freeflight/followme/FollowMeViewController$12;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$12;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->setAnimationListener(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;)V

    .line 672
    return-object v0
.end method

.method private isInAnyFollowMeState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 461
    iget v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseReframingMotion()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 832
    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    .line 833
    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    .line 834
    return-void
.end method

.method private reframingMotion(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "m"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 808
    .local v4, "positionX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 809
    .local v5, "positionY":F
    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 810
    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 811
    .local v2, "oldTranslationX":F
    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 812
    .local v3, "oldTranslationY":F
    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    sub-float v0, v4, v7

    .line 813
    .local v0, "actualTranslationX":F
    iget v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    sub-float v1, v5, v7

    .line 816
    .local v1, "actualTranslationY":F
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getMagnetizedTranslationsToReframingZone(FFFF)Landroid/graphics/Point;

    move-result-object v6

    .line 817
    .local v6, "translationAfterMagnetism":Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v7

    .line 818
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v1, v7

    .line 821
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getProperXTranslationToReframingZone(F)F

    move-result v0

    .line 822
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getProperYTranslationToReframingZone(F)F

    move-result v1

    .line 824
    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    add-float v8, v2, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 825
    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    add-float v8, v3, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 827
    .end local v0    # "actualTranslationX":F
    .end local v1    # "actualTranslationY":F
    .end local v2    # "oldTranslationX":F
    .end local v3    # "oldTranslationY":F
    .end local v6    # "translationAfterMagnetism":Landroid/graphics/Point;
    :cond_0
    iput v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    .line 828
    iput v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    .line 829
    return-void
.end method

.method private removeScanImageView()V
    .locals 4

    .prologue
    .line 623
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 625
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 626
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 627
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 632
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 633
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    .line 635
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setFlyingButtonOnClickListener()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x4

    new-instance v2, Lcom/parrot/freeflight/followme/FollowMeViewController$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$8;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 433
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x7

    new-instance v2, Lcom/parrot/freeflight/followme/FollowMeViewController$9;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$9;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x5

    new-instance v2, Lcom/parrot/freeflight/followme/FollowMeViewController$10;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/followme/FollowMeViewController$10;-><init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 451
    return-void
.end method

.method private setOverdriveTouchListener(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 455
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .local v0, "view":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mOverdriveTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    return-object v0
.end method

.method private setReframingSelectedZoneSize()V
    .locals 4

    .prologue
    .line 871
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingMovingFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 872
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getSelectionHeight()I

    move-result v1

    .line 873
    .local v1, "selectionHeight":I
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getSelectionWidth()I

    move-result v2

    .line 874
    .local v2, "selectionWidth":I
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 875
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 876
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingMovingFrame:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 881
    iget v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingArrowSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 882
    iget v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingArrowSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 883
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    return-void
.end method

.method private showPopOver()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->setVisibility(I)V

    .line 588
    return-void
.end method

.method private startReframing()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 784
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mIsReframing:Z

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mIsReframing:Z

    .line 786
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mButtonsLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setTouchEnabled(Z)V

    .line 789
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setReframingSelectedZoneSize()V

    .line 792
    iput v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousX:F

    .line 793
    iput v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingPreviousY:F

    .line 794
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneTopArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingZoneBottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;->startReframing()V

    .line 804
    :cond_0
    return-void
.end method

.method private startSelectionAnimationAt(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 596
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->removeScanImageView()V

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getScanInitAnimation()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 603
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    .line 604
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 606
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 608
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 609
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 610
    return-void
.end method

.method private stopReframing()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 837
    iget-boolean v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mIsReframing:Z

    if-eqz v3, :cond_0

    .line 838
    iput-boolean v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mIsReframing:Z

    .line 839
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mButtonsLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setTouchEnabled(Z)V

    .line 843
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 846
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 850
    .local v1, "centerY":F
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    .line 851
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingAvailableZoneLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    .line 856
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 857
    .local v2, "reframingLayoutHeight":F
    mul-float v3, v5, v0

    iget-object v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 858
    sub-float v3, v2, v1

    mul-float/2addr v3, v5

    div-float v1, v3, v2

    .line 860
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    float-to-int v4, v0

    float-to-int v5, v1

    invoke-interface {v3, v4, v5}, Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;->stopReframing(II)V

    .line 863
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "reframingLayoutHeight":F
    :cond_0
    return-void
.end method

.method private stopSelection(Z)V
    .locals 2
    .param p1, "error"    # Z

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->getScanErrorAnimation()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 615
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 620
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->removeScanImageView()V

    goto :goto_0
.end method

.method private stopSendingOverdriveCmds()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->throttleAtWithCommandsActivation(F)V

    .line 764
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->rollAtWithCommandsActivation(F)V

    .line 765
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->yawToWithCommandsActivation(F)V

    .line 766
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->pitchAtWithCommandsActivation(F)V

    .line 767
    return-void
.end method

.method private updateBehaviorMode(I)V
    .locals 2
    .param p1, "behaviorMode"    # I

    .prologue
    .line 542
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBehaviorMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mShouldForceUpdate:Z

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBehaviorMode:I

    .line 545
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-nez v0, :cond_1

    .line 546
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBehaviorMode:I

    packed-switch v0, :pswitch_data_0

    .line 554
    const-string v0, "FollowMeViewController"

    const-string v1, "behaviour mode changed to none"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSendingOverdriveCmds()V

    .line 556
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSelection(Z)V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 548
    :pswitch_0
    const-string v0, "FollowMeViewController"

    const-string v1, "behaviour mode changed to Follow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :pswitch_1
    const-string v0, "FollowMeViewController"

    const-string v1, "behaviour mode changed to Loot At"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOverdriveButtons(Lcom/parrot/freeflight/followme/FollowMeDroneRequests;)V
    .locals 9
    .param p1, "improvementsRequests"    # Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f070200

    const v4, 0x7f0701fa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 564
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    new-array v5, v8, [I

    const/4 v6, 0x6

    aput v6, v5, v7

    invoke-virtual {p1, v2, v5}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v0

    .line 565
    .local v0, "lowAltitudeWarning":Z
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    new-array v5, v8, [I

    const/4 v6, 0x5

    aput v6, v5, v7

    invoke-virtual {p1, v2, v5}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v1

    .line 567
    .local v1, "lowDistanceWarning":Z
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLowAltitudeWarning:Z

    if-eq v2, v0, :cond_0

    .line 568
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mUpImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 569
    iput-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLowAltitudeWarning:Z

    .line 572
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLowDistanceWarning:Z

    if-eq v2, v1, :cond_1

    .line 573
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBackwardImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 574
    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLowDistanceWarning:Z

    .line 576
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 568
    goto :goto_0

    :cond_3
    move v3, v4

    .line 573
    goto :goto_1
.end method

.method private updateOverdriveButtonsVisibility()V
    .locals 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mAnimationsDisplayed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->isInAnyFollowMeState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mConnectedToRemote:Z

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mOverdriveButtonsLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mOverdriveButtonsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePilotingMode(I)V
    .locals 3
    .param p1, "followMode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 518
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    if-eq v0, p1, :cond_1

    .line 519
    iput p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    .line 521
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    if-nez v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;->onTargetUnselected()V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->showDashAnimation(Z)V

    .line 524
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectMode(I)V

    .line 525
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mStopFollowTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    .line 539
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_3
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLockTrack:Lcom/parrot/freeflight/followme/widget/TrackLayout;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMediaRecordingState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startMediaRecording()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 493
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSendingOverdriveCmds()V

    .line 494
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->cancelShowPopOver()V

    .line 495
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeFirstUseView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->dismiss()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->hide()V

    .line 498
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->exitLockedMode()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    return-void
.end method

.method public isAnimationsButtonsDisplayed()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mAnimationsDisplayed:Z

    return v0
.end method

.method public lockEdition(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setLockedMode(Z)V

    .line 1032
    return-void
.end method

.method public removeRefraimingListener()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    .line 781
    return-void
.end method

.method public setAnimationsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mLocked:Z

    if-nez v0, :cond_0

    .line 414
    iput-boolean p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mAnimationsDisplayed:Z

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateView(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public setOnTargetChangeListener(Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;)V
    .locals 0
    .param p1, "targetChangeListener"    # Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 409
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    .line 410
    return-void
.end method

.method public setReframingListener(Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 776
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingListener:Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;

    .line 777
    return-void
.end method

.method public show(I)V
    .locals 4
    .param p1, "displayedPilotingMode"    # I

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRootLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    if-eq v0, p1, :cond_2

    .line 472
    iput p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    .line 475
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mReframingSelectedZoneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v3, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->requestFollowMeReframing(II)V

    .line 479
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mZoneSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->isFirstUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->showPopOver()V

    .line 483
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->show()V

    .line 489
    :cond_2
    :goto_0
    return-void

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->hide()V

    goto :goto_0
.end method

.method public stopFollowMe()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTelemetryController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setToFollowMeMode(Z)V

    .line 758
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startFollowMeMode(I)V

    .line 759
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->hide()V

    .line 760
    return-void
.end method

.method public stopLookAt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    .line 748
    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mZoneSelected:Z

    .line 749
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->resetSelection()V

    .line 750
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->stopFollowMe()V

    .line 751
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setLongPressAvailable(Z)V

    .line 752
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->hide()V

    .line 753
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;->onTargetUnselected()V

    .line 754
    :cond_0
    return-void
.end method

.method public updateLynxResult(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .locals 6
    .param p1, "result"    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 701
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mZoneSelected:Z

    if-eqz v2, :cond_4

    .line 702
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->status:I

    if-ne v2, v5, :cond_5

    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    if-lez v2, :cond_5

    .line 703
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectMode(I)V

    .line 704
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mScanImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 705
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopSelection(Z)V

    .line 714
    :cond_0
    :goto_0
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    if-lez v2, :cond_7

    .line 715
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    if-nez v2, :cond_1

    .line 716
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 717
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startFollowMeMode(I)V

    .line 721
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMode:I

    if-ne v2, v4, :cond_2

    .line 722
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mDisplayedPilotingMode:I

    if-ne v2, v4, :cond_2

    .line 723
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startFollowMeMode(I)V

    .line 727
    :cond_2
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_left:F

    iget v3, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_width:F

    add-float v0, v2, v3

    .line 728
    .local v0, "bottomRightRelativeX":F
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_top:F

    iget v3, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_height:F

    add-float v1, v2, v3

    .line 730
    .local v1, "bottomRightRelativeY":F
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    iget v3, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_left:F

    iget v4, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_top:F

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectedZone(FFFF)V

    .line 732
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mIsReframing:Z

    if-eqz v2, :cond_3

    .line 733
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->setReframingSelectedZoneSize()V

    .line 736
    :cond_3
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mPopOverWillAppear:Z

    if-eqz v2, :cond_4

    .line 737
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->cancelShowPopOver()V

    .line 744
    .end local v0    # "bottomRightRelativeX":F
    .end local v1    # "bottomRightRelativeY":F
    :cond_4
    :goto_1
    return-void

    .line 707
    :cond_5
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->status:I

    if-ne v2, v5, :cond_6

    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    if-nez v2, :cond_6

    .line 708
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectMode(I)V

    .line 709
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setLongPressAvailable(Z)V

    goto :goto_0

    .line 710
    :cond_6
    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->status:I

    if-ne v2, v4, :cond_0

    .line 711
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mRectangleSelectorView:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectMode(I)V

    goto :goto_0

    .line 739
    :cond_7
    iget-boolean v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mPopOverWillAppear:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->isFirstUse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 740
    iput-boolean v4, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mPopOverWillAppear:Z

    .line 741
    iget-object v2, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFirstUseCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public updateView(Z)V
    .locals 1
    .param p1, "shouldForceUpdate"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mShouldForceUpdate:Z

    .line 504
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updatePilotingMode(I)V

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getBehaviorMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateBehaviorMode(I)V

    .line 506
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getFollowMeImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateOverdriveButtons(Lcom/parrot/freeflight/followme/FollowMeDroneRequests;)V

    .line 507
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->updateOverdriveButtonsVisibility()V

    .line 509
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateRadar()V

    .line 510
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mAnimationsDisplayed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->isInAnyFollowMeState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->hide()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController;->mFollowMeRadarController:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->show()V

    goto :goto_0
.end method
