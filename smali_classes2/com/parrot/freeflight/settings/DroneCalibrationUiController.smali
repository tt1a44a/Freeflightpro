.class public Lcom/parrot/freeflight/settings/DroneCalibrationUiController;
.super Ljava/lang/Object;
.source "DroneCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/DroneCalibrationUiController$ProcedureState;,
        Lcom/parrot/freeflight/settings/DroneCalibrationUiController$AnimationState;
    }
.end annotation


# static fields
.field private static final ANIMATION_IDLE:I = 0x0

.field private static final ANIMATION_STATE_KEY:Ljava/lang/String; = "animation_state_key"

.field private static final ANIMATION_X:I = 0x1

.field private static final ANIMATION_Y:I = 0x2

.field private static final ANIMATION_Z:I = 0x3

.field private static final CALIBRATION_STATE_KEY:Ljava/lang/String; = "calibration_state_key"

.field private static final CHECKBOX_BLINKING_ALPHA_MAX:F = 1.0f

.field private static final CHECKBOX_BLINKING_ALPHA_MIN:F = 0.2f

.field private static final CHECKBOX_BLINKING_HALF_PERIOD_MILLIS:I = 0x1f4

.field private static final CURRENT_AXIS_STATE_KEY:Ljava/lang/String; = "current_axis_state"

.field private static final FAILED:I = 0x7

.field private static final FINISHED:I = 0x8

.field private static final FLYING:I = 0x0

.field private static final IDLE:I = 0x2

.field private static final LANDING:I = 0x1

.field private static final STARTED_MAGNETO:I = 0x6

.field private static final STARTED_PITOT:I = 0x4

.field private static final STARTING_MAGNETO:I = 0x5

.field private static final STARTING_PITOT:I = 0x3

.field private static final X_AXIS_STATE_KEY:Ljava/lang/String; = "x_axis_state"

.field private static final Y_AXIS_STATE_KEY:Ljava/lang/String; = "y_axis_state"

.field private static final Z_AXIS_STATE_KEY:Ljava/lang/String; = "z_axis_state"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAnimationState:I

.field private final mBackButton:Landroid/widget/ImageView;

.field private final mBottomAxes:Landroid/view/View;

.field private final mCalibrateButton:Landroid/widget/Button;

.field private final mCalibrationImageView:Landroid/widget/ImageView;

.field private mCheckboxAnimation:Landroid/animation/ObjectAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentAxis:I

.field private mCurrentCalibrationState:I

.field private final mExitHandler:Landroid/os/Handler;

.field private final mLandingButton:Landroid/widget/Button;

.field private final mModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mPitotCalibrationAvailable:Z

.field private mPitotCalibrationState:I

.field private final mPitotCheckbox:Landroid/widget/ImageView;

.field private final mPitotCheckboxBackground:Landroid/widget/ImageView;

.field private final mTextView:Landroid/widget/TextView;

.field private final mXCheckbox:Landroid/widget/ImageView;

.field private mXIsCalibrated:Z

.field private final mYCheckbox:Landroid/widget/ImageView;

.field private mYIsCalibrated:Z

.field private final mZCheckbox:Landroid/widget/ImageView;

