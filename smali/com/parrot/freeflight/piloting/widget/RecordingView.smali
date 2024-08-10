.class public Lcom/parrot/freeflight/piloting/widget/RecordingView;
.super Landroid/widget/RelativeLayout;
.source "RecordingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;,
        Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
    }
.end annotation


# static fields
.field private static final LINE_SPACING_MULTIPLIER:F = 0.7f

.field public static final MODE_SELECTED_LEVEL:I = 0x1

.field public static final MODE_UNSELECTED_LEVEL:I = 0x0

.field private static final PHOTO_COUNT_FORMAT:Ljava/lang/String; = "%03d"

.field public static final PRESS_ANIM_DURATION_MS:I = 0x32

.field public static final PRESS_ANIM_SCALE:F = 1.1f

.field private static final TIMER_REFRESH_MS:I = 0x3e8


# instance fields
.field private mCameraMode:I

.field private final mCounterTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnected:Z

.field private final mFormatTextSizeNormal:F

.field private final mFormatTextSizeSmall:F

.field private final mFormatTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastRecordingDuration:J

.field private mMediaRecordingState:I

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mModeSwitchView:Landroid/widget/Switch;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModeView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOptionsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotoCount:I

.field mPhotoView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPictureFormat:I

.field private mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

.field private mRecordStartTime:J

.field private final mRecordingButtonsClickListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingDurationTimer:Ljava/util/Timer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRecordingDurationTimerTask:Ljava/util/TimerTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

.field mSwitchModeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mVideoResolutions:I

.field private final mVideoSettingsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mVideoView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, 0x7f0a03b5

    const/4 v3, -0x1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingButtonsClickListeners:Ljava/util/List;

    .line 77
    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    .line 79
    const/4 v2, -0x2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoResolutions:I

    .line 81
    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPictureFormat:I

    .line 83
    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mMediaRecordingState:I

    .line 87
    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoCount:I

    .line 139
    new-instance v2, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mSwitchModeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 101
    const v2, 0x7f0c004d

    invoke-static {p1, v2, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0a046f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0a0448

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCounterTextView:Landroid/widget/TextView;

    .line 105
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoSettingsView:Landroid/view/View;

    .line 106
    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mOptionsView:Landroid/view/View;

    .line 107
    const v2, 0x7f0a0363

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoView:Landroid/widget/ImageView;

    .line 108
    const v2, 0x7f0a0364

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoView:Landroid/widget/ImageView;

    .line 109
    const v2, 0x7f0a0362

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mSwitchModeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeView:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/piloting/widget/RecordingView$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$1;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-direct {v2, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 121
    const v2, 0x7f0602c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextSizeNormal:F

    .line 122
    const v2, 0x7f0602c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextSizeSmall:F

    .line 125
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mOptionsView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/piloting/widget/RecordingView$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$2;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingButtonsClickListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mDroneConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/widget/RecordingView;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/widget/RecordingView;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mLastRecordingDuration:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/util/ui/MetricsServant;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCounterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDurationText()V

    return-void
.end method

.method private changeSwitchPosition(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mSwitchModeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void
.end method

.method private resetFormatTextSize()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 249
    return-void
.end method

.method private scheduleRecordingTimerTask()V
    .locals 6

    .prologue
    .line 196
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimer:Ljava/util/Timer;

    .line 197
    new-instance v0, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;Lcom/parrot/freeflight/piloting/widget/RecordingView$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 199
    return-void
.end method

.method private setModePhoto()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 163
    return-void
.end method

.method private setModeVideo()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 168
    return-void
.end method

.method private updateDurationText()V
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCounterTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_0
    return-void
.end method

.method private updatePhotoCount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCounterTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%03d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoCount:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method private updatePictureFormat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    .line 261
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPictureFormat:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    const v1, 0x7f110523

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->resetFormatTextSize()V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    const v1, 0x7f110525

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->resetFormatTextSize()V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    const v1, 0x7f110524

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextSizeSmall:F

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    const v1, 0x7f110526

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextSizeSmall:F

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateVideoResolutions()V
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mFormatTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoResolutions:I

    if-nez v0, :cond_0

    const v0, 0x7f11051e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 243
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->resetFormatTextSize()V

    .line 244
    return-void

    .line 242
    :cond_0
    const v0, 0x7f11051f

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingButtonsClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingButtonsClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    return-void
.end method

.method public cancelRecordTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 187
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimer:Ljava/util/Timer;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 191
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingDurationTimerTask:Ljava/util/TimerTask;

    .line 193
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingButtonsClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mModeSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    return-void
.end method

.method public setEnabledVideoSettingsView(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoSettingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    return-void
.end method

.method public setRecordingModeListener(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;)V
    .locals 0
    .param p1, "recordingModeListener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    .line 172
    return-void
.end method

.method public setRecordingVideoButtonView(Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;)V
    .locals 2
    .param p1, "recordingVideoButtonView"    # Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/RecordingView$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$5;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/RecordingView$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$6;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    return-void
.end method

.method public updateCameraMode(I)V
    .locals 2
    .param p1, "cameraMode"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 230
    :cond_0
    return-void

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->changeSwitchPosition(Z)V

    .line 206
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setModeVideo()V

    .line 208
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateVideoResolutions()V

    .line 209
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDurationText()V

    goto :goto_0

    .line 212
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->changeSwitchPosition(Z)V

    .line 213
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setModePhoto()V

    .line 215
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePictureFormat()V

    .line 216
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePhotoCount()V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePictureFormat()V

    .line 221
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePhotoCount()V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateDroneConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mDroneConnected:Z

    .line 321
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDurationText()V

    .line 322
    return-void
.end method

.method public updatePhotoCount(I)V
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 337
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoCount:I

    if-eq v0, p1, :cond_1

    .line 338
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPhotoCount:I

    .line 339
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePhotoCount()V

    .line 343
    :cond_1
    return-void
.end method

.method public updatePictureFormat(I)V
    .locals 2
    .param p1, "pictureFormat"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPictureFormat:I

    if-eq v0, p1, :cond_1

    .line 253
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mPictureFormat:I

    .line 254
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePictureFormat()V

    .line 258
    :cond_1
    return-void
.end method

.method public updateRecordStartTime(JJ)V
    .locals 3
    .param p1, "recordStartTime"    # J
    .param p3, "lastRecordingDuration"    # J

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordStartTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mLastRecordingDuration:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordStartTime:J

    .line 314
    iput-wide p3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mLastRecordingDuration:J

    .line 315
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDurationText()V

    .line 317
    :cond_1
    return-void
.end method

.method public updateRecordingState(I)V
    .locals 3
    .param p1, "mediaRecordingState"    # I

    .prologue
    const v1, 0x7f070096

    const/4 v2, 0x1

    .line 286
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mMediaRecordingState:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mMediaRecordingState:I

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 303
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->cancelRecordTimer()V

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setEnabled(Z)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->cancelRecordTimer()V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setImageResource(I)V

    .line 292
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->scheduleRecordingTimerTask()V

    .line 293
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setEnabled(Z)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->cancelRecordTimer()V

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setImageResource(I)V

    .line 298
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mRecordImageView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->setEnabled(Z)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateVideoResolutions(I)V
    .locals 1
    .param p1, "videoResolutions"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoResolutions:I

    if-eq v0, p1, :cond_0

    .line 234
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mVideoResolutions:I

    .line 235
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView;->mCameraMode:I

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateVideoResolutions()V

    .line 239
    :cond_0
    return-void
.end method
