.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;
.super Ljava/lang/Object;
.source "FpvTelemetry.java"


# instance fields
.field private mAltitudeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAltitudeValue:F

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDisplayDistance:Z

.field private mDistanceText:Ljava/lang/String;

.field private mDistanceTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDistanceValue:F

.field private mDroneGpsFixed:Z

.field private mDroneType:I

.field private mFlyingState:I

.field private mFlyingStateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductBatteryImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductBatteryValue:I

.field private mProductGpsImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteBatteryImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteBatteryValue:I

.field private mRemoteConnected:Z

.field private mRemoteCtrlGpsFixed:Z

.field private mRemoteGpsImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReturnHomeStatus:I

.field private mSidePadding:I

.field private mSignalImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSignalTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSignalValue:I

.field private mSpeedTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSpeedValue:F

.field private mTelemetryLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneType:I

    .line 85
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneGpsFixed:Z

    .line 87
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteCtrlGpsFixed:Z

    .line 89
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteConnected:Z

    .line 91
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDisplayDistance:Z

    .line 93
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceValue:F

    .line 95
    const-string v0, "-"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    .line 97
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeValue:F

    .line 99
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedValue:F

    .line 101
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryValue:I

    .line 103
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryValue:I

    .line 105
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalValue:I

    .line 107
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    .line 109
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingState:I

    .line 112
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mReturnHomeStatus:I

    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    .line 118
    new-instance v0, Lcom/parrot/freeflight/util/ui/MetricsServant;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 120
    const v0, 0x7f0a01b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    .line 123
    const v0, 0x7f0a0234

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0a0235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0a04ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedTextView:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a04ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeTextView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a04f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceTextView:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0a04fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalTextView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0a023f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalImageView:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f0a022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryImage:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0a04ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryTextView:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0a023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryImage:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0a04fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryTextView:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0a0469

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    const v1, 0x7f0a04f7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 150
    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->update(Lcom/parrot/freeflight/core/model/DroneModel;)Z

    .line 153
    :cond_0
    if-eqz p4, :cond_1

    .line 154
    invoke-virtual {p0, p4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->update(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z

    .line 156
    :cond_1
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f05014b

    const v2, 0x7f050146

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    return-void
.end method

.method private updateAltitude(F)Z
    .locals 2
    .param p1, "altitude"    # F

    .prologue
    .line 270
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 271
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeValue:F

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mAltitudeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDroneGpsState(Z)Z
    .locals 4
    .param p1, "isFixed"    # Z

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneGpsFixed:Z

    if-eq p1, v0, :cond_1

    .line 240
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneGpsFixed:Z

    .line 241
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p1, :cond_0

    const v0, 0x7f0500e3

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_1
    return v0

    .line 241
    :cond_0
    const v0, 0x7f05014b

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDroneType(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 186
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneType:I

    if-eq p1, v2, :cond_0

    .line 187
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneType:I

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 207
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0704fa

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "productDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070079

    invoke-static {v2, v3, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    .local v0, "batteryDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const/4 v2, 0x1

    .line 215
    .end local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return v2

    .line 192
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0704fe

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    .restart local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07007c

    invoke-static {v2, v3, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .restart local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 197
    .end local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0704fd

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .restart local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07007a

    invoke-static {v2, v3, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .restart local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 201
    .end local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0704ff

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .restart local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07007b

    invoke-static {v2, v3, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .restart local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 215
    .end local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "productDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateFlyingState(II)Z
    .locals 5
    .param p1, "flyingState"    # I
    .param p2, "returnHomeStatus"    # I

    .prologue
    const/4 v2, 0x1

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "updated":Z
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingState:I

    if-eq p1, v3, :cond_2

    move v0, v2

    .line 333
    .local v0, "flyingStateChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 334
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingState:I

    .line 335
    const/4 v1, 0x1

    .line 336
    if-eq p2, v2, :cond_0

    .line 337
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingState:I

    packed-switch v3, :pswitch_data_0

    .line 362
    :pswitch_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_0
    :goto_1
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mReturnHomeStatus:I

    if-eq p2, v3, :cond_1

    .line 368
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mReturnHomeStatus:I

    .line 369
    const/4 v1, 0x1

    .line 370
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mReturnHomeStatus:I

    if-ne v3, v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v3, 0x7f1102f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 376
    :cond_1
    :goto_2
    return v1

    .line 332
    .end local v0    # "flyingStateChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    .restart local v0    # "flyingStateChanged":Z
    :pswitch_1
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDroneType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 340
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v4, 0x7f110132

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 342
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 346
    :pswitch_2
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v4, 0x7f110130

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 349
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v4, 0x7f110134

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 352
    :pswitch_4
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v4, 0x7f110135

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 355
    :pswitch_5
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const v4, 0x7f110131

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 372
    :cond_4
    if-nez v0, :cond_1

    .line 373
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private updateProductBatteryLevel(I)Z
    .locals 7
    .param p1, "productBattery"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryValue:I

    if-eq p1, v2, :cond_0

    .line 314
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryValue:I

    .line 315
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mProductBatteryTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1104e5

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRemoteBattery(I)Z
    .locals 7
    .param p1, "remoteCtrlBattery"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryValue:I

    if-eq p1, v2, :cond_0

    .line 305
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryValue:I

    .line 306
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1104e5

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRemoteCtrlGpsState(ZI)Z
    .locals 5
    .param p1, "isFixed"    # Z
    .param p2, "skyControllerType"    # I

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteCtrlGpsFixed:Z

    if-eq p1, v0, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 252
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteCtrlGpsFixed:Z

    .line 253
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p1, :cond_0

    const v0, 0x7f0500e3

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    .line 257
    :goto_1
    return v0

    .line 253
    :cond_0
    const v0, 0x7f05014b

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSignal(I)Z
    .locals 7
    .param p1, "signalValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalValue:I

    if-eq p1, v2, :cond_0

    .line 323
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalValue:I

    .line 324
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1102a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateSpeed(F)Z
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 261
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 262
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedValue:F

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSpeedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatSpeedString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setSidePadding(I)V
    .locals 5
    .param p1, "sidePadding"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 385
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 387
    return-void
.end method

.method public setTopMargin(I)V
    .locals 6
    .param p1, "topMargin"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 391
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSidePadding:I

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 392
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mFlyingStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 394
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mTelemetryLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    return-void
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel;)Z
    .locals 4
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateDroneType(I)Z

    move-result v0

    .line 169
    .local v0, "valueUpdated":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsFixStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateDroneGpsState(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 170
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateAltitude(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 171
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeed()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateSpeed(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 172
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getBatteryLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateProductBatteryLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 173
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRssi()S

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/parrot/controller/utils/WifiUtils;->calculateSignalLevel(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateSignal(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 174
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeStatus()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateFlyingState(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 175
    return v0

    .line 169
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z
    .locals 3
    .param p1, "remoteModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateIsConnectedToRemote(ZI)Z

    move-result v0

    .line 180
    .local v0, "valueUpdated":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getGpsFixStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateRemoteCtrlGpsState(ZI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getBatteryLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateRemoteBattery(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 182
    return v0

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateDistance(ZF)Z
    .locals 6
    .param p1, "distanceAvailable"    # Z
    .param p2, "distance"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    if-eqz p1, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    move v0, v2

    .line 280
    .local v0, "displayDistance":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 281
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDisplayDistance:Z

    .line 282
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceValue:F

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_2

    .line 283
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceValue:F

    .line 284
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v4, p2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDistanceString(FZ)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    .line 287
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .end local v1    # "text":Ljava/lang/String;
    :goto_1
    return v2

    .end local v0    # "displayDistance":Z
    :cond_0
    move v0, v3

    .line 279
    goto :goto_0

    .line 291
    .restart local v0    # "displayDistance":Z
    :cond_1
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDisplayDistance:Z

    if-eq v0, v4, :cond_2

    .line 292
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDisplayDistance:Z

    .line 293
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f110606

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .restart local v1    # "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mDistanceText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 300
    goto :goto_1
.end method

.method public updateIsConnectedToRemote(ZI)Z
    .locals 7
    .param p1, "isConnected"    # Z
    .param p2, "skyControllerType"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 219
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteConnected:Z

    if-eq p1, v3, :cond_1

    .line 220
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteConnected:Z

    .line 221
    if-eqz p1, :cond_2

    move v1, v4

    .line 223
    .local v1, "visibility":I
    :goto_0
    if-eq p2, v5, :cond_0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    :cond_0
    move v0, v2

    .line 225
    .local v0, "remoteGPSVisibility":I
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteGpsImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mRemoteBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v3, v2

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->mSignalImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v4, v5

    .line 235
    .end local v0    # "remoteGPSVisibility":I
    .end local v1    # "visibility":I
    :cond_1
    return v4

    :cond_2
    move v1, v2

    .line 221
    goto :goto_0

    .restart local v1    # "visibility":I
    :cond_3
    move v0, v1

    .line 223
    goto :goto_1

    .restart local v0    # "remoteGPSVisibility":I
    :cond_4
    move v3, v4

    .line 231
    goto :goto_2

    :cond_5
    move v2, v4

    .line 232
    goto :goto_3
.end method
