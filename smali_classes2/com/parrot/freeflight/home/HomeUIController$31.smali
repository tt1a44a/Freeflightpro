.class Lcom/parrot/freeflight/home/HomeUIController$31;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5800(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1898
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5900(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1899
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1900
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5102(Lcom/parrot/freeflight/home/HomeUIController;I)I

    .line 1903
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$31;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$6000(Lcom/parrot/freeflight/home/HomeUIController;I)V

    .line 1908
    :cond_0
    return-void
.end method
