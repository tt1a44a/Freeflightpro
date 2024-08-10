.class public Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
.super Ljava/lang/Object;
.source "TelemetryUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;,
        Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;
    }
.end annotation


# static fields
.field private static final CHARGING_OR_NO_DATA_DISPLAYED:Ljava/lang/String; = "- %"


# instance fields
.field private mAltitude:D

.field private final mAltitudeImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAltitudeLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAltitudeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryPhoneBroadcastReceiver:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mDistance:F

.field private final mDistanceImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDistanceLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDistanceTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mDroneBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneBatteryLevel:I

.field private final mDroneBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneGpsFixStatus:I

.field protected final mDroneGpsStatusImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasAltitudeAlert:Z

.field private mHasAltitudeImprovement:Z

.field private mHasBatteryAlert:Z

.field private mHasDistanceAlert:Z

.field private mHasDistanceImprovement:Z

.field private mHasGpsAlert:Z

.field private mLocked:Z

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPresetModeLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPresetModeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRemoteBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteControlBatteryLevel:I

.field protected mRemoteCtrlGpsFixStatus:I

.field protected final mRemoteGpsStatusImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRssiLevel:S

.field private mShowAltitude:Z

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSpeed:D

.field private final mSpeedTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTelemetryLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "telemetryLayout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneType"    # I
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v10, -0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    .line 103
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;)V

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mBatteryPhoneBroadcastReceiver:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;

    .line 106
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mShowAltitude:Z

    .line 107
    const-wide v8, -0x40af9db22d0e5604L    # -0.001

    iput-wide v8, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitude:D

    .line 108
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeed:D

    .line 109
    iput v10, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLevel:I

    .line 110
    iput v10, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteControlBatteryLevel:I

    .line 111
    iput-short v10, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRssiLevel:S

    .line 112
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistance:F

    .line 119
    iput v10, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsFixStatus:I

    .line 121
    iput v10, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteCtrlGpsFixStatus:I

    .line 130
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    .line 131
    new-instance v6, Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 133
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    .line 134
    .local v1, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 136
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryLayout:Landroid/view/View;

    .line 137
    const v6, 0x7f0a0420

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mPresetModeLayout:Landroid/view/View;

    .line 138
    const v6, 0x7f0a0421

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mPresetModeTextView:Landroid/widget/TextView;

    .line 139
    const v6, 0x7f0a041e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    .line 140
    const v6, 0x7f0a04bd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeedTextView:Landroid/widget/TextView;

    .line 141
    const v6, 0x7f0a025c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeLayout:Landroid/view/View;

    .line 142
    const v6, 0x7f0a01d1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeImageView:Landroid/widget/ImageView;

    .line 143
    const v6, 0x7f0a0432

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeTextView:Landroid/widget/TextView;

    .line 144
    const v6, 0x7f0a0271

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceLayout:Landroid/view/View;

    .line 145
    const v6, 0x7f0a01dc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceImageView:Landroid/widget/ImageView;

    .line 146
    const v6, 0x7f0a0453

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceTextView:Landroid/widget/TextView;

    .line 147
    const v6, 0x7f0a01e0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    .line 148
    const v6, 0x7f0a0424

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryTextView:Landroid/widget/TextView;

    .line 149
    const v6, 0x7f0a0422

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryImageView:Landroid/widget/ImageView;

    .line 150
    const v6, 0x7f0a0425

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteGpsStatusImageView:Landroid/widget/ImageView;

    .line 151
    const v6, 0x7f0a041d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryTextView:Landroid/widget/TextView;

    .line 152
    const v6, 0x7f0a041c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLayout:Landroid/view/View;

    .line 153
    const v6, 0x7f0a041b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    .line 154
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v9, 0x7f0500a8

    invoke-static {p1, v8, v9}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const v6, 0x7f0a01e4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/home/widget/WifiSignalView;

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    .line 157
    packed-switch p3, :pswitch_data_0

    .line 173
    :goto_0
    if-eqz p3, :cond_0

    if-eq p3, v3, :cond_0

    const/4 v6, 0x4

    if-ne p3, v6, :cond_1

    .line 176
    .local v3, "isModeVisible":Z
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mPresetModeLayout:Landroid/view/View;

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mPresetModeLayout:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 187
    invoke-direct {p0, p4}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteControlBatteryDrawable(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 189
    const v6, 0x7f0a0427

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "speedLayout":Landroid/view/View;
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeLayout:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceLayout:Landroid/view/View;

    new-instance v7, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v6, 0x7f0a04bc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 218
    .local v5, "speedUnitTextView":Landroid/widget/TextView;
    const v6, 0x7f0a0431

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 219
    .local v0, "altitudeUnitTextView":Landroid/widget/TextView;
    const v6, 0x7f0a0452

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, "distanceUnitTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeedTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    invoke-static {p1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 223
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 226
    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 228
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 229
    return-void

    .line 159
    .end local v0    # "altitudeUnitTextView":Landroid/widget/TextView;
    .end local v2    # "distanceUnitTextView":Landroid/widget/TextView;
    .end local v3    # "isModeVisible":Z
    .end local v4    # "speedLayout":Landroid/view/View;
    .end local v5    # "speedUnitTextView":Landroid/widget/TextView;
    :pswitch_0
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    const v8, 0x7f070079

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 163
    :pswitch_1
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    const v8, 0x7f07007a

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    const v8, 0x7f07007b

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 169
    :pswitch_3
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    const v8, 0x7f07007c

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    move v3, v7

    .line 173
    goto/16 :goto_1

    .line 176
    .restart local v3    # "isModeVisible":Z
    :cond_2
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteGpsStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mLocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteControlBatteryLevel(I)V

    return-void
.end method

.method private setAlertBackgroundColor(Landroid/view/View;ZZ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isAlert"    # Z
    .param p3, "isImprovement"    # Z

    .prologue
    .line 306
    if-eqz p2, :cond_0

    .line 307
    const v1, 0x7f05001c

    .line 314
    .local v1, "backgroundColorRes":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 315
    .local v0, "backgroundColor":I
    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setBackgroundColor(Landroid/view/View;I)V

    .line 316
    return-void

    .line 308
    .end local v0    # "backgroundColor":I
    .end local v1    # "backgroundColorRes":I
    :cond_0
    if-eqz p3, :cond_1

    .line 309
    const v1, 0x7f050141

    .restart local v1    # "backgroundColorRes":I
    goto :goto_0

    .line 311
    .end local v1    # "backgroundColorRes":I
    :cond_1
    const v1, 0x106000d

    .restart local v1    # "backgroundColorRes":I
    goto :goto_0
.end method

.method private updateRemoteControlBatteryDrawable(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 3
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 498
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    :cond_0
    const v0, 0x7f0703ad

    .line 505
    .local v0, "batteryRes":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    return-void

    .line 500
    .end local v0    # "batteryRes":I
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 501
    :cond_2
    const v0, 0x7f0703ae

    .restart local v0    # "batteryRes":I
    goto :goto_0

    .line 503
    .end local v0    # "batteryRes":I
    :cond_3
    const v0, 0x7f0703ac

    .restart local v0    # "batteryRes":I
    goto :goto_0
.end method

.method private updateRemoteControlBatteryLevel(I)V
    .locals 6
    .param p1, "batteryLevel"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteControlBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 487
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteControlBatteryLevel:I

    .line 488
    if-ltz p1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d %%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteBatteryTextView:Landroid/widget/TextView;

    const-string v1, "- %"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRemoteGpsStatus(I)V
    .locals 4
    .param p1, "remoteCtrlGpsFixStatus"    # I

    .prologue
    .line 476
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteCtrlGpsFixStatus:I

    if-eq v1, p1, :cond_0

    .line 477
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteCtrlGpsFixStatus:I

    .line 479
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteCtrlGpsFixStatus:I

    if-nez v1, :cond_1

    const v0, 0x7f0500a3

    .line 480
    .local v0, "tintColor":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteGpsStatusImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRemoteGpsStatusImageView:Landroid/widget/ImageView;

    .line 481
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 480
    invoke-static {v2, v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    .end local v0    # "tintColor":I
    :cond_0
    return-void

    .line 479
    :cond_1
    const v0, 0x7f050103

    goto :goto_0
.end method

.method private updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    return-void
.end method


# virtual methods
.method public attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V
    .locals 1
    .param p1, "action"    # I
        .annotation build Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
        .end annotation
    .end param
    .param p2, "command"    # Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->setCommand(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 270
    return-void
.end method

.method public getTelemetryLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryLayout:Landroid/view/View;

    return-object v0
.end method

.method public hideLayout()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void
.end method

.method public onDroneDisconnected()V
    .locals 4

    .prologue
    .line 457
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0500a8

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->switchToDisconnectedMode()V

    .line 459
    return-void
.end method

.method public onLockedModeEntered()V
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mLocked:Z

    .line 521
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->setEnabled(Z)V

    .line 522
    return-void
.end method

.method public onLockedModeExited()V
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mLocked:Z

    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->setEnabled(Z)V

    .line 527
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mBatteryPhoneBroadcastReceiver:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removePhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-nez v1, :cond_0

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "batteryIntentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mBatteryPhoneBroadcastReceiver:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->addPhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V

    .line 237
    .end local v0    # "batteryIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected setBackgroundColor(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 298
    .local v0, "background":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 302
    .end local v0    # "background":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setDisconnectedValues()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    .line 408
    invoke-virtual {p0, v4, v5, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZ)V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateDistance(ZF)V

    .line 410
    invoke-virtual {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateSpeed(D)V

    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryTextView:Landroid/widget/TextView;

    const-string v1, "- %"

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 412
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLevel:I

    .line 413
    iput-short v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRssiLevel:S

    .line 414
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsFixStatus:I

    .line 415
    return-void
.end method

.method public setFlyingButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public setFlyingState(I)V
    .locals 1
    .param p1, "action"    # I
        .annotation build Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
        .end annotation
    .end param

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneFlyingButtonView:Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->setToFlyingAction(I)V

    .line 266
    return-void
.end method

.method public setTelemetryListener(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    .line 258
    return-void
.end method

.method public setToFollowMeMode(Z)V
    .locals 3
    .param p1, "followMode"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f070392

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0703ba

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f070216

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f07021b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showLayout()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mTelemetryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    return-void
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 3
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZ)V

    .line 325
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeed()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateSpeed(D)V

    .line 326
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRssi()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRssiLevel(S)V

    .line 327
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasOneAlert([I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateBatteryLevel(IZ)V

    .line 328
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsFixStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateGpsFixedStatus(I)V

    .line 329
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onDroneDisconnected()V

    .line 332
    :cond_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteCtrl(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 333
    return-void

    .line 327
    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method public updateAltitude(DZ)V
    .locals 7
    .param p1, "relativeAltitude"    # D
    .param p3, "gpsFixed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 360
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZZZ)V

    .line 361
    return-void
.end method

.method public updateAltitude(DZZZ)V
    .locals 5
    .param p1, "relativeAltitude"    # D
    .param p3, "gpsFixed"    # Z
    .param p4, "altitudeAlert"    # Z
    .param p5, "altitudeImprovement"    # Z

    .prologue
    .line 364
    double-to-int v0, p1

    .line 365
    .local v0, "newRelativeAltitude":I
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mShowAltitude:Z

    if-eq p3, v1, :cond_4

    .line 366
    iput-boolean p3, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mShowAltitude:Z

    .line 367
    int-to-double v2, v0

    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitude:D

    .line 368
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    if-eqz p3, :cond_3

    int-to-float v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDecimal(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasAltitudeAlert:Z

    if-ne v1, p4, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasAltitudeImprovement:Z

    if-eq v1, p5, :cond_2

    .line 374
    :cond_1
    iput-boolean p4, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasAltitudeAlert:Z

    .line 375
    iput-boolean p5, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasAltitudeImprovement:Z

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeLayout:Landroid/view/View;

    invoke-direct {p0, v1, p4, p5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setAlertBackgroundColor(Landroid/view/View;ZZ)V

    .line 378
    :cond_2
    return-void

    .line 368
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 369
    :cond_4
    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitude:D

    cmpl-double v1, v2, p1

    if-eqz v1, :cond_0

    .line 370
    int-to-double v2, v0

    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitude:D

    .line 371
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mAltitudeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDecimal(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateBatteryLevel(IZ)V
    .locals 6
    .param p1, "batteryLevel"    # I
    .param p2, "lowBattery"    # Z

    .prologue
    const/4 v5, 0x0

    .line 423
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 424
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLevel:I

    .line 425
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d %%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasBatteryAlert:Z

    if-eq v0, p2, :cond_1

    .line 428
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasBatteryAlert:Z

    .line 429
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneBatteryLayout:Landroid/view/View;

    invoke-direct {p0, v0, p2, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setAlertBackgroundColor(Landroid/view/View;ZZ)V

    .line 431
    :cond_1
    return-void
.end method

.method public updateDistance(ZF)V
    .locals 4
    .param p1, "distanceAvailable"    # Z
    .param p2, "distance"    # F

    .prologue
    .line 388
    if-eqz p1, :cond_1

    .line 389
    float-to-int v0, p2

    .line 390
    .local v0, "newDistance":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistance:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 391
    int-to-float v1, v0

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistance:F

    .line 392
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDecimal(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 397
    .end local v0    # "newDistance":I
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDecimal(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDistanceBackground(ZZ)V
    .locals 1
    .param p1, "distanceAlert"    # Z
    .param p2, "distanceImprovement"    # Z

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasDistanceAlert:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasDistanceImprovement:Z

    if-eq v0, p2, :cond_1

    .line 401
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasDistanceAlert:Z

    .line 402
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasDistanceImprovement:Z

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDistanceLayout:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setAlertBackgroundColor(Landroid/view/View;ZZ)V

    .line 405
    :cond_1
    return-void
.end method

.method public updateGpsFixedStatus(I)V
    .locals 1
    .param p1, "gpsFixStatus"    # I

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateGpsFixedStatus(IZ)V

    .line 435
    return-void
.end method

.method public updateGpsFixedStatus(IZ)V
    .locals 4
    .param p1, "gpsFixStatus"    # I
    .param p2, "gpsAlert"    # Z

    .prologue
    .line 438
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsFixStatus:I

    if-eq v1, p1, :cond_0

    .line 439
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsFixStatus:I

    .line 440
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsFixStatus:I

    if-nez v1, :cond_2

    const v0, 0x7f0500a3

    .line 441
    .local v0, "tintColor":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    .end local v0    # "tintColor":I
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasGpsAlert:Z

    if-eq v1, p2, :cond_1

    .line 444
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mHasGpsAlert:Z

    .line 445
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mDroneGpsStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setAlertBackgroundColor(Landroid/view/View;ZZ)V

    .line 447
    :cond_1
    return-void

    .line 440
    :cond_2
    const v0, 0x7f050103

    goto :goto_0
.end method

.method public updatePresetMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 342
    packed-switch p1, :pswitch_data_0

    .line 345
    const v0, 0x7f1105c8

    .line 351
    .local v0, "titleRes":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mPresetModeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void

    .line 348
    .end local v0    # "titleRes":I
    :pswitch_0
    const v0, 0x7f1105c9

    .restart local v0    # "titleRes":I
    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateRemoteCtrl(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 2
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 467
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getBatteryLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteControlBatteryLevel(I)V

    .line 469
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 470
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getGpsFixStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteGpsStatus(I)V

    .line 473
    :cond_1
    return-void
.end method

.method public updateRssiLevel(S)V
    .locals 2
    .param p1, "rssiLevel"    # S

    .prologue
    .line 450
    iget-short v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRssiLevel:S

    if-eq p1, v0, :cond_0

    .line 451
    iput-short p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRssiLevel:S

    .line 452
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    iget-short v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mRssiLevel:S

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->updateRssiLevel(S)V

    .line 454
    :cond_0
    return-void
.end method

.method public updateSpeed(D)V
    .locals 3
    .param p1, "speed"    # D

    .prologue
    .line 381
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeed:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 382
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeed:D

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mSpeedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    double-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDecimal(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateTextViewContentIfDifferent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method
