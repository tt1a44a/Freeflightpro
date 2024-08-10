.class public Lcom/parrot/freeflight/core/academy/RunCollection;
.super Ljava/lang/Object;
.source "RunCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;,
        Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;
    }
.end annotation


# static fields
.field private static final DUMMY_USER:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "RunCollection"


# instance fields
.field private final mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInited:Z

.field private final mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunSummaryComparator:Ljava/util/Comparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunsMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/RunInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$1;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunSummaryComparator:Ljava/util/Comparator;

    .line 86
    const-string v0, "RunCollection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$2;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 97
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$3;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 104
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$4;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 111
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$5;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 118
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$6;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 125
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$7;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 133
    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/RunCollection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    return-object v0
.end method

.method private addRunSummary(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V
    .locals 4
    .param p1, "runSummary"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 373
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->refreshWithAcademyRun(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Z

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V

    .line 377
    .restart local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 378
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 381
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDetectAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0
.end method

.method private isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "runUserName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 204
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->updateNeedToLocallyRemove(Z)V

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 206
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->updateNeedToDelete(Z)V

    .line 209
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 216
    return-void
.end method


# virtual methods
.method public addRunDetail(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "runDetail"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 231
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->setRunDetails(Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V

    .line 240
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    .line 241
    return-void

    .line 233
    :cond_1
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-direct {v0, p1, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;)V

    .line 235
    .restart local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 236
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 408
    return-void
.end method

.method public getAllRun()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/parrot/freeflight/core/academy/RunInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getLocallyRemoveRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    return-object v0
.end method

.method public getRunSummaryList()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    .local v0, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToLocallyRemove()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToDelete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunSummaryComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    :cond_2
    return-object v1
.end method

.method public getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    return v0
.end method

.method public loadLocalData()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 315
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load local data for  user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 318
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 319
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 320
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 321
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 322
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 323
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 326
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "summaryFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 328
    .local v0, "listFiles":[Ljava/io/File;
    if-eqz v0, :cond_7

    array-length v4, v0

    if-lez v4, :cond_7

    .line 329
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_8

    aget-object v2, v0, v4

    .line 330
    .local v2, "summaryFile":Ljava/io/File;
    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->create(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v1

    .line 331
    .local v1, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v1, :cond_6

    .line 332
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToLocallyRemove()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 336
    :cond_0
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToDelete()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 345
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDetectAddress()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 348
    :cond_2
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needUpdateGrade()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 349
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 329
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDownload()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 341
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_1

    .line 342
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needUpload()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_1

    .line 352
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 356
    .end local v1    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v2    # "summaryFile":Ljava/io/File;
    :cond_7
    const-string v4, "RunCollection"

    const-string v5, "No local summary runs found ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_8
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " local runs found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToDownload count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToUpload count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToDelete count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToLocallyRemove count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToDetectAddress count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToUpdateGrade count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 368
    return-void
.end method

.method public mergeServerRunList(Ljava/util/Date;Ljava/util/List;)V
    .locals 10
    .param p1, "requestDate"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "serverRuns":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v3, "localUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 254
    new-instance v1, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v1, "deleteCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v2, "downloadCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 258
    .local v0, "academyRun":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->setUser(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "uuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 261
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->addRunSummary(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V

    .line 262
    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v5

    .line 268
    .local v5, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->refreshWithAcademyRun(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Z

    .line 270
    .end local v5    # "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    .end local v0    # "academyRun":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 274
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 275
    .restart local v6    # "uuid":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v4

    .line 276
    .local v4, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 278
    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getLastModifyDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v8

    if-lez v8, :cond_4

    .line 279
    :cond_5
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_2

    .line 284
    .end local v4    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 285
    .restart local v6    # "uuid":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v4

    .line 286
    .restart local v4    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v4, :cond_7

    .line 287
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 289
    :cond_7
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    goto :goto_3

    .line 292
    .end local v4    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_8
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 293
    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 296
    :cond_9
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "synchronizeWithServer finish, server count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", local count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDownload count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToUpload count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToLocallyRemove count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDelete count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDetectAddress count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToUpdateGrade count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDeleteFailed(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 156
    instance-of v1, p2, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 157
    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    .line 158
    .local v0, "academyError":Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->getError()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_BAD_REQUEST:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne v1, v2, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->updateNeedToDelete(Z)V

    .line 165
    .end local v0    # "academyError":Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
    :cond_0
    return-void
.end method

.method public onDeleteSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->updateNeedToDelete(Z)V

    .line 152
    return-void
.end method

.method public onLocallyRemoveSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public removeAllRun()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getAllRun()Ljava/util/Collection;

    move-result-object v1

    .line 186
    .local v1, "runInformationCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .line 187
    .local v0, "runInfo":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0

    .line 189
    .end local v0    # "runInfo":Lcom/parrot/freeflight/core/academy/RunInformation;
    :cond_0
    return-void
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 180
    .local v0, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 181
    :cond_0
    return-void
.end method

.method public removeRunBeforeDate(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getAllRun()Ljava/util/Collection;

    move-result-object v1

    .line 195
    .local v1, "runInformationCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .line 196
    .local v0, "runInfo":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->parseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0

    .line 201
    .end local v0    # "runInfo":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v1    # "runInformationCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    :cond_1
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 142
    return-void
.end method

.method public updateGrade(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mLocallyRemoveHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 222
    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 225
    :cond_0
    return-void
.end method
