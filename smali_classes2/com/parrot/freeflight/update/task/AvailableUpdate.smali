.class public Lcom/parrot/freeflight/update/task/AvailableUpdate;
.super Ljava/lang/Object;
.source "AvailableUpdate.java"


# instance fields
.field public downloaded:Z

.field public originalVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final productFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final trampolineUpdate:Z

.field public final version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZZ)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "downloaded"    # Z
    .param p4, "trampolineUpdate"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 26
    invoke-static {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->productFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    .line 27
    iput-boolean p3, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    .line 28
    iput-boolean p4, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    .line 29
    return-void
.end method
