.class public Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RcControllerConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;,
        Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$EditingStep;,
        Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANNEL_ACTION_COUNT:I = 0x9

.field private static final CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final EDITING_STEP_CHANNEL_TYPE:I = 0x1

.field private static final EDITING_STEP_INVERT_OR_EDIT:I = 0x0

.field private static final EDITING_STEP_MIN_MAX:I = 0x2


# instance fields
.field private mCalibrationStarted:Z

.field private final mChannelInfos:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEditingItemPosition:I

.field private mEditingStep:I

.field private final mListener:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    .line 46
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f1102f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f1102e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f1102fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f1102dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f1102f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f1102d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f1102f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f110580

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f1102f5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mChannelInfos:Landroid/util/SparseArray;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingItemPosition:I

    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingItemPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingItemPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mCalibrationStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mCalibrationStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mChannelInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingStep:I

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingStep:I

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->editChannel(Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;)V

    return-void
.end method

.method static synthetic access$600()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->CHANNEL_ACTION_STRING_RES_IDS:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->startCalibration(II)V

    return-void
.end method

.method private editChannel(Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;)V
    .locals 4
    .param p1, "channelInfo"    # Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getSupportedChannelTypes()Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, "supportedTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 121
    .local v1, "supportedTypeCount":I
    if-le v1, v3, :cond_1

    .line 122
    iput v3, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingStep:I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-ne v1, v3, :cond_0

    .line 124
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    .local v0, "channelType":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getAction()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->startCalibration(II)V

    goto :goto_0
.end method

.method private startCalibration(II)V
    .locals 1
    .param p1, "channelAction"    # I
    .param p2, "channelType"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mCalibrationStarted:Z

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;->onStartCalibration(II)V

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingStep:I

    .line 133
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 134
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mChannelInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->onBindViewHolder(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->updateView(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setContent(Landroid/util/SparseArray;)V
    .locals 4
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "channelInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mChannelInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mChannelInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public updateCurrentCalibrationType(I)V
    .locals 1
    .param p1, "currentCalibrationType"    # I

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mCalibrationStarted:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mCalibrationStarted:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->mEditingItemPosition:I

    .line 114
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    return-void
.end method
