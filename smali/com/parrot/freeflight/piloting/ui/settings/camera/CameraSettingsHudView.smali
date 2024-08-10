.class public abstract Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
.super Landroid/widget/RelativeLayout;
.source "CameraSettingsHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/HudView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;,
        Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;,
        Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION_MS:J = 0xc8L

.field private static final ANTI_FLICKERING_50_HZ:Ljava/lang/String; = "50"

.field private static final ANTI_FLICKERING_60_HZ:Ljava/lang/String; = "60"

.field private static final ANTI_FLICKERING_AUTO:Ljava/lang/String; = "Auto"

.field private static final EXPOSITION_VALUES_COUNT:I = 0x18

.field private static final MEGABYTE_LIMIT_DISPLAY:I = 0x64

.field private static final MEGABYTE_TO_GIGABYTE_DIVIDER:I = 0x400


# instance fields
.field protected final mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mBottomBar:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentExposition:F

.field protected final mDefinitionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mExpositionSlider:Landroid/widget/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mLastMenuOpen:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMaxExposition:F

.field protected final mMemorySpaceView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinExposition:F

.field protected final mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordButtonTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSettingsButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSliderStep:F

.field private mTotalSizeInMByte:I

.field protected mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUsedSizeInMByte:I

.field protected final mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "cameraSettingsModeListener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mTotalSizeInMByte:I

    .line 84
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mUsedSizeInMByte:I

    .line 86
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    .line 101
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mRecordButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 134
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-static {p1, p2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 137
    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBackButton:Landroid/widget/ImageButton;

    .line 138
    const v1, 0x7f0a0300

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    .line 139
    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    .line 140
    const v1, 0x7f0a02ff

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    .line 141
    const v1, 0x7f0a0302

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    .line 142
    const v1, 0x7f0a0265

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBottomBar:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBottomBar:Landroid/view/View;

    const v2, 0x7f0a0433

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, "apertureView":Landroid/widget/TextView;
    const v1, 0x7f0a044e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBottomBar:Landroid/view/View;

    const v2, 0x7f0a03f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mExpositionSlider:Landroid/widget/SeekBar;

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBottomBar:Landroid/view/View;

    const v2, 0x7f0a048e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMemorySpaceView:Landroid/widget/TextView;

    .line 148
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 150
    invoke-direct {p0, p4, p5, p6}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->initButtonsAndMenus(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11010d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getAperture()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 155
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDefinitionView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMemorySpaceView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mExpositionSlider:Landroid/widget/SeekBar;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mExpositionSlider:Landroid/widget/SeekBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mExpositionSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSliderStep:F

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMinExposition:F

    return v0
.end method

.method public static fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visibleOnStart"    # Z

    .prologue
    .line 306
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 307
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 308
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;

    invoke-direct {v2, p1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 318
    return-object v1

    .line 306
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "goneOnEnd"    # Z

    .prologue
    .line 326
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 327
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 328
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$10;

    invoke-direct {v2, p1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$10;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    return-object v1

    .line 326
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    return-void
.end method

.method private initButtonsAndMenus(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 6
    .param p1, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraSettingsModeListener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isRollStabilizationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 191
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoResolutions()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 192
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getRecordingMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 193
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFrameRate()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f070273

    invoke-virtual {v0, v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f070272

    invoke-virtual {v0, v4, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$7;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    const-string v1, "Auto"

    invoke-virtual {v0, v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->addItem(ILjava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    const-string v1, "50"

    invoke-virtual {v0, v4, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->addItem(ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    const-string v1, "60"

    invoke-virtual {v0, v5, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->addItem(ILjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$8;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$8;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f07027e

    invoke-virtual {v0, v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f070282

    invoke-virtual {v0, v4, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const v1, 0x7f070281

    invoke-virtual {v0, v5, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x3

    const v2, 0x7f07027f

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    const/4 v1, 0x4

    const v2, 0x7f070280

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->addItem(II)V

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mModeMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V

    .line 239
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateAntiFlickering(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 258
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isAntiflickeringCmdSupported()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 259
    .local v0, "hideAntiflickeringMenu":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mAntiFlickeringMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    if-eqz v0, :cond_1

    move p1, v1

    .end local p1    # "mode":I
    :cond_1
    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->updateMenuButton(I)V

    .line 260
    return-void

    .line 258
    .end local v0    # "hideAntiflickeringMenu":Z
    .restart local p1    # "mode":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateExposition(Lcom/parrot/freeflight/util/DoubleBoundedState;)V
    .locals 4
    .param p1, "state"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMinExposition:F

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMaxExposition:F

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMinExposition:F

    .line 269
    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMaxExposition:F

    .line 270
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMaxExposition:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMinExposition:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSliderStep:F

    .line 272
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mCurrentExposition:F

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mCurrentExposition:F

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mExpositionSlider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mCurrentExposition:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMinExposition:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSliderStep:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 276
    :cond_2
    return-void
.end method

.method private updateStorageSizeInfo(II)V
    .locals 11
    .param p1, "totalSizeInMByte"    # I
    .param p2, "usedSizeInMByte"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mTotalSizeInMByte:I

    if-ne p1, v8, :cond_0

    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mUsedSizeInMByte:I

    if-eq p2, v8, :cond_2

    :cond_0
    if-lez p1, :cond_2

    .line 280
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mTotalSizeInMByte:I

    .line 281
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mUsedSizeInMByte:I

    .line 283
    sub-int v8, p1, p2

    if-gez v8, :cond_3

    const/4 v3, 0x0

    .line 284
    .local v3, "remainingSizeInMb":F
    :goto_0
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    move v4, v6

    .line 286
    .local v4, "shouldBeMegaByteDisplay":Z
    :goto_1
    if-eqz v4, :cond_5

    const v5, 0x7f1103f2

    .line 287
    .local v5, "sizeUnit":I
    :goto_2
    if-eqz v4, :cond_6

    move v1, v3

    .line 288
    .local v1, "remainingSize":F
    :goto_3
    if-nez v4, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v1, v8

    if-nez v8, :cond_7

    :cond_1
    const v2, 0x7f110121

    .line 290
    .local v2, "remainingSizeFormatString":I
    :goto_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mMemorySpaceView:Landroid/widget/TextView;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-virtual {v0, v2, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "remainingSize":F
    .end local v2    # "remainingSizeFormatString":I
    .end local v3    # "remainingSizeInMb":F
    .end local v4    # "shouldBeMegaByteDisplay":Z
    .end local v5    # "sizeUnit":I
    :cond_2
    return-void

    .line 283
    :cond_3
    sub-int v8, p1, p2

    int-to-float v3, v8

    goto :goto_0

    .restart local v3    # "remainingSizeInMb":F
    :cond_4
    move v4, v7

    .line 284
    goto :goto_1

    .line 286
    .restart local v4    # "shouldBeMegaByteDisplay":Z
    :cond_5
    const v5, 0x7f1103ef

    goto :goto_2

    .line 287
    .restart local v5    # "sizeUnit":I
    :cond_6
    const/high16 v8, 0x44800000    # 1024.0f

    div-float v1, v3, v8

    goto :goto_3

    .line 288
    .restart local v1    # "remainingSize":F
    :cond_7
    const v2, 0x7f110120

    goto :goto_4
.end method

.method private updateWhiteBalance(I)V
    .locals 2
    .param p1, "whiteBalance"    # I

    .prologue
    const/4 v0, -0x1

    .line 263
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mWhiteBalanceMenu:Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    if-ne p1, v0, :cond_0

    move p1, v0

    .end local p1    # "whiteBalance":I
    :cond_0
    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->updateMenuButton(I)V

    .line 264
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public setEnabledBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 343
    return-void
.end method

.method public setTransitionListener(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    .line 178
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public startEnterTransition()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public startExitTransition()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 0
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    return-void
.end method

.method public updatePosition(FF)V
    .locals 0
    .param p1, "distance"    # F
    .param p2, "bearing"    # F

    .prologue
    .line 384
    return-void
.end method

.method public updateView()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getAntiFlickeringMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateAntiFlickering(I)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getWhiteBalanceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateWhiteBalance(I)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getExpositionState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateExposition(Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMemorySizeInMByte()I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getUsedMemorySizeInMByte()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateStorageSizeInfo(II)V

    .line 255
    return-void
.end method
