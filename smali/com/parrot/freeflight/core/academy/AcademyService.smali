.class public Lcom/parrot/freeflight/core/academy/AcademyService;
.super Ljava/lang/Object;
.source "AcademyService.java"


# instance fields
.field private lastCallId:I

.field private mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPendingCalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lretrofit2/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->lastCallId:I

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->setCacheDir(Ljava/io/File;)V

    .line 104
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getAcademyAPI()Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyService;
    .param p1, "x1"    # Lretrofit2/Call;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->removePendingCall(Lretrofit2/Call;)I

    move-result v0

    return v0
.end method

.method private addPendingCall(Lretrofit2/Call;)I
    .locals 4
    .param p1, "pendingCall"    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->lastCallId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->lastCallId:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->lastCallId:I

    monitor-exit v1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removePendingCall(Lretrofit2/Call;)I
    .locals 3
    .param p1, "pendingCall"    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, "requestId":I
    if-ltz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    :cond_0
    monitor-exit v2

    return v0

    .line 76
    .end local v0    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public asyncAuthAddDrone(Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthAddDroneListener;)I
    .locals 2
    .param p1, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthAddDroneListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 400
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->addDrone(Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)Lretrofit2/Call;

    move-result-object v0

    .line 402
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$8;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthAddDroneListener;Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 423
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 425
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthDeleteProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteProfileListener;)I
    .locals 2
    .param p1, "modelToDelete"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteProfileListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->deleteProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lretrofit2/Call;

    move-result-object v0

    .line 239
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$4;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$4;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteProfileListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 262
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthDeleteRun(ILcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteRunListener;)I
    .locals 2
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteRunListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 651
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->deleteRun(I)Lretrofit2/Call;

    move-result-object v0

    .line 653
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$14;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$14;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteRunListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 674
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 676
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthGetPilot(ILcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotListener;)I
    .locals 2
    .param p1, "pilotID"    # I
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 278
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getPilot(I)Lretrofit2/Call;

    move-result-object v0

    .line 281
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$5;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$5;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 304
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthGetPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotByUsernameListener;)I
    .locals 2
    .param p1, "pilotUsername"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotByUsernameListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 316
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getPilotByUsername(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 319
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$6;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$6;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotByUsernameListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 340
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 342
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthGetProfile(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;)I
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getProfile()Lretrofit2/Call;

    move-result-object v0

    .line 161
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$2;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 184
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthGetRunJsonDetails(ILcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;)I
    .locals 2
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 524
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getRunDetails(I)Lretrofit2/Call;

    move-result-object v0

    .line 527
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$11;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$11;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 555
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 557
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthGetRuns(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;)I
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 572
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getRuns()Lretrofit2/Call;

    move-result-object v0

    .line 574
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$12;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$12;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 597
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 599
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthPostRunToEmail(ILcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunToEmailListener;)I
    .locals 2
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunToEmailListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 613
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1, p2}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->runToEmail(ILcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Lretrofit2/Call;

    move-result-object v0

    .line 615
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$13;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyService$13;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunToEmailListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 636
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 638
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthPostRunVideo(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunVideoListener;)I
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 736
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1, p2}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->postRunVideo(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;)Lretrofit2/Call;

    move-result-object v0

    .line 738
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$16;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyService$16;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunVideoListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 759
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 761
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthPostRunsGradeVisible(ILcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;)I
    .locals 2
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 693
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1, p2}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->runsGradeVisible(ILcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)Lretrofit2/Call;

    move-result-object v0

    .line 695
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$15;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyService$15;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 716
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 718
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthSetProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;)I
    .locals 2
    .param p1, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->updateProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lretrofit2/Call;

    move-result-object v0

    .line 201
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$3;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyService$3;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 222
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 224
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncAuthUpdateAvatar(Ljava/io/File;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateAvatarListener;)I
    .locals 5
    .param p1, "avatar"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateAvatarListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "avatar"

    const-string v3, "avatar.png"

    const-string v4, "image/*"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, p1}, Lokhttp3/MultipartBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    .line 360
    .local v0, "filePart":Lokhttp3/MultipartBody$Part;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->updateAvatar(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object v1

    .line 361
    .local v1, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyService$7;

    invoke-direct {v2, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyService$7;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateAvatarListener;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 382
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v2

    .line 384
    .end local v0    # "filePart":Lokhttp3/MultipartBody$Part;
    .end local v1    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public asyncAuthUpdateEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateEmailListener;)I
    .locals 2
    .param p1, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateEmailListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 482
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->updateEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;)Lretrofit2/Call;

    move-result-object v0

    .line 485
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$10;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateEmailListener;Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 508
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncGetAllCountry(Lcom/parrot/freeflight/core/academy/listener/ARAcademyGetAllCountryListener;)I
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyGetAllCountryListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getAllCountry()Lretrofit2/Call;

    move-result-object v0

    .line 121
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;>;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$1;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyGetAllCountryListener;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 144
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;>;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public asyncPostResetPassword(Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;Lcom/parrot/freeflight/core/academy/listener/ARAcademyPostResetPasswordListener;)I
    .locals 2
    .param p1, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/listener/ARAcademyPostResetPasswordListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 441
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->resetPassword(Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;)Lretrofit2/Call;

    move-result-object v0

    .line 443
    .local v0, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyService$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/parrot/freeflight/core/academy/AcademyService$9;-><init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyPostResetPasswordListener;Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 464
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->addPendingCall(Lretrofit2/Call;)I

    move-result v1

    .line 466
    .end local v0    # "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public cancelAllRequests()V
    .locals 4

    .prologue
    .line 80
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    monitor-enter v3

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 83
    .local v1, "key":I
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelRequest(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "key":I
    :cond_0
    monitor-exit v3

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cancelRequest(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 89
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Call;

    .line 91
    .local v0, "call":Lretrofit2/Call;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    monitor-exit v2

    .line 96
    return-void

    .line 95
    .end local v0    # "call":Lretrofit2/Call;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
