.class public Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;
.super Ljava/lang/Object;
.source "SkyControllerCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$ProcedureState;
    }
.end annotation


# static fields
.field private static final ALREADY_DONE:I = 0x1

.field private static final BAD_QUALITY_RATIO:F = 0.5f

.field private static final CALIBRATION_STATE_KEY:Ljava/lang/String; = "calibration_state_key"

.field private static final ERROR:I = -0x1

.field private static final FINISHED:I = 0x2

.field private static final IN_PROGRESS:I = 0x0

.field private static final UNKNOWN:I = -0x2

.field private static final X_AXIS_MAX_QUALITY:I = 0xff

.field private static final Y_AXIS_MAX_QUALITY:I = 0xff

.field private static final Z_AXIS_MAX_QUALITY:I = 0xff


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

.field private mCurrentCalibrationState:I

.field private final mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mQualityX:I

.field private mQualityY:I

.field private mQualityZ:I

.field private final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mXProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mYProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mZProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 3
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
    const/16 v2, 0xff

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x32

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityX:I

    .line 70
    const/4 v0, -0x2

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    .line 127
    new-instance v0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$2;-><init>(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    .line 95
    const v0, 0x7f0a02c0

    invoke-virtual {p3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;

    invoke-direct {v1, p0, p5}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;-><init>(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a038b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mXProgressBar:Landroid/widget/ProgressBar;

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mXProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mYProgressBar:Landroid/widget/ProgressBar;

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mYProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a038d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mZProgressBar:Landroid/widget/ProgressBar;

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mZProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0429

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    .line 116
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 118
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->applyTheme()V

    .line 119
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->fixPreLollipopTheme()V

    .line 121
    if-eqz p4, :cond_0

    .line 123
    const-string v0, "calibration_state_key"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    .line 125
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->update()V

    return-void
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04b9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04ba

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a04bb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0489

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 364
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_0
    return-void
.end method

.method private getAnimDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 326
    const v0, 0x7f070433

    .line 327
    .local v0, "res":I
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_0

    .line 328
    sget-object v1, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$3;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 331
    :pswitch_0
    const v0, 0x7f070502

    .line 332
    goto :goto_0

    .line 334
    :pswitch_1
    const v0, 0x7f070433

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIdleDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 343
    const v0, 0x7f07016d

    .line 344
    .local v0, "res":I
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_0

    .line 345
    sget-object v1, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$3;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 348
    :pswitch_0
    const v0, 0x7f070108

    .line 349
    goto :goto_0

    .line 351
    :pswitch_1
    const v0, 0x7f07016d

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setProgressBarColor(Landroid/widget/ProgressBar;)V
    .locals 6
    .param p1, "bar"    # Landroid/widget/ProgressBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 286
    .local v2, "progress":I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 287
    .local v1, "maxProgress":I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, "context":Landroid/content/Context;
    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    int-to-float v5, v1

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f050103

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    if-ge v2, v1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f05014c

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0500a3

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private startAnimation(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 301
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 303
    .local v1, "frame":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 304
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_3

    .line 313
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 314
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 316
    :cond_3
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->getIdleDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    return-void
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 136
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCalibrationState()I

    move-result v0

    .line 137
    .local v0, "calibrationState":I
    packed-switch v0, :pswitch_data_0

    .line 152
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    if-eq v4, v5, :cond_0

    .line 153
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->updateState(I)V

    .line 157
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCalibrationQuality()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    move-result-object v4

    iget v1, v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityX:I

    .line 158
    .local v1, "qualityX":I
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityX:I

    if-eq v4, v1, :cond_1

    .line 159
    iput v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityX:I

    .line 160
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mXProgressBar:Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityX:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mXProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->setProgressBarColor(Landroid/widget/ProgressBar;)V

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCalibrationQuality()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    move-result-object v4

    iget v2, v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityY:I

    .line 164
    .local v2, "qualityY":I
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityY:I

    if-eq v4, v2, :cond_2

    .line 165
    iput v2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityY:I

    .line 166
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mYProgressBar:Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityY:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mYProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->setProgressBarColor(Landroid/widget/ProgressBar;)V

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCalibrationQuality()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    move-result-object v4

    iget v3, v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityZ:I

    .line 170
    .local v3, "qualityZ":I
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityZ:I

    if-eq v4, v3, :cond_3

    .line 171
    iput v3, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityZ:I

    .line 172
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mZProgressBar:Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mQualityZ:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mZProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->setProgressBarColor(Landroid/widget/ProgressBar;)V

    .line 175
    :cond_3
    return-void

    .line 140
    .end local v1    # "qualityX":I
    .end local v2    # "qualityY":I
    .end local v3    # "qualityZ":I
    :pswitch_0
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    if-eqz v4, :cond_0

    .line 141
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->updateState(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    if-nez v4, :cond_4

    .line 146
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->updateState(I)V

    goto :goto_0

    .line 147
    :cond_4
    iget v4, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    if-eq v4, v6, :cond_0

    .line 148
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->updateState(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    .line 197
    return-void

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->getAnimDrawableId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->startAnimation(I)V

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f11069b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->stopAnimation()V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->stopAnimation()V

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110712

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 276
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
    .line 271
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
    .line 261
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
    .line 255
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
    .line 250
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
    .line 246
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const-string v0, "calibration_state_key"

    iget v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method public onSettingsPressed()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mCurrentCalibrationState:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->updateState(I)V

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->startCalibration()V

    .line 206
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->stopCalibration()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->stopAnimation()V

    .line 227
    return-void
.end method
