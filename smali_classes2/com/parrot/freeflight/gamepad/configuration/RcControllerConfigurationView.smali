.class public Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;
.super Landroid/widget/FrameLayout;
.source "RcControllerConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/ConfigurationView;


# instance fields
.field private final mCalibrationButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCalibrationProgressLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCalibrationValidationLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCancelCalibrationButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentCalibrationType:I

.field private mMainCalibrationStarted:Z

.field private final mMappingRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStartMainCalibrationButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCurrentCalibrationType:I

    .line 53
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 74
    const v1, 0x7f0c00bf

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v1, 0x7f0a03ba

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMappingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    const v1, 0x7f0a0086

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationButton:Landroid/widget/Button;

    .line 78
    const v1, 0x7f0a00bc

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mStartMainCalibrationButton:Landroid/widget/Button;

    .line 79
    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    .line 80
    const v1, 0x7f0a029d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationValidationLayout:Landroid/view/View;

    .line 81
    const v1, 0x7f0a029c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationProgressLayout:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mStartMainCalibrationButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationButton:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationValidationLayout:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 118
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    invoke-direct {v1, p1, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMappingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMappingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->updateChannelInfos()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->updateCalibrationState()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->updateMainCalibration()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationProgressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMainCalibrationStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object v0
.end method

.method private updateCalibrationState()V
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getCurrentCalibrationType()I

    move-result v0

    .line 211
    .local v0, "currentCalibrationType":I
    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCurrentCalibrationType:I

    if-eq v1, v0, :cond_0

    .line 212
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCurrentCalibrationType:I

    .line 213
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->updateCurrentCalibrationType(I)V

    .line 216
    .end local v0    # "currentCalibrationType":I
    :cond_0
    return-void
.end method

.method private updateChannelInfos()V
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelInfos()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;

    move-result-object v0

    .line 202
    .local v0, "channelInfos":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray<Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;>;"
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->setContent(Landroid/util/SparseArray;)V

    .line 206
    .end local v0    # "channelInfos":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray<Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;>;"
    :cond_0
    return-void
.end method

.method private updateMainCalibration()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMainCalibrationStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->isNeutralCalibrated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    :cond_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMainCalibrationStarted:Z

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationProgressLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showMapping(Z)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMainCalibrationStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->isNeutralCalibrated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showCalibrationValidation(Z)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showMapping(Z)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public resetPreferences()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->resetCalibration()V

    .line 197
    :cond_0
    return-void
.end method

.method public setGamePad(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/RcControllerGamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->enableReceiver(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->start()V

    .line 159
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->setVisibility(I)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCalibrationValidation(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 151
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationValidationLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCancelCalibrationButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v1, v2

    .line 152
    goto :goto_1
.end method

.method public showMapping(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mMappingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCalibrationButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->monitorChannels(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->monitorChannels(Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_1

    .line 180
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mCurrentCalibrationType:I

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->abortCalibration()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->enableReceiver(Z)V

    .line 185
    :cond_1
    return-void
.end method
