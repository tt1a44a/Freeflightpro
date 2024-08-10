.class public Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;
.super Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
.source "VideoSettingsHudView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;
    }
.end annotation


# static fields
.field private static final TIMER_REFRESH_MS:I = 0x3e8


# instance fields
.field private mDroneConnected:Z

.field private mFrameRate:I

.field private final mFrameRateView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastRecordingDuration:J

.field private mMediaRecordingState:I

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecordStartTime:J

.field private mRecordingDurationTimer:Ljava/util/Timer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRecordingDurationTimerTask:Ljava/util/TimerTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRecordingTimeView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoResolutions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cameraSettingsModeListener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    .line 56
    const v2, 0x7f0c0042

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    .line 44
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRate:I

    .line 46
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mVideoResolutions:I

    .line 48
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mMediaRecordingState:I

    .line 58
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    .line 59
    const v0, 0x7f0a0470

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a04ab

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingTimeView:Landroid/widget/TextView;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->initButtonsAndMenus()V

    .line 69
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateView()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateDurationText()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mLastRecordingDuration:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)Lcom/parrot/freeflight/util/ui/MetricsServant;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method private cancelRecordTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 181
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimer:Ljava/util/Timer;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 185
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    .line 187
    :cond_1
    return-void
.end method

.method private initButtonsAndMenus()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    return-void
.end method

.method private scheduleRecordingTimerTask()V
    .locals 6

    .prologue
    .line 190
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimer:Ljava/util/Timer;

    .line 191
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 193
    return-void
.end method

.method private updateDurationText()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method private updateFrameRate(I)V
    .locals 2
    .param p1, "frameRate"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRate:I

    if-eq v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRate:I

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    const v1, 0x7f110109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    const v1, 0x7f11010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mFrameRateView:Landroid/widget/TextView;

    const v1, 0x7f11010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMediaRecordState(I)V
    .locals 3
    .param p1, "mediaRecordingState"    # I

    .prologue
    const v1, 0x7f070096

    const/4 v2, 0x1

    .line 138
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mMediaRecordingState:I

    if-eq v0, p1, :cond_0

    .line 139
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mMediaRecordingState:I

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->cancelRecordTimer()V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->cancelRecordTimer()V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 144
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->scheduleRecordingTimerTask()V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->cancelRecordTimer()V

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVideoResolutions(I)V
    .locals 2
    .param p1, "videoResolutions"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mVideoResolutions:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mVideoResolutions:I

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const v0, 0x7f110119

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_0
    return-void

    .line 132
    :cond_1
    const v0, 0x7f11011d

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->cancelRecordTimer()V

    .line 95
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->destroy()V

    .line 96
    return-void
.end method

.method public startEnterTransition()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 224
    :cond_1
    return-void
.end method

.method public startExitTransition()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 245
    :cond_1
    return-void
.end method

.method public updateDroneConnected(Z)V
    .locals 1
    .param p1, "droneConnected"    # Z

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneConnected:Z

    if-eq v0, p1, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneConnected:Z

    .line 174
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateDurationText()V

    .line 176
    :cond_0
    return-void
.end method

.method public updateRecordStartTime(JJ)V
    .locals 3
    .param p1, "recordStartTime"    # J
    .param p3, "lastRecordingDuration"    # J

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordStartTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mLastRecordingDuration:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mRecordStartTime:J

    .line 166
    iput-wide p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mLastRecordingDuration:J

    .line 167
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateDurationText()V

    .line 169
    :cond_1
    return-void
.end method

.method public updateView()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateView()V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFrameRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateFrameRate(I)V

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoResolutionsWithDefault()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateVideoResolutions(I)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateMediaRecordState(I)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getRecordingStartTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastRecordingDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateRecordStartTime(JJ)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->updateDroneConnected(Z)V

    .line 106
    return-void
.end method
