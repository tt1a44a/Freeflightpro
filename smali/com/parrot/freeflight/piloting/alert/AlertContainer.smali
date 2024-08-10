.class public Lcom/parrot/freeflight/piloting/alert/AlertContainer;
.super Ljava/lang/Object;
.source "AlertContainer.java"


# static fields
.field private static final FPV_ALERT_COUNT:I = 0x2

.field private static final PERMANENT_ALERT_TYPE:I = -0x1

.field private static final SENSOR_ALERT_COUNT:I = 0x5


# instance fields
.field private final mCurrentAlerts:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentFpvAlerts:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mFpvAlerts:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorAlerts:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/4 v1, 0x0

    const v2, 0x104000e

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mSensorAlerts:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0xa

    const v2, 0x7f110687

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 36
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0xb

    const v2, 0x7f110688

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 37
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0xc

    const v2, 0x7f11068a

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 38
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0xd

    const v2, 0x7f110686

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 39
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0xe

    const v2, 0x7f110689

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mFpvAlerts:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0x32

    const v2, 0x7f110133

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putFpvAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 43
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v1, 0x34

    const v2, 0x7f1100f6

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->putFpvAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mSensorAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    .line 47
    return-void
.end method

.method private hasAlert(ILcom/parrot/freeflight/piloting/alert/Alert;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "permanentAlert"    # Lcom/parrot/freeflight/piloting/alert/Alert;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 172
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putFpvAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V
    .locals 2
    .param p1, "alert"    # Lcom/parrot/freeflight/piloting/alert/Alert;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method private putSensorAlert(Lcom/parrot/freeflight/piloting/alert/Alert;)V
    .locals 2
    .param p1, "alert"    # Lcom/parrot/freeflight/piloting/alert/Alert;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mSensorAlerts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method private removeAlertMsg(I)Z
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 59
    .local v0, "update":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    :cond_0
    return v0

    .line 58
    .end local v0    # "update":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFpvAlertMsg(I)Z
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, "update":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    :cond_0
    return v0

    .line 64
    .end local v0    # "update":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFpvAlert(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "update":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 122
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    :cond_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMotorAlert(III)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "criticalityLevel"    # I

    .prologue
    const/16 v3, 0x9

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 134
    .local v0, "curValue":Lcom/parrot/freeflight/piloting/alert/Alert;
    if-nez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    new-instance v2, Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-direct {v2, p1, p2, p3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(III)Z

    move-result v1

    goto :goto_0
.end method

.method public addPermanentAlert(III)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "criticalityLevel"    # I

    .prologue
    const/4 v3, -0x1

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 82
    .local v0, "curValue":Lcom/parrot/freeflight/piloting/alert/Alert;
    if-nez v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    new-instance v2, Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-direct {v2, p1, p2, p3}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(III)Z

    move-result v1

    goto :goto_0
.end method

.method public addSensorAlert(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "update":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mSensorAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 109
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mSensorAlerts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    :cond_0
    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addVideoUpdateAlert()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x8

    .line 94
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    new-instance v2, Lcom/parrot/freeflight/piloting/alert/Alert;

    const v3, 0x7f110786

    invoke-direct {v2, v4, v3, v0}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGenericAlerts(Z)Ljava/util/List;
    .locals 4
    .param p1, "fpvEnabled"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "genericAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 183
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 187
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentFpvAlerts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    return-object v0
.end method

.method public getPermanentAlert()Lcom/parrot/freeflight/piloting/alert/Alert;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    return-object v0
.end method

.method public getTemporaryAlert()Lcom/parrot/freeflight/piloting/alert/Alert;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mTemporaryAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    return-object v0
.end method

.method public varargs hasAllAlerts([I)Z
    .locals 6
    .param p1, "types"    # [I

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 163
    .local v0, "permanentAlert":Lcom/parrot/freeflight/piloting/alert/Alert;
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, p1, v3

    .line 164
    .local v1, "type":I
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasAlert(ILcom/parrot/freeflight/piloting/alert/Alert;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    .end local v1    # "type":I
    :goto_1
    return v2

    .line 163
    .restart local v1    # "type":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "type":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public varargs hasOneAlert([I)Z
    .locals 6
    .param p1, "types"    # [I

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->mCurrentAlerts:Landroid/util/SparseArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 150
    .local v0, "permanentAlert":Lcom/parrot/freeflight/piloting/alert/Alert;
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, p1, v3

    .line 151
    .local v1, "type":I
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasAlert(ILcom/parrot/freeflight/piloting/alert/Alert;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    const/4 v2, 0x1

    .line 155
    .end local v1    # "type":I
    :cond_0
    return v2

    .line 150
    .restart local v1    # "type":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public removeFpvAlert(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeFpvAlertMsg(I)Z

    move-result v0

    return v0
.end method

.method public removeMotorAlert()Z
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeAlertMsg(I)Z

    move-result v0

    return v0
.end method

.method public removePermanentAlert()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeAlertMsg(I)Z

    move-result v0

    return v0
.end method

.method public removeSensorAlert(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeAlertMsg(I)Z

    move-result v0

    return v0
.end method

.method public removeVideoUpdateAlert()Z
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeAlertMsg(I)Z

    move-result v0

    return v0
.end method
