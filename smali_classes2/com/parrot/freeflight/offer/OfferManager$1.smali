.class Lcom/parrot/freeflight/offer/OfferManager$1;
.super Ljava/lang/Object;
.source "OfferManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/offer/OfferManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/offer/OfferManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/offer/OfferManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferManager$1;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 6
    .param p1, "newState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteCtrlDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    if-eqz p2, :cond_0

    .line 77
    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "productID":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager$1;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-static {v2}, Lcom/parrot/freeflight/offer/OfferManager;->access$000(Lcom/parrot/freeflight/offer/OfferManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "product_ids"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "productIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager$1;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-static {v2}, Lcom/parrot/freeflight/offer/OfferManager;->access$000(Lcom/parrot/freeflight/offer/OfferManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "product_ids"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .end local v0    # "productID":Ljava/lang/String;
    .end local v1    # "productIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
