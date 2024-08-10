.class Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;
.super Ljava/lang/Object;
.source "AnimationViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;
    }
.end annotation


# instance fields
.field private final mAnimationLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAvailability:I

.field private final mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mButtons:[Lcom/parrot/freeflight/view/AAnimationButton;

.field private mIsFreeFlight:Ljava/lang/Boolean;

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOpenButton:Lcom/parrot/freeflight/view/AAnimationButton;

.field private mPilotingMode:I

.field private mPoiState:I

.field private final mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/util/ui/MetricsServant;)V
    .locals 3
    .param p1, "animationLayout"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "metricsServant"    # Lcom/parrot/freeflight/util/ui/MetricsServant;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPilotingMode:I

    .line 57
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mIsFreeFlight:Ljava/lang/Boolean;

    .line 62
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAvailability:I

    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    .line 74
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 75
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/AAnimationButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/AAnimationButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/AAnimationButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/AAnimationButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/view/AAnimationButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mButtons:[Lcom/parrot/freeflight/view/AAnimationButton;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/view/AAnimationButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mOpenButton:Lcom/parrot/freeflight/view/AAnimationButton;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;
    .param p1, "x1"    # Lcom/parrot/freeflight/view/AAnimationButton;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mOpenButton:Lcom/parrot/freeflight/view/AAnimationButton;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    return-object v0
.end method

.method private enableAnimationButtons(IZ)V
    .locals 9
    .param p1, "availability"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 236
    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAvailability:I

    if-eq v5, p1, :cond_0

    if-eqz p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAvailability:I

    .line 241
    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPilotingMode:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    if-eq v5, v0, :cond_3

    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    const/4 v8, 0x3

    if-eq v5, v8, :cond_3

    move v2, v6

    .line 245
    .local v2, "isFreeFlight":Z
    :goto_1
    if-eqz v2, :cond_4

    const/16 v3, 0x10

    .line 247
    .local v3, "topLeftAnim":I
    :goto_2
    if-eqz v2, :cond_2

    const/16 v0, 0x20

    .line 249
    .local v0, "bottomLeftAnim":I
    :cond_2
    if-eqz v2, :cond_5

    const/16 v4, 0x40

    .line 251
    .local v4, "topRightAnim":I
    :goto_3
    if-eqz v2, :cond_6

    const/16 v1, 0x80

    .line 254
    .local v1, "bottomRightAnim":I
    :goto_4
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    and-int v5, p1, v3

    if-ne v5, v3, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationEnabled(Z)V

    .line 255
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    and-int v5, p1, v0

    if-ne v5, v0, :cond_8

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationEnabled(Z)V

    .line 256
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    and-int v5, p1, v4

    if-ne v5, v4, :cond_9

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationEnabled(Z)V

    .line 257
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    and-int v8, p1, v1

    if-ne v8, v1, :cond_a

    :goto_8
    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationEnabled(Z)V

    goto :goto_0

    .end local v0    # "bottomLeftAnim":I
    .end local v1    # "bottomRightAnim":I
    .end local v2    # "isFreeFlight":Z
    .end local v3    # "topLeftAnim":I
    .end local v4    # "topRightAnim":I
    :cond_3
    move v2, v7

    .line 241
    goto :goto_1

    .restart local v2    # "isFreeFlight":Z
    :cond_4
    move v3, v6

    .line 245
    goto :goto_2

    .line 249
    .restart local v0    # "bottomLeftAnim":I
    .restart local v3    # "topLeftAnim":I
    :cond_5
    const/4 v4, 0x4

    goto :goto_3

    .line 251
    .restart local v4    # "topRightAnim":I
    :cond_6
    const/16 v1, 0x8

    goto :goto_4

    .restart local v1    # "bottomRightAnim":I
    :cond_7
    move v5, v7

    .line 254
    goto :goto_5

    :cond_8
    move v5, v7

    .line 255
    goto :goto_6

    :cond_9
    move v5, v7

    .line 256
    goto :goto_7

    :cond_a
    move v6, v7

    .line 257
    goto :goto_8
.end method

.method private updateMode(II)V
    .locals 12
    .param p1, "mode"    # I
    .param p2, "poiState"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x41f00000    # 30.0f

    .line 139
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPilotingMode:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    if-ne v0, p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPilotingMode:I

    .line 143
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    .line 145
    if-nez p1, :cond_5

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    if-eq v0, v7, :cond_5

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    move v6, v1

    .line 149
    .local v6, "isFreeFlight":Z
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mIsFreeFlight:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mIsFreeFlight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v6, :cond_0

    .line 152
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mIsFreeFlight:Ljava/lang/Boolean;

    .line 155
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_6

    const v0, 0x7f11026b

    :goto_2
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationName(I)V

    .line 156
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_7

    const v0, 0x7f110267

    :goto_3
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationName(I)V

    .line 157
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_8

    const v0, 0x7f11026d

    :goto_4
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationName(I)V

    .line 158
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_9

    const v0, 0x7f11026e

    :goto_5
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationName(I)V

    .line 161
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_a

    const v0, 0x7f070394

    :goto_6
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationIcon(I)V

    .line 162
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_b

    const v0, 0x7f070399

    :goto_7
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationIcon(I)V

    .line 163
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_c

    const v0, 0x7f0703a2

    :goto_8
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationIcon(I)V

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_d

    const v0, 0x7f0703a5

    :goto_9
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationIcon(I)V

    .line 167
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_e

    const v0, 0x7f110268

    :goto_a
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftName(I)V

    .line 170
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_f

    const v0, 0x7f110269

    :goto_b
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightName(I)V

    .line 173
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 174
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_c
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftName(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_11

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 177
    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_d
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightName(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_12

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 180
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_e
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftName(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_13

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 183
    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_f
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightName(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_14

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 186
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_10
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftName(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_15

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 189
    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_11
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightName(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_16

    const v0, 0x7f070393

    :goto_12
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftIcon(I)V

    .line 194
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_17

    const v0, 0x7f070394

    :goto_13
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightIcon(I)V

    .line 195
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_18

    const v0, 0x7f07039b

    :goto_14
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftIcon(I)V

    .line 196
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_19

    const v0, 0x7f07039a

    :goto_15
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightIcon(I)V

    .line 197
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1a

    const v0, 0x7f0703a4

    :goto_16
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftIcon(I)V

    .line 198
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1b

    const v0, 0x7f0703a3

    :goto_17
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightIcon(I)V

    .line 199
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1c

    const v0, 0x7f0703a7

    :goto_18
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionLeftIcon(I)V

    .line 200
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1d

    const v0, 0x7f0703a6

    :goto_19
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setOptionRightIcon(I)V

    .line 203
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1e

    const/16 v0, 0x10

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationId(I)V

    .line 204
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_1f

    const/16 v0, 0x20

    :goto_1b
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationId(I)V

    .line 205
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_20

    const/16 v0, 0x40

    :goto_1c
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationId(I)V

    .line 206
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_21

    const/16 v0, 0x80

    :goto_1d
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setAnimationId(I)V

    .line 209
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_22

    const/16 v3, 0x10

    :goto_1e
    if-eqz v6, :cond_23

    const v4, -0x3f36f025

    :goto_1f
    if-eqz v6, :cond_24

    const v5, 0x40c90fdb

    :goto_20
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;IFF)V

    invoke-virtual {v11, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setListener(Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;)V

    .line 215
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomLeftLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_25

    const/16 v3, 0x20

    :goto_21
    if-eqz v6, :cond_3

    :cond_3
    if-eqz v6, :cond_4

    :cond_4
    move-object v1, p0

    move v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;IFF)V

    invoke-virtual {v11, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setListener(Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;)V

    .line 221
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mTopRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_26

    const/16 v3, 0x40

    :goto_22
    if-eqz v6, :cond_27

    move v4, v9

    :goto_23
    if-eqz v6, :cond_28

    move v5, v8

    :goto_24
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;IFF)V

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setListener(Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;)V

    .line 227
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBottomRightLayout:Lcom/parrot/freeflight/view/AAnimationButton;

    if-eqz v6, :cond_29

    const/16 v3, 0x80

    :goto_25
    if-eqz v6, :cond_2a

    move v4, v9

    :goto_26
    if-eqz v6, :cond_2b

    move v5, v8

    :goto_27
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;IFF)V

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->setListener(Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;)V

    goto/16 :goto_0

    .line 145
    .end local v6    # "isFreeFlight":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 155
    .restart local v6    # "isFreeFlight":Z
    :cond_6
    const v0, 0x7f11026a

    goto/16 :goto_2

    .line 156
    :cond_7
    const v0, 0x7f110266

    goto/16 :goto_3

    .line 157
    :cond_8
    const v0, 0x7f11026c

    goto/16 :goto_4

    .line 158
    :cond_9
    const v0, 0x7f11026f

    goto/16 :goto_5

    .line 161
    :cond_a
    const v0, 0x7f07039c

    goto/16 :goto_6

    .line 162
    :cond_b
    const v0, 0x7f070395

    goto/16 :goto_7

    .line 163
    :cond_c
    const v0, 0x7f07039f

    goto/16 :goto_8

    .line 164
    :cond_d
    const v0, 0x7f0703a8

    goto/16 :goto_9

    .line 167
    :cond_e
    const v0, 0x7f110268

    goto/16 :goto_a

    .line 170
    :cond_f
    const v0, 0x7f110269

    goto/16 :goto_b

    .line 174
    :cond_10
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 175
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 177
    :cond_11
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 178
    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 180
    :cond_12
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 181
    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 183
    :cond_13
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 184
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 186
    :cond_14
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 187
    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 189
    :cond_15
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 190
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 193
    :cond_16
    const v0, 0x7f07039d

    goto/16 :goto_12

    .line 194
    :cond_17
    const v0, 0x7f07039e

    goto/16 :goto_13

    .line 195
    :cond_18
    const v0, 0x7f070396

    goto/16 :goto_14

    .line 196
    :cond_19
    const v0, 0x7f070397

    goto/16 :goto_15

    .line 197
    :cond_1a
    const v0, 0x7f0703a0

    goto/16 :goto_16

    .line 198
    :cond_1b
    const v0, 0x7f0703a1

    goto/16 :goto_17

    .line 199
    :cond_1c
    const v0, 0x7f0703a9

    goto/16 :goto_18

    .line 200
    :cond_1d
    const v0, 0x7f0703aa

    goto/16 :goto_19

    :cond_1e
    move v0, v1

    .line 203
    goto/16 :goto_1a

    :cond_1f
    move v0, v7

    .line 204
    goto/16 :goto_1b

    .line 205
    :cond_20
    const/4 v0, 0x4

    goto/16 :goto_1c

    .line 206
    :cond_21
    const/16 v0, 0x8

    goto/16 :goto_1d

    :cond_22
    move v3, v1

    .line 209
    goto/16 :goto_1e

    :cond_23
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_1f

    :cond_24
    const/high16 v5, -0x40800000    # -1.0f

    goto/16 :goto_20

    :cond_25
    move v3, v7

    .line 215
    goto/16 :goto_21

    .line 221
    :cond_26
    const/4 v3, 0x4

    goto/16 :goto_22

    :cond_27
    move v4, v10

    goto/16 :goto_23

    :cond_28
    move v5, v9

    goto/16 :goto_24

    .line 227
    :cond_29
    const/16 v3, 0x8

    goto/16 :goto_25

    :cond_2a
    move v4, v10

    goto/16 :goto_26

    :cond_2b
    move v5, v9

    goto/16 :goto_27
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mAnimationLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v4

    .line 94
    .local v4, "pilotingMode":I
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOIStatus()I

    move-result v5

    .line 95
    .local v5, "poiState":I
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getAnimationsAvailability()I

    move-result v0

    .line 98
    .local v0, "availability":I
    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPilotingMode:I

    if-ne v8, v4, :cond_0

    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mPoiState:I

    if-eq v8, v5, :cond_1

    :cond_0
    move v2, v7

    .line 100
    .local v2, "forceAvailabilityUpdate":Z
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->updateMode(II)V

    .line 101
    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->enableAnimationButtons(IZ)V

    .line 104
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mButtons:[Lcom/parrot/freeflight/view/AAnimationButton;

    array-length v10, v9

    move v8, v6

    :goto_1
    if-ge v8, v10, :cond_4

    aget-object v1, v9, v8

    .line 105
    .local v1, "button":Lcom/parrot/freeflight/view/AAnimationButton;
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentAnimation()I

    move-result v11

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/AAnimationButton;->getAnimationId()I

    move-result v12

    if-ne v11, v12, :cond_2

    move v3, v7

    .line 107
    .local v3, "isCurrentAnimation":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v1}, Lcom/parrot/freeflight/view/AAnimationButton;->openProgress()V

    .line 111
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentAnimationProgress()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/parrot/freeflight/view/AAnimationButton;->setProgress(I)V

    .line 104
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v1    # "button":Lcom/parrot/freeflight/view/AAnimationButton;
    .end local v2    # "forceAvailabilityUpdate":Z
    .end local v3    # "isCurrentAnimation":Z
    :cond_1
    move v2, v6

    .line 98
    goto :goto_0

    .restart local v1    # "button":Lcom/parrot/freeflight/view/AAnimationButton;
    .restart local v2    # "forceAvailabilityUpdate":Z
    :cond_2
    move v3, v6

    .line 105
    goto :goto_2

    .line 114
    .restart local v3    # "isCurrentAnimation":Z
    :cond_3
    invoke-virtual {v1}, Lcom/parrot/freeflight/view/AAnimationButton;->closeProgress()V

    goto :goto_3

    .line 117
    .end local v1    # "button":Lcom/parrot/freeflight/view/AAnimationButton;
    .end local v3    # "isCurrentAnimation":Z
    :cond_4
    return-void
.end method
