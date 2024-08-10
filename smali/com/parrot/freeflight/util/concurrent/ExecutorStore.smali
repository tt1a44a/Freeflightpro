.class public Lcom/parrot/freeflight/util/concurrent/ExecutorStore;
.super Ljava/lang/Object;
.source "ExecutorStore.java"


# static fields
.field private static final mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sAcademyExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sDefaultExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sFlightDirectorExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sFlightPlanExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sFollowMeExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sMacgyverExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sMediaExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sOperatorExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sAcademyExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMediaExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFollowMeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFlightPlanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFlightDirectorExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMacgyverExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcademyExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sAcademyExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getDefaultExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getEmbeddedFirmwareCopyExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getEphemerisExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFlightDirectorExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFlightDirectorExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFlightPlanExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFlightPlanExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFollowMeExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sFollowMeExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFtpOperationExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getMacgyverExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMacgyverExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getMediaExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMediaExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getOperatorExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getWifiListSortExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
