.class public Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;
.super Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
.source "TimeLapseSettingsHudView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final SLIDER_RATIO:F = 10.0f


# instance fields
.field private final mIntervalButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIntervalState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIntervalText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaRecordingState:I

.field private mPhotoCount:I

.field private final mPhotoCountIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhotoCountText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPictureFormat:I

.field private final mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSliderShown:Z

.field private mSliderTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 9
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
    const/4 v8, -0x1

    .line 58
    const v2, 0x7f0c0041

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    .line 46
    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormat:I

    .line 48
    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mMediaRecordingState:I

    .line 54
    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCount:I

    .line 60
    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    .line 61
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    .line 62
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    const v1, 0x7f0a04d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    const v1, 0x7f0a04d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 65
    .local v7, "intervalUnit":Landroid/widget/TextView;
    const v0, 0x7f0a03f6

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/VerticalSlider;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;

    .line 66
    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0a04a1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalText:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 71
    invoke-static {p1, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->initButtonsAndMenus()V

    .line 76
    const v0, 0x7f110127

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    new-instance v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->updateView()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSliderShown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSliderShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/view/VerticalSlider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSliderTouched:Z

    return p1
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    return-void
.end method

.method private initButtonsAndMenus()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x0

    const v2, 0x7f070275

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x1

    const v2, 0x7f070277

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x3

    const v2, 0x7f070276

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    return-void
.end method

.method private updateInterval(Lcom/parrot/freeflight/util/DoubleBoundedState;)V
    .locals 10
    .param p1, "intervalState"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 203
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSliderTouched:Z

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    move-result v0

    .line 205
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110125

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/VerticalSlider;->setMax(I)V

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalSlider:Lcom/parrot/freeflight/view/VerticalSlider;

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/VerticalSlider;->setProgress(I)V

    .line 211
    .end local v0    # "updated":Z
    :cond_0
    return-void
.end method

.method private updateMediaRecordState(I)V
    .locals 3
    .param p1, "mediaRecordingState"    # I

    .prologue
    const v1, 0x7f070096

    const/4 v2, 0x1

    .line 181
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mMediaRecordingState:I

    if-eq v0, p1, :cond_0

    .line 182
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mMediaRecordingState:I

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePhotoCount(I)V
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCount:I

    if-eq p1, v0, :cond_0

    .line 215
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCount:I

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPhotoCountText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    return-void
.end method

.method private updatePictureFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v0, -0x1

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 161
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 162
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormat:I

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, p1

    .line 160
    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const v1, 0x7f11011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public startEnterTransition()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 230
    return-void
.end method

.method public startExitTransition()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mRecordButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mPictureFormatMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getMenuButtonVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mIntervalButton:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mBottomBar:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$5;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateView()V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPictureFormat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->updatePictureFormat(I)V

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->updateMediaRecordState(I)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getTimeLapseInterval()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->updateInterval(Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->updatePhotoCount(I)V

    .line 157
    return-void
.end method