.field private mZIsCalibrated:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
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
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    .line 58
    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    .line 103
    const/4 v3, 0x2

    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    .line 106
    iput v4, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 201
    new-instance v3, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$4;-><init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 132
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    .line 133
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mExitHandler:Landroid/os/Handler;

    .line 135
    const v3, 0x7f0a02c0

    invoke-virtual {p3, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 136
    .local v1, "rootView":Landroid/view/ViewGroup;
    const v3, 0x7f0a0039

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    .line 137
    const v3, 0x7f0a0264

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    .line 139
    const v3, 0x7f0a0059

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    .line 140
    const v3, 0x7f0a0083

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    .line 142
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    new-instance v5, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;-><init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    new-instance v5, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;

    invoke-direct {v5, p0, p2}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;-><init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;Lcom/parrot/freeflight/core/model/DroneModel;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;

    invoke-direct {v5, p0, p5}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;-><init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v3, 0x7f0a01c6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    .line 172
    const v3, 0x7f0a01c7

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckboxBackground:Landroid/widget/ImageView;

    .line 173
    const v3, 0x7f0a01cb

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    .line 174
    const v3, 0x7f0a01cc

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    .line 175
    const v3, 0x7f0a01cd

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    .line 177
    const v3, 0x7f0a0489

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    .local v2, "titleView":Landroid/widget/TextView;
    const v3, 0x7f0a0429

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    .line 179
    const v3, 0x7f0a01d4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    .line 180
    iput-object p2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 182
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isPitotCalibrationAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v3, v3, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationAvailable:Z

    .line 183
    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationAvailable:Z

    if-eqz v3, :cond_2

    const v3, 0x7f110534

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    const v3, 0x7f0a0266

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "pitotView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationAvailable:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->applyTheme(Landroid/view/ViewGroup;)V

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->fixPreLollipopTheme()V

    .line 190
    if-eqz p4, :cond_0

    .line 192
    const-string v3, "calibration_state_key"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    .line 193
    const-string v3, "x_axis_state"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    .line 194
    const-string v3, "y_axis_state"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    .line 195
    const-string v3, "z_axis_state"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    .line 197
    const-string v3, "current_axis_state"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    .line 199
    :cond_0
    return-void

    .end local v0    # "pitotView":Landroid/view/View;
    :cond_1
    move v3, v4

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    const v3, 0x7f1103b6

    goto :goto_1

    .line 185
    .restart local v0    # "pitotView":Landroid/view/View;
    :cond_3
    const/16 v4, 0x8

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->resetCalibration()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationAvailable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->update()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private applyTheme(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 752
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    .line 753
    .local v0, "productColor":Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 754
    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 755
    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 756
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    :cond_0
    return-void
.end method

.method private getAnimXDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 670
    sget-object v1, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$6;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 682
    const v0, 0x7f07028f

    .line 685
    .local v0, "res":I
    :goto_0
    return v0

    .line 673
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f07042e

    .line 674
    .restart local v0    # "res":I
    goto :goto_0

    .line 676
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0701f7

    .line 677
    .restart local v0    # "res":I
    goto :goto_0

    .line 679
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0702a8

    .line 680
    .restart local v0    # "res":I
    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAnimYDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 691
    sget-object v1, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$6;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 703
    const v0, 0x7f070290

    .line 706
    .local v0, "res":I
    :goto_0
    return v0

    .line 694
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f07042f

    .line 695
    .restart local v0    # "res":I
    goto :goto_0

    .line 697
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0701f8

    .line 698
    .restart local v0    # "res":I
    goto :goto_0

    .line 700
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0702a9

    .line 701
    .restart local v0    # "res":I
    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAnimZDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 712
    sget-object v1, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$6;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 724
    const v0, 0x7f070291

    .line 727
    .local v0, "res":I
    :goto_0
    return v0

    .line 715
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f070430

    .line 716
    .restart local v0    # "res":I
    goto :goto_0

    .line 718
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0701f9

    .line 719
    .restart local v0    # "res":I
    goto :goto_0

    .line 721
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0702aa

    .line 722
    .restart local v0    # "res":I
    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIdleDrawableId()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 733
    sget-object v1, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$6;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 745
    const v0, 0x7f0700da

    .line 748
    .local v0, "res":I
    :goto_0
    return v0

    .line 736
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f070117

    .line 737
    .restart local v0    # "res":I
    goto :goto_0

    .line 739
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0701b1

    .line 740
    .restart local v0    # "res":I
    goto :goto_0

    .line 742
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f070142

    .line 743
    .restart local v0    # "res":I
    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetCalibration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    .line 464
    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    .line 465
    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    .line 466
    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    .line 467
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 470
    return-void
.end method

.method private setCalibrationMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    return-void
.end method

.method private setCheckboxCurrent(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    return-void
.end method

.method private setCheckboxDone(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 453
    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    return-void
.end method

.method private setCheckboxError(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 458
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f05001d

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    return-void
.end method

.method private setCheckboxIdle(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 443
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050146

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    return-void
.end method

.method private setFailedMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 590
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 593
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 594
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    .line 595
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 596
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getIdleDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    return-void
.end method

.method private setFinishedMode()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 573
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 574
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 575
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 576
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getIdleDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    iput v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 579
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mExitHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$5;-><init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    return-void
.end method

.method private setFlyingMode()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 541
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 544
    return-void
.end method

.method private setIdleMode()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getIdleDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iput v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 560
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 561
    return-void
.end method

.method private setLandingMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mBottomAxes:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1100f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 549
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mLandingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    return-void
.end method

.method private startAnimation(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 623
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 625
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 626
    .local v1, "frame":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 627
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 629
    :cond_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 634
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_3

    .line 636
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 637
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 639
    :cond_3
    return-void
.end method

.method private startCheckboxAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 602
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckboxBackground:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    .line 604
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 605
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 606
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 609
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckboxBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    return-void

    .line 603
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startXAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 642
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    if-eq v0, v1, :cond_0

    .line 643
    iput v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 644
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getAnimXDrawableId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startAnimation(I)V

    .line 646
    :cond_0
    return-void
.end method

.method private startYAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 649
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    if-eq v0, v1, :cond_0

    .line 650
    iput v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 651
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getAnimYDrawableId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startAnimation(I)V

    .line 653
    :cond_0
    return-void
.end method

.method private startZAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 656
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    if-eq v0, v1, :cond_0

    .line 657
    iput v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    .line 658
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->getAnimZDrawableId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startAnimation(I)V

    .line 660
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 665
    :cond_0
    return-void
.end method

.method private stopCheckboxAnimation()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCheckboxAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckboxBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v6, 0x1

    .line 209
    iget-object v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrateButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v1

    .line 212
    .local v1, "calibrationState":Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->getPitotCalibrationState()I

    move-result v3

    .line 213
    .local v3, "pitotCalibrationState":I
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->getMagnetoCalibrationProcedureState()I

    move-result v2

    .line 214
    .local v2, "magnetoCalibrationProcedureState":I
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    if-ne v7, v9, :cond_3

    :cond_0
    move v0, v6

    .line 215
    .local v0, "calibratingPitot":Z
    :goto_0
    if-eq v2, v10, :cond_1

    if-eqz v0, :cond_4

    if-ne v3, v9, :cond_4

    .line 217
    :cond_1
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    .line 295
    :cond_2
    :goto_1
    return-void

    .end local v0    # "calibratingPitot":Z
    :cond_3
    move v0, v5

    .line 214
    goto :goto_0

    .line 219
    .restart local v0    # "calibratingPitot":Z
    :cond_4
    const/4 v4, 0x0

    .line 220
    .local v4, "shouldUpdateUi":Z
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    if-eq v7, v3, :cond_5

    .line 221
    iput v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    .line 222
    const/4 v4, 0x1

    .line 224
    :cond_5
    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isXAxisCalibrated()Z

    move-result v8

    if-eq v7, v8, :cond_6

    .line 225
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isXAxisCalibrated()Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    .line 226
    const/4 v4, 0x1

    .line 228
    :cond_6
    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isYAxisCalibrated()Z

    move-result v8

    if-eq v7, v8, :cond_7

    .line 229
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isYAxisCalibrated()Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    .line 230
    const/4 v4, 0x1

    .line 232
    :cond_7
    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isZAxisCalibrated()Z

    move-result v8

    if-eq v7, v8, :cond_8

    .line 233
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isZAxisCalibrated()Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    .line 234
    const/4 v4, 0x1

    .line 236
    :cond_8
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->getAxisToCalibrate()I

    move-result v8

    if-eq v7, v8, :cond_9

    .line 237
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->getAxisToCalibrate()I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    .line 238
    const/4 v4, 0x1

    .line 240
    :cond_9
    if-eqz v4, :cond_a

    .line 241
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateCalibrationAnimation()V

    .line 242
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateCheckboxAndText()V

    .line 245
    :cond_a
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    packed-switch v7, :pswitch_data_0

    .line 271
    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    .line 273
    :pswitch_0
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    if-ne v5, v6, :cond_2

    .line 274
    invoke-direct {p0, v10}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto :goto_1

    .line 247
    :pswitch_1
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    if-ne v7, v6, :cond_b

    .line 248
    invoke-direct {p0, v9}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto :goto_2

    .line 252
    :pswitch_2
    iget v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    if-nez v7, :cond_b

    .line 253
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    .line 254
    iget-object v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->startMagnetoCalibration()V

    goto :goto_2

    .line 258
    :pswitch_3
    if-nez v2, :cond_b

    .line 259
    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto :goto_2

    .line 263
    :pswitch_4
    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    if-eqz v7, :cond_b

    .line 264
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto :goto_2

    .line 278
    :pswitch_5
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    if-eq v5, v6, :cond_2

    .line 279
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto/16 :goto_1

    .line 286
    :pswitch_6
    iget v6, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    if-eqz v6, :cond_2

    .line 287
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto/16 :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private updateAxisCheckbox(Landroid/widget/ImageView;ZZ)V
    .locals 0
    .param p1, "checkbox"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isCalibrated"    # Z
    .param p3, "isCurrentAxis"    # Z

    .prologue
    .line 517
    if-eqz p2, :cond_0

    .line 518
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_0
    if-eqz p3, :cond_1

    .line 520
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxCurrent(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 522
    :cond_1
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private updateCalibrationAnimation()V
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 528
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startXAnimation()V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 531
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startYAnimation()V

    goto :goto_0

    .line 532
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startZAnimation()V

    goto :goto_0
.end method

.method private updateCheckboxAndText()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 473
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 474
    iget v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCalibrationState:I

    packed-switch v3, :pswitch_data_0

    .line 494
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopCheckboxAnimation()V

    .line 495
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxIdle(Landroid/widget/ImageView;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopCheckboxAnimation()V

    .line 477
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxCurrent(Landroid/widget/ImageView;)V

    .line 478
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f1100f7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->startCheckboxAnimation()V

    goto :goto_0

    .line 484
    :pswitch_3
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopCheckboxAnimation()V

    .line 485
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 488
    :pswitch_4
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopCheckboxAnimation()V

    .line 489
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxError(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 498
    :cond_1
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 499
    iget-object v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mPitotCheckbox:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCheckboxDone(Landroid/widget/ImageView;)V

    .line 500
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 501
    .local v0, "currentAxisIsX":Z
    :goto_1
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 502
    .local v1, "currentAxisIsY":Z
    :goto_2
    iget v5, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v2, v3

    .line 503
    .local v2, "currentAxisIsZ":Z
    :goto_3
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXCheckbox:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    invoke-direct {p0, v3, v4, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateAxisCheckbox(Landroid/widget/ImageView;ZZ)V

    .line 504
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYCheckbox:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    invoke-direct {p0, v3, v4, v1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateAxisCheckbox(Landroid/widget/ImageView;ZZ)V

    .line 505
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZCheckbox:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    invoke-direct {p0, v3, v4, v2}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateAxisCheckbox(Landroid/widget/ImageView;ZZ)V

    .line 506
    if-eqz v0, :cond_5

    .line 507
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f1100fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .end local v0    # "currentAxisIsX":Z
    .end local v1    # "currentAxisIsY":Z
    .end local v2    # "currentAxisIsZ":Z
    :cond_2
    move v0, v4

    .line 500
    goto :goto_1

    .restart local v0    # "currentAxisIsX":Z
    :cond_3
    move v1, v4

    .line 501
    goto :goto_2

    .restart local v1    # "currentAxisIsY":Z
    :cond_4
    move v2, v4

    .line 502
    goto :goto_3

    .line 508
    .restart local v2    # "currentAxisIsZ":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 509
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f110101

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 510
    :cond_6
    if-eqz v2, :cond_0

    .line 511
    iget-object v3, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f110105

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    .line 299
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    packed-switch v0, :pswitch_data_0

    .line 338
    const-string v0, "Calibration Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state not handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 302
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setFlyingMode()V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 306
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setLandingMode()V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 310
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setIdleMode()V

    goto :goto_0

    .line 313
    :pswitch_3
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    goto :goto_0

    .line 316
    :pswitch_4
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 317
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCalibrationMode()V

    .line 318
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCalibrationImageView:Landroid/widget/ImageView;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateCheckboxAndText()V

    goto :goto_0

    .line 322
    :pswitch_5
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    goto :goto_0

    .line 325
    :pswitch_6
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setCalibrationMode()V

    .line 326
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateCalibrationAnimation()V

    .line 327
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateCheckboxAndText()V

    goto :goto_0

    .line 330
    :pswitch_7
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 331
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setFinishedMode()V

    goto :goto_0

    .line 334
    :pswitch_8
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->stopAnimation()V

    .line 335
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setFailedMode()V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 434
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
    .line 429
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
    .line 419
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
    .line 413
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
    .line 408
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
    .line 404
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 393
    const-string v0, "x_axis_state"

    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mXIsCalibrated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const-string v0, "y_axis_state"

    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mYIsCalibrated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v0, "z_axis_state"

    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mZIsCalibrated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    const-string v0, "current_axis_state"

    iget v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentAxis:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v0, "animation_state_key"

    iget v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mAnimationState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    const-string v0, "calibration_state_key"

    iget v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    return-void
.end method

.method public onSettingsPressed()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->resetCalibration()V

    .line 347
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->startPitotCalibration()V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 357
    return-void

    .line 349
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->resetCalibration()V

    .line 351
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->startMagnetoCalibration()V

    goto :goto_0

    .line 354
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->updateState(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mExitHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->stopPitotCalibration()V

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 380
    return-void

    .line 375
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mCurrentCalibrationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->stopMagnetoCalibration()V

    goto :goto_0
.end method
