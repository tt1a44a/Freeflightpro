.class Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;
.super Ljava/lang/Object;
.source "SkyController2PCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# static fields
.field private static final CALIBRATION_STATE_KEY:Ljava/lang/String; = "calibration_state_key"

.field private static final NO_ANIMATION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Sky2PCalibrationUiCtl"


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mBackButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCalibrationImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentAnimationId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mCurrentCalibrationState:I

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResumed:Z

.field private final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mXCheckbox:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mYCheckbox:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mZCheckbox:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentAnimationId:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mResumed:Z

    .line 118
    new-instance v0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$2;-><init>(Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    .line 84
    const v0, 0x7f0a02c0

    invoke-virtual {p3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$1;

    invoke-direct {v1, p0, p5}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$1;-><init>(Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0429

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    .line 102
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 104
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->applyTheme()V

    .line 105
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->fixPreLollipopTheme()V

    .line 107
    if-eqz p4, :cond_1

    .line 109
    const-string v0, "calibration_state_key"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 116
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->startCalibrationV2()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->update()V

    return-void
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04b9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04ba

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04bb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0489

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 386
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_0
    return-void
.end method

.method private releaseAnimationDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 371
    .local v0, "frame":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 372
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 378
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setCheckboxCurrent(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-void
.end method

.method private setCheckboxDone(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method private setCheckboxError(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f05001d

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void
.end method

.method private setCheckboxIdle(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050146

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void
.end method

.method private startAnimation(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 340
    iget v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentAnimationId:I

    if-eq p1, v1, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->releaseAnimationDrawable()V

    .line 342
    iput p1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentAnimationId:I

    .line 343
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 348
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 349
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 352
    :cond_0
    return-void

    .line 345
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCalibrationStateV2()I

    move-result v0

    .line 132
    .local v0, "calibrationState":I
    iget v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    if-eq v0, v1, :cond_2

    .line 133
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateCalibrationState(I)V

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateCalibrationAnimation()V
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->stopAnimation()V

    .line 319
    :goto_0
    return-void

    .line 305
    :pswitch_0
    const v0, 0x7f070503

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->startAnimation(I)V

    goto :goto_0

    .line 308
    :pswitch_1
    const v0, 0x7f070504

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->startAnimation(I)V

    goto :goto_0

    .line 311
    :pswitch_2
    const v0, 0x7f070505

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->startAnimation(I)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCalibrationState(I)V
    .locals 3
    .param p1, "calibrationState"    # I

    .prologue
    .line 142
    const-string v0, "Sky2PCalibrationUiCtl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCalibrationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput p1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    .line 144
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateCalibrationAnimation()V

    .line 145
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateCheckboxAndText()V

    .line 146
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateGamePadLock()V

    .line 147
    return-void
.end method

.method private updateCheckboxAndText()V
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    packed-switch v0, :pswitch_data_0

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxCurrent(Landroid/widget/ImageView;)V

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxCurrent(Landroid/widget/ImageView;)V

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxCurrent(Landroid/widget/ImageView;)V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 285
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private updateGamePadLock()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 326
    iget v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mResumed:Z

    if-nez v0, :cond_1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unlockGamePadMode(I)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->lockGamePadMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->abortCalibrationV2()V

    .line 184
    :cond_0
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    const/4 v0, 0x0

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
    .line 197
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    const-string v0, "calibration_state_key"

    iget v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public onSettingsPressed()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mResumed:Z

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->stopAnimation()V

    .line 169
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateGamePadLock()V

    .line 170
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mResumed:Z

    .line 156
    iget v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mCurrentCalibrationState:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->updateCalibrationState(I)V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 160
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
