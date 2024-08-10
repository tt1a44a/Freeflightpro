.class Lcom/parrot/freeflight/core/connection/ConnectionManager$7;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$7;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiReconnected(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$7;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$502(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1251
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$7;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$600(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Z

    .line 1252
    return-void
.end method
