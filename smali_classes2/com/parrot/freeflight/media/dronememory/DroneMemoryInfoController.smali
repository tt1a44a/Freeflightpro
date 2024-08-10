.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;
.super Ljava/lang/Object;
.source "DroneMemoryInfoController.java"


# static fields
.field private static final MEGABYTE_TO_GIBABYTE_DIVISER:I = 0x400

.field private static final MEMORY_SPACE_HIGHT_LIMIT_PERCENTAGE:I = 0x4b

.field private static final MEMORY_SPACE_LOW_LIMIT_PERCENTAGE:I = 0x19


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mMediaCountTextView:Landroid/widget/TextView;

.field private final mMemorySpaceTextView:Landroid/widget/TextView;

.field private final mPieChart:Lcom/parrot/freeflight/view/PieChart;

.field private mTotalSizeInMByte:I

.field private mUsedSizeInMByte:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mTotalSizeInMByte:I

    .line 31
    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mUsedSizeInMByte:I

    .line 32
    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mCount:I

    .line 93
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    .line 36
    const v0, 0x7f0a048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMediaCountTextView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a0361

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/PieChart;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mPieChart:Lcom/parrot/freeflight/view/PieChart;

    .line 38
    const v0, 0x7f0a048e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMemorySpaceTextView:Landroid/widget/TextView;

    .line 39
    check-cast p3, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p3    # "droneModel":Lcom/parrot/freeflight/core/model/Model;
    iput-object p3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMediaCountTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMemorySpaceTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->updateStorageSizeInfo(II)V

    return-void
.end method

.method private static formatSize(F)Ljava/lang/String;
    .locals 5
    .param p0, "size"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 104
    float-to-long v0, p0

    long-to-float v0, v0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    float-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%4.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateStorageSizeInfo(II)V
    .locals 17
    .param p1, "totalSizeInMByte"    # I
    .param p2, "usedSizeInMByte"    # I

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mTotalSizeInMByte:I

    move/from16 v0, p1

    if-ne v0, v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mUsedSizeInMByte:I

    move/from16 v0, p2

    if-eq v0, v10, :cond_2

    :cond_0
    if-lez p1, :cond_2

    .line 62
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mTotalSizeInMByte:I

    .line 63
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mUsedSizeInMByte:I

    .line 68
    sub-int v10, p1, p2

    if-gez v10, :cond_3

    const/4 v8, 0x0

    .line 70
    .local v8, "remainingSizeInMb":F
    :goto_0
    const/4 v10, 0x2

    new-array v6, v10, [F

    const/4 v10, 0x0

    move/from16 v0, p2

    int-to-float v11, v0

    aput v11, v6, v10

    const/4 v10, 0x1

    aput v8, v6, v10

    .line 73
    .local v6, "data":[F
    const v2, 0x7f0500cf

    .line 74
    .local v2, "color":I
    mul-int/lit8 v10, p2, 0x64

    div-int v10, v10, p1

    const/16 v11, 0x4b

    if-le v10, v11, :cond_4

    .line 75
    const v2, 0x7f0500d0

    .line 80
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    invoke-static {v10, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 81
    .local v4, "colorUsed":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    const v11, 0x7f0500cd

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 82
    .local v3, "colorNonUsed":I
    const/4 v10, 0x2

    new-array v5, v10, [I

    const/4 v10, 0x0

    aput v4, v5, v10

    const/4 v10, 0x1

    aput v3, v5, v10

    .line 84
    .local v5, "colors":[I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mPieChart:Lcom/parrot/freeflight/view/PieChart;

    invoke-virtual {v10, v6, v5}, Lcom/parrot/freeflight/view/PieChart;->setData([F[I)V

    .line 86
    const/high16 v10, 0x44800000    # 1024.0f

    div-float v7, v8, v10

    .line 87
    .local v7, "remainingSize":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mTotalSizeInMByte:I

    div-int/lit16 v10, v10, 0x400

    int-to-float v9, v10

    .line 88
    .local v9, "totalSize":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMemorySpaceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    const v12, 0x7f1103ec

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->formatSize(F)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 89
    invoke-static {v9}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->formatSize(F)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    const v16, 0x7f1103ef

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 88
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v2    # "color":I
    .end local v3    # "colorNonUsed":I
    .end local v4    # "colorUsed":I
    .end local v5    # "colors":[I
    .end local v6    # "data":[F
    .end local v7    # "remainingSize":F
    .end local v8    # "remainingSizeInMb":F
    .end local v9    # "totalSize":F
    :cond_2
    return-void

    .line 68
    :cond_3
    sub-int v10, p1, p2

    int-to-float v8, v10

    goto :goto_0

    .line 76
    .restart local v2    # "color":I
    .restart local v6    # "data":[F
    .restart local v8    # "remainingSizeInMb":F
    :cond_4
    mul-int/lit8 v10, p2, 0x64

    div-int v10, v10, p1

    const/16 v11, 0x19

    if-ge v10, v11, :cond_1

    .line 77
    const v2, 0x7f0500ce

    goto :goto_1
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 47
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 51
    return-void
.end method

.method public updateMediaCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mCount:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mCount:I

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mMediaCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->mContext:Landroid/content/Context;

    const v2, 0x7f1103ea

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method
